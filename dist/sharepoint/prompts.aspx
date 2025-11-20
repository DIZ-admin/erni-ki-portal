<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Библиотека Промптов | ERNI-KI</title>
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
    <style>
        .prompt-card {
            background: #fff;
            border: 1px solid #e2e8f0;
            border-radius: 8px;
            padding: 1.5rem;
            margin-bottom: 1rem;
            transition: transform 0.2s;
        }
        .prompt-card:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
        }
        .prompt-role {
            display: inline-block;
            padding: 0.25rem 0.75rem;
            border-radius: 9999px;
            font-size: 0.75rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }
        .role-hr { background: #fce7f3; color: #be185d; }
        .role-it { background: #e0f2fe; color: #0369a1; }
        .role-sales { background: #dcfce7; color: #15803d; }
        .role-mgmt { background: #f3e8ff; color: #7e22ce; }
        
        .prompt-text {
            background: #f8fafc;
            padding: 1rem;
            border-radius: 6px;
            font-family: monospace;
            font-size: 0.9rem;
            color: #334155;
            margin: 1rem 0;
            border: 1px dashed #cbd5e1;
        }
    </style>
</head>
<body>
    <div class="layout">
        <aside class="sidebar">
            <div class="logo">
                <div class="logo-icon"></div>
                <span class="logo-text">ERNI Gruppe</span>
            </div>
            <nav>
                <a href="index.aspx" class="nav-item">🏠 Главная</a>
                <a href="guides/basics.aspx" class="nav-item">🚀 Основы</a>
                <a href="guides/rag.aspx" class="nav-item">📚 Работа с данными</a>
                <a href="guides/advanced.aspx" class="nav-item">⚡️ Продвинутый уровень</a>
                <a href="../guides/tools.aspx" class="nav-item">🛠 Инструменты</a>
                <a href="best-practices.aspx" class="nav-item">🎓 Академия Промптинга</a>
                <a href="prompts.aspx" class="nav-item active">📂 Библиотека Промптов</a>
                <a href="faq.aspx" class="nav-item">❓ FAQ</a>
            </nav>
        </aside>

        <main class="content">
            <header class="page-header">
                <h1>Корпоративная Библиотека Промптов</h1>
                <p class="lead">Готовые шаблоны для решения рабочих задач. Просто скопируйте и вставьте.</p>
            </header>

            <section id="slash-commands" style="margin-bottom: 2rem;">
                <div class="card">
                    <h2>⚡️ Быстрый доступ через "/" команды</h2>
                    <p>В ERNI-KI вы можете использовать все промпты через символ <code>/</code> прямо в чате. Это значительно ускоряет работу!</p>
                    
                    <h3>Как использовать:</h3>
                    <ol style="margin-left: 20px; margin-bottom: 1rem;">
                        <li>Начните вводить <code>/</code> в поле чата</li>
                        <li>Появится список доступных промптов (например: <code>/prompt-enhancer</code>, <code>/ceo</code>)</li>
                        <li>Выберите нужный промпт из списка или продолжайте вводить название</li>
                        <li>Промпт автоматически вставится в ваше сообщение</li>
                    </ol>
                    
                    <div class="tip-box">
                        <strong>💡 Примеры доступных команд:</strong>
                        <ul style="margin-left: 20px; margin-top: 0.5rem;">
                            <li><code>/prompt-enhancer</code> - Улучшение ваших промптов</li>
                            <li><code>/ceo</code> - Анализ с точки зрения CEO</li>
                            <li><code>/translator</code> - Профессиональный перевод</li>
                            <li><code>/code-review</code> - Ревью кода</li>
                        </ul>
                    </div>
                    
                    <p><strong>Создание своих промптов:</strong> Вы можете создать кастомные промпты в разделе <strong>Рабочее пространство > Промпты</strong> и они тоже станут доступны через <code>/</code>.</p>
                </div>
            </section>

            <div class="grid" style="grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 1.5rem;">
                
                <!-- HR Section -->
                <div class="prompt-card">
                    <span class="prompt-role role-hr">HR & Recruiting</span>
                    <h3>Описание вакансии</h3>
                    <p>Создает привлекательное описание вакансии на основе требований.</p>
                    <div class="prompt-text">
                        Действуй как HR-директор IT-компании. Напиши описание вакансии [Название должности].<br>
                        Требования: [Список требований].<br>
                        Условия: [Зарплата, офис/удаленка].<br>
                        Тон: Дружелюбный, но профессиональный. Сделай акцент на инновациях.
                    </div>
                </div>

                <div class="prompt-card">
                    <span class="prompt-role role-hr">HR & Recruiting</span>
                    <h3>Onboarding план</h3>
                    <p>План первой недели для нового сотрудника.</p>
                    <div class="prompt-text">
                        Составь план адаптации (Onboarding) на первую неделю для [Должность].<br>
                        Цель: Познакомить с командой, настроить софт, изучить продукт.<br>
                        Разбей по дням с конкретными задачами.
                    </div>
                </div>

                <!-- IT Section -->
                <div class="prompt-card">
                    <span class="prompt-role role-it">IT & Dev</span>
                    <h3>Объясни код</h3>
                    <p>Помогает понять, что делает сложный кусок кода.</p>
                    <div class="prompt-text">
                        Ты — Senior Developer. Объясни, что делает этот код простыми словами:<br>
                        [Вставьте код]<br>
                        Найди потенциальные ошибки и предложи оптимизацию.
                    </div>
                </div>

                <div class="prompt-card">
                    <span class="prompt-role role-it">IT & Dev</span>
                    <h3>Генерация SQL</h3>
                    <p>Пишет SQL-запросы на естественном языке.</p>
                    <div class="prompt-text">
                        У меня есть таблицы: Users (id, name, email) и Orders (id, user_id, amount, date).<br>
                        Напиши SQL-запрос (PostgreSQL), который найдет топ-5 пользователей по сумме заказов за последний месяц.
                    </div>
                </div>

                <!-- Management Section -->
                <div class="prompt-card">
                    <span class="prompt-role role-mgmt">Management</span>
                    <h3>Саммари встречи</h3>
                    <p>Превращает стенограмму в список задач.</p>
                    <div class="prompt-text">
                        Проанализируй стенограмму встречи:<br>
                        [Текст стенограммы]<br>
                        1. Краткое резюме (3 буллита).<br>
                        2. Список принятых решений.<br>
                        3. Таблица Action Items (Кто, Что, Когда).
                    </div>
                </div>

                <!-- Sales Section -->
                <div class="prompt-card">
                    <span class="prompt-role role-sales">Sales & Marketing</span>
                    <h3>Работа с возражениями</h3>
                    <p>Помогает отвечать трудным клиентам.</p>
                    <div class="prompt-text">
                        Клиент говорит: "[Возражение клиента, например: Это слишком дорого]".<br>
                        Напиши 3 варианта ответа, используя технику "Присоединение -> Аргумент -> Вопрос".<br>
                        Цель: Назначить демо-встречу.
                    </div>
                </div>

            </div>
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
