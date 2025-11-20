<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RAG | ERNI-KI</title>
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
                <a href="../index.aspx" class="nav-item">🏠 Главная</a>
                <a href="basics.aspx" class="nav-item">🚀 Основы</a>
                <a href="rag.aspx" class="nav-item active">📚 Работа с данными</a>
                <a href="advanced.aspx" class="nav-item">⚡️ Продвинутый уровень</a>
                <a href="../guides/tools.aspx" class="nav-item">🛠 Инструменты</a>
                <a href="../best-practices.aspx" class="nav-item">🎓 Академия Промптинга</a>
                <a href="../prompts.aspx" class="nav-item">📂 Библиотека Промптов</a>
                <a href="../faq.aspx" class="nav-item">❓ FAQ</a>
            </nav>
        </aside>

        <main class="content">
            <header class="page-header">
                <h1>Работа с данными (RAG)</h1>
                <p class="lead">Одна из самых мощных функций OpenWebUI — возможность работать с вашими собственными документами и искать информацию в интернете.</p>
            </header>

            <section id="case-study">
                <h2>1. Кейс: "Передача проекта"</h2>
                <p>Представьте: коллега уволился и оставил папку с 50 документами. Вам нужно срочно узнать статус проекта. Читать всё — неделя. С ERNI-KI — 10 минут.</p>
                
                <div class="step-card" style="background: #f0fdf4; padding: 1.5rem; border-radius: 8px; border-left: 4px solid #22c55e; margin-bottom: 1rem;">
                    <h3>Шаг 1: Загрузка архива</h3>
                    <p>Нажмите на скрепку 📎 и выберите все PDF/Word файлы сразу (или ZIP архив). Система "проглотит" их за пару минут.</p>
                </div>

                <div class="step-card" style="background: #f0fdf4; padding: 1.5rem; border-radius: 8px; border-left: 4px solid #22c55e; margin-bottom: 1rem;">
                    <h3>Шаг 2: "Умный" вопрос</h3>
                    <p>Не спрашивайте просто "О чем это?". Спросите конкретно:</p>
                    <p><em>"На основе загруженных документов, составь таблицу со статусами всех задач, дедлайнами и ответственными лицами. Выдели красным просроченные задачи."</em></p>
                </div>

                <div class="step-card" style="background: #f0fdf4; padding: 1.5rem; border-radius: 8px; border-left: 4px solid #22c55e; margin-bottom: 1rem;">
                    <h3>Шаг 3: Проверка фактов</h3>
                    <p>AI даст ответ и укажет сноски [1], [2]. Нажмите на них, чтобы увидеть оригинальный текст документа и убедиться, что AI не выдумал дедлайн.</p>
                </div>
            </section>

            <section id="troubleshooting">
                <h2>2. Почему AI не находит ответ? (Troubleshooting)</h2>
                <p>Иногда вы загрузили документ, а AI говорит "Я не знаю". Почему?</p>
                <div class="grid" style="grid-template-columns: 1fr 1fr; gap: 1rem;">
                    <div class="card" style="padding: 1rem; border-left: 4px solid #ef4444;">
                        <h4>❌ Плохой скан</h4>
                        <p>Если PDF — это просто картинка низкого качества, AI может не прочитать текст. <strong>Решение:</strong> Используйте текстовые PDF или качественные фото.</p>
                    </div>
                    <div class="card" style="padding: 1rem; border-left: 4px solid #ef4444;">
                        <h4>❌ Слишком много "шума"</h4>
                        <p>Если вы загрузили 100 файлов про "Кулинарию" и спросили про "Бюджет", AI может запутаться. <strong>Решение:</strong> Создавайте тематические коллекции.</p>
                    </div>
                </div>
            </section>

            <section id="collections">
                <h2>3. Коллекции документов</h2>
                <p>Чтобы не загружать файлы каждый раз, создайте "Базу знаний".</p>
                <img src="../images/rag.png" alt="Управление документами" style="width: 100%; border-radius: 8px; margin: 1rem 0; border: 1px solid #e5e7eb;">
                <p>Перейдите в <strong>"Документы"</strong> -> <strong>"Мои коллекции"</strong>. Создайте коллекцию "Проект X" и добавьте туда файлы. В чате просто наберите <strong>#</strong> и выберите "Проект X".</p>
            </section>

            <section id="web-search">
                <h2>4. Поиск в интернете (SearXNG)</h2>
                <p>Наш AI использует безопасный мета-поисковик SearXNG, который агрегирует результаты из Google, Bing, Brave и Wikipedia.</p>
                <p>Нажмите на иконку <strong>🌐 Глобус</strong> ("Web Search") под полем ввода. AI найдет актуальную информацию, проанализирует несколько источников и даст сводный ответ со ссылками.</p>
            </section>

            <section id="technical-deep-dive">
                <div class="card">
                    <h2>🛠 Технические детали (Official Docs)</h2>
                    <p>OpenWebUI поддерживает множество движков для обработки документов и поиска. Вы можете настроить их в <strong>Settings > Documents</strong>.</p>
                    
                    <h3>Движки извлечения контента (OCR & Parsing)</h3>
                    <ul style="list-style-type: disc; margin-left: 20px; margin-bottom: 1rem;">
                        <li><strong>Default</strong>: Базовый парсер текста.</li>
                        <li><strong>Tika</strong>: Apache Tika для поддержки сотен форматов.</li>
                        <li><strong>Docling</strong>: Продвинутый парсер с поддержкой OCR, таблиц и описания изображений.</li>
                        <li><strong>Datalab Marker</strong>: API для конвертации PDF в Markdown.</li>
                        <li><strong>Mistral OCR</strong>: Использование OCR от Mistral AI.</li>
                        <li><strong>MinerU</strong>: Мощный инструмент для извлечения контента (PDF/Web).</li>
                    </ul>

                    <h3>Поисковые провайдеры</h3>
                    <p>Для поиска в интернете (Web Search) поддерживаются:</p>
                    <div class="tags">
                        <span class="tag">Google PSE</span>
                        <span class="tag">Bing</span>
                        <span class="tag">Brave</span>
                        <span class="tag">DuckDuckGo</span>
                        <span class="tag">SearXNG</span>
                        <span class="tag">Perplexity</span>
                        <span class="tag">SerpApi</span>
                    </div>

                    <div class="tip-box">
                        <strong>💡 Pro Tip:</strong> Используйте символ <code>#</code> в чате, чтобы быстро выбрать коллекцию документов или конкретный файл для контекста.
                    </div>
                </div>
            </section>
        </main>
    </div>
    <footer>
        <div class="container">
            <p>&copy; 2025 Корпоративный AI Портал. Разработано командой DIZ.</p>
        </div>
    </footer>
</body>
</html>
