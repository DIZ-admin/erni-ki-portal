import os
import re
import shutil

# Configuration
SOURCE_DIR = '.'
DIST_DIR = 'dist/sharepoint'
STYLES_FILE = 'styles.css'
SCRIPTS_FILE = 'portal/scripts.js' # Note: scripts.js is in portal/ based on previous file list, let's check. 
# Actually, based on file list:
# portal/styles.css
# portal/scripts.js
# portal/index.html
# portal/guides/...
# Wait, the user's workspace is `/Users/kostas/Documents/KI lernen`.
# The files are in `portal/`.
# Let's assume we run this from `/Users/kostas/Documents/KI lernen`.

BASE_DIR = os.path.join(os.getcwd(), 'portal')
DIST_DIR = os.path.join(os.getcwd(), 'dist', 'sharepoint')

def read_file(path):
    with open(path, 'r', encoding='utf-8') as f:
        return f.read()

def write_file(path, content):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w', encoding='utf-8') as f:
        f.write(content)

def inline_resources(html_content, base_path):
    # Inline CSS
    def replace_css(match):
        href = match.group(1)
        css_path = os.path.normpath(os.path.join(base_path, href))
        if os.path.exists(css_path):
            print(f"  Inlining CSS: {href}")
            css_content = read_file(css_path)
            return f'<style>\n{css_content}\n</style>'
        return match.group(0)

    html_content = re.sub(r'<link rel="stylesheet" href="([^"]+)">', replace_css, html_content)

    # Inline JS
    def replace_js(match):
        src = match.group(1)
        js_path = os.path.normpath(os.path.join(base_path, src))
        if os.path.exists(js_path):
            print(f"  Inlining JS: {src}")
            js_content = read_file(js_path)
            return f'<script>\n{js_content}\n</script>'
        return match.group(0)

    html_content = re.sub(r'<script src="([^"]+)"></script>', replace_js, html_content)
    return html_content

def convert_links(html_content):
    # Replace .html links with .aspx
    return re.sub(r'href="([^"]+)\.html"', r'href="\1.aspx"', html_content)

def process_directory(current_dir):
    for item in os.listdir(current_dir):
        src_path = os.path.join(current_dir, item)
        
        # Skip dist folder and hidden files
        if 'dist' in src_path or item.startswith('.'):
            continue

        if os.path.isdir(src_path):
            process_directory(src_path)
        elif item.endswith('.html'):
            print(f"Processing {src_path}...")
            
            # Calculate relative path for output
            rel_path = os.path.relpath(src_path, BASE_DIR)
            dest_path = os.path.join(DIST_DIR, rel_path.replace('.html', '.aspx'))
            
            content = read_file(src_path)
            
            # 1. Inline CSS/JS (resolve paths relative to the HTML file)
            content = inline_resources(content, os.path.dirname(src_path))
            
            # 2. Convert links to .aspx
            content = convert_links(content)
            
            # 3. Add SharePoint specific meta tag (optional but good)
            # Forces IE Edge mode if SharePoint renders in compatibility mode
            if '<head>' in content:
                content = content.replace('<head>', '<head>\n    <meta http-equiv="X-UA-Compatible" content="IE=edge">')

            write_file(dest_path, content)
        elif item.endswith(('.png', '.jpg', '.jpeg', '.gif', '.svg')):
            # Copy images as is
            rel_path = os.path.relpath(src_path, BASE_DIR)
            dest_path = os.path.join(DIST_DIR, rel_path)
            os.makedirs(os.path.dirname(dest_path), exist_ok=True)
            shutil.copy2(src_path, dest_path)

def main():
    if os.path.exists(DIST_DIR):
        shutil.rmtree(DIST_DIR)
    
    print(f"Building SharePoint version from {BASE_DIR} to {DIST_DIR}")
    process_directory(BASE_DIR)
    print("Build complete!")

if __name__ == '__main__':
    main()
