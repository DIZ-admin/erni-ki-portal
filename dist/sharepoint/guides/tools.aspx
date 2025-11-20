<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Инструменты и функции • ERNI Gruppe</title>
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
</head>
<body>
    <div class="layout">
        <nav class="sidebar">
            <a href="../index.aspx" class="logo">
                <div class="logo-icon"></div>
                <span class="logo-text">ERNI Gruppe</span>
            </a>
            <a href="../guides/basics.aspx" class="nav-item">Начало работы</a>
            <a href="../guides/rag.aspx" class="nav-item">RAG & Поиск</a>
            <a href="../guides/advanced.aspx" class="nav-item">Продвинутые функции</a>
                <a href="../guides/tools.aspx" class="nav-item">🛠 Инструменты</a>
            <a href="../guides/tools.aspx" class="nav-item active">Инструменты</a>
            <a href="../best-practices.aspx" class="nav-item">Промпт-инжиниринг</a>
            <a href="../prompts.aspx" class="nav-item">Библиотека промптов</a>
            <a href="../faq.aspx" class="nav-item">FAQ</a>
        </nav>
        <main class="content">
            <div class="page-header">
                <h1>Инструменты и функции</h1>
                <p class="lead">Расширяйте возможности AI через кастомные инструменты и функции</p>
            </div>

            <section id="what-are-tools">
                <div class="card">
                    <h2>🛠 Что такое инструменты?</h2>
                    <p>Инструменты (Tools) — это дополнительные функции, которые AI может вызывать для выполнения специфических задач. Они работают как "плагины", расширяя базовые возможности модели.</p>
                    
                    <h3>Примеры инструментов:</h3>
                    <ul style="list-style-type: disc; margin-left: 20px; margin-bottom: 1rem;">
                        <li><strong>Baubeschreiber</strong>: Автоматическое создание строительных описаний</li>
                        <li><strong>Web Scraper</strong>: Извлечение данных с веб-страниц</li>
                        <li><strong>Calculator</strong>: Точные математические вычисления</li>
                        <li><strong>Database Query</strong>: Запросы к базам данных</li>
                        <li><strong>API Integrations</strong>: Интеграция с внешними сервисами</li>
                    </ul>
                </div>
            </section>

            <section id="how-to-use">
                <div class="card">
                    <h2>📖 Как использовать инструменты</h2>
                    
                    <h3>Шаг 1: Просмотр доступных инструментов</h3>
                    <p>Нажмите <strong>Рабочее пространство > Инструменты</strong> в боковой панели. Вы увидите список всех доступных инструментов.</p>
                    
                    <h3>Шаг 2: Включение инструмента в чате</h3>
                    <p>В интерфейсе чата найдите иконку инструментов (обычно рядом с полем ввода). Выберите нужный инструмент из списка.</p>
                    
                    <h3>Шаг 3: Использование</h3>
                    <p>Просто опишите свою задачу в чате. AI автоматически решит, когда использовать подключенный инструмент.</p>
                    
                    <div class="tip-box">
                        <strong>💡 Пример:</strong> Если вы включили "Baubeschreiber" и напишете "Создай описание для двухэтажного дома с подвалом", AI автоматически вызовет этот инструмент для генерации структурированного документа.
                    </div>
                </div>
            </section>

            <section id="function-calling">
                <div class="card">
                    <h2>🔧 Function Calling (Продвинутое)</h2>
                    <p><strong>Function Calling</strong> — это технология, позволяющая AI-модели автоматически вызывать внешние функции на основе контекста беседы.</p>
                    
                    <h3>Как это работает:</h3>
                    <ol style="margin-left: 20px; margin-bottom: 1rem;">
                        <li>Вы задаете вопрос или даете команду</li>
                        <li>AI анализирует запрос и определяет, нужен ли инструмент</li>
                        <li>AI вызывает функцию с правильными параметрами</li>
                        <li>Функция возвращает результат</li>
                        <li>AI интегрирует результат в свой ответ</li>
                    </ol>

                    <h3>Преимущества:</h3>
                    <ul style="list-style-type: disc; margin-left: 20px;">
                        <li>Точность данных (реальные API вместо "галлюцинаций")</li>
                        <li>Доступ к актуальной информации</li>
                        <li>Автоматизация сложных задач</li>
                        <li>Интеграция с корпоративными системами</li>
                    </ul>
                </div>
            </section>

            <section id="creating-tools">
                <div class="card">
                    <h2>⚙️ Создание собственных инструментов</h2>
                    <p>Если у вас есть права администратора или разработчика, вы можете создавать собственные инструменты.</p>
                    
                    <h3>Требования:</h3>
                    <ul style="list-style-type: disc; margin-left: 20px; margin-bottom: 1rem;">
                        <li>JSON Schema для описания функции</li>
                        <li>Endpoint (URL) для вызова функции</li>
                        <li>Описание параметров и типов данных</li>
                        <li>Документация для AI (как и когда использовать)</li>
                    </ul>

                    <div class="alert alert-warning">
                        <strong>⚠️ Примечание:</strong> Создание инструментов требует технических знаний. Обратитесь к администратору, если хотите добавить новый инструмент в систему.
                    </div>
                </div>
            </section>

            <section id="best-practices-tools">
                <div class="card">
                    <h2>✅ Лучшие практики</h2>
                    <ul style="list-style-type: disc; margin-left: 20px;">
                        <li><strong>Будьте конкретны:</strong> Чем точнее ваш запрос, тем лучше AI выберет нужный инструмент</li>
                        <li><strong>Проверяйте результат:</strong> Инструменты могут давать ошибки (нет API, таймаут и т.д.)</li>
                        <li><strong>Используйте только нужные:</strong> Не включайте все инструменты сразу — это замедляет обработку</li>
                        <li><strong>Изучите документацию:</strong> У каждого инструмента есть своя специфика использования</li>
                    </ul>
                </div>
            </section>
        </main>
    </div>
    <script>
document.addEventListener('DOMContentLoaded', () => {
    // Simple Accordion for FAQ
    const accordions = document.querySelectorAll('.accordion-header');
    accordions.forEach(acc => {
        acc.addEventListener('click', () => {
            acc.classList.toggle('active');
            const panel = acc.nextElementSibling;
            if (panel.style.maxHeight) {
                panel.style.maxHeight = null;
            } else {
                panel.style.maxHeight = panel.scrollHeight + "px";
            }
        });
    });
});

</script>
</body>
</html>
