<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERNI-KI | Корпоративный AI Портал</title>
    <style>
:root {
  /* ERNI Corporate Palette */
  --primary-color: #0000EE; /* ERNI Blue */
  --primary-hover: #0000CC;
  --secondary-color: #333333; /* Dark Grey */
  --accent-color: #0000EE; 
  --background-color: #FFFFFF; /* Pure White */
  --surface-color: #F8F8F8; /* Light Grey Surface */
  --text-main: #000000; /* Pure Black */
  --text-muted: #666666;
  --border-color: #E5E5E5;

  /* Spacing */
  --spacing-xs: 0.5rem;
  --spacing-sm: 1rem;
  --spacing-md: 1.5rem;
  --spacing-lg: 2rem;
  --spacing-xl: 4rem; /* More whitespace */

  /* Typography */
  --font-main: "Helvetica Neue", "Helvetica", "Arial", sans-serif; /* Swiss Style */
  --radius-md: 0; /* Square corners */
  --radius-lg: 0;
  --shadow-sm: none; /* Flat design */
  --shadow-md: 0 4px 20px rgba(0,0,0,0.05); /* Subtle lift */
  --shadow-lg: 0 10px 30px rgba(0,0,0,0.1);
}

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: var(--font-main);
  background-color: var(--background-color);
  color: var(--text-main);
  line-height: 1.5;
  -webkit-font-smoothing: antialiased;
}

/* Sidebar Layout */
.layout {
  display: grid;
  grid-template-columns: 260px 1fr;
  min-height: 100vh;
}

.sidebar {
  background: #FFFFFF; /* Pure white */
  border-right: 2px solid var(--border-color);
  padding: var(--spacing-lg);
  position: sticky;
  top: 0;
  height: 100vh;
  overflow-y: auto;
  display: flex;
  flex-direction: column;
}

.logo {
  font-weight: 700;
  font-size: 1.1rem;
  color: var(--text-main);
  text-decoration: none;
  display: flex;
  align-items: center;
  gap: 0.75rem;
  padding-bottom: var(--spacing-lg);
  border-bottom: 2px solid var(--border-color);
  margin-bottom: var(--spacing-md);
  letter-spacing: 0.02em;
}

.logo-icon {
  width: 8px;
  height: 8px;
  background-color: var(--primary-color);
  border-radius: 0;
  flex-shrink: 0;
}

.logo-text {
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.nav-item {
  display: block;
  padding: 0.75rem 1rem;
  color: var(--text-main);
  text-decoration: none;
  border-radius: 0;
  margin-bottom: 0;
  font-weight: 400;
  transition: background-color 0.15s ease;
  border-left: 3px solid transparent;
}

.nav-item:hover {
  background-color: var(--surface-color);
  border-left-color: var(--primary-color);
}

.nav-item.active {
  background-color: var(--surface-color);
  color: var(--primary-color);
  font-weight: 600;
  border-left-color: var(--primary-color);
}

.content {
  padding: var(--spacing-xl);
  max-width: 1200px;
}

/* Components */
.page-header {
  margin-bottom: var(--spacing-xl);
  border-bottom: 2px solid var(--border-color);
  padding-bottom: var(--spacing-lg);
}

.page-header h1 {
  font-size: 2.5rem;
  margin-bottom: var(--spacing-sm);
  letter-spacing: -0.02em;
  font-weight: 700;
}

.page-header .lead {
  font-size: 1.25rem;
  color: var(--text-muted);
}

.card {
  background: var(--surface-color);
  padding: var(--spacing-lg);
  border-radius: 0;
  box-shadow: none;
  border: 1px solid var(--border-color);
  transition: border-color 0.2s;
}

.card:hover {
  transform: none;
  border-color: var(--primary-color);
}

.grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: var(--spacing-lg);
}

/* Utilities */
img {
  max-width: 100%;
  height: auto;
}

.tip-box {
  background-color: #f0f9ff;
  border-left: 4px solid var(--primary-color);
  padding: var(--spacing-md);
  margin: var(--spacing-md) 0;
  border-radius: 0 var(--radius-md) var(--radius-md) 0;
}

.alert {
  padding: 1rem;
  border-radius: var(--radius-md);
  margin-bottom: 1rem;
}

.alert-warning {
  background-color: #fefce8;
  border: 1px solid #fde047;
  color: #854d0e;
}

/* Responsive */
@media (max-width: 768px) {
  .layout {
    grid-template-columns: 1fr;
  }
  .sidebar {
    height: auto;
    position: relative;
    border-right: none;
    border-bottom: 1px solid var(--border-color);
  }
}

</style>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="layout">
        <aside class="sidebar">
            <div class="logo">
                <div class="logo-icon"></div>
                <span class="logo-text">ERNI Gruppe</span>
            </div>
            <nav>
                <a href="index.aspx" class="nav-item active">🏠 Главная</a>
                <a href="guides/basics.aspx" class="nav-item">🚀 Основы</a>
                <a href="guides/rag.aspx" class="nav-item">📚 Работа с данными</a>
                <a href="guides/advanced.aspx" class="nav-item">⚡️ Продвинутый уровень</a>
                <a href="../guides/tools.aspx" class="nav-item">🛠 Инструменты</a>
                <a href="best-practices.aspx" class="nav-item">🎓 Академия Промптинга</a>
                <a href="prompts.aspx" class="nav-item">📂 Библиотека Промптов</a>
                <a href="faq.aspx" class="nav-item">❓ FAQ</a>
            </nav>
        </aside>

        <main class="content">
            <section class="hero">
                <h1>ERNI Gruppe</h1>
                <p>Ваш корпоративный AI-ассистент на базе Llama 3.2.<br>Безопасно. Локально. Мощно.</p>
                <a href="https://ki.erni-gruppe.ch" target="_blank" class="btn btn-primary">Открыть ERNI-KI ↗</a>
            </section>

            <div class="grid">
                <a href="guides/basics.aspx" class="card">
                    <span class="card-icon">🚀</span>
                    <h3>Быстрый старт</h3>
                    <p>Научитесь основам за 5 минут: вход, выбор модели и первый промпт.</p>
                </a>
                <a href="guides/rag.aspx" class="card">
                    <span class="card-icon">📚</span>
                    <h3>Работа с документами</h3>
                    <p>Как анализировать PDF, Excel и отчеты (до 100MB) с помощью RAG.</p>
                </a>
                <a href="prompts.aspx" class="card">
                    <span class="card-icon">📂</span>
                    <h3>Библиотека Промптов</h3>
                    <p>Готовые шаблоны для HR, IT, Sales и Management. Просто скопируйте.</p>
                </a>
                <a href="guides/advanced.aspx" class="card">
                <a href="../guides/tools.aspx" class="nav-item">🛠 Инструменты</a>
                    <span class="card-icon">⚡️</span>
                    <h3>Продвинутые фишки</h3>
                    <p>Голосовой ввод, инструменты MCP (Time, Memory) и режим "Thinking".</p>
                </a>
                <a href="best-practices.aspx" class="card">
                    <span class="card-icon">🎓</span>
                    <h3>Академия Промптинга</h3>
                    <p>Как писать запросы, чтобы получать идеальные ответы (CO-STAR).</p>
                </a>
                <a href="faq.aspx" class="card">
                    <span class="card-icon">🛡</span>
                    <h3>Безопасность & FAQ</h3>
                    <p>Почему это безопасно? Где хранятся данные? Ответы здесь.</p>
                </a>
            </div>
        </main>
    </div>
</body>
</html>
