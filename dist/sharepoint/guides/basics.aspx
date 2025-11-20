<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Основы | ERNI-KI</title>
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
                <a href="basics.aspx" class="nav-item active">🚀 Основы</a>
                <a href="rag.aspx" class="nav-item">📚 Работа с данными</a>
                <a href="advanced.aspx" class="nav-item">⚡️ Продвинутый уровень</a>
                <a href="../guides/tools.aspx" class="nav-item">🛠 Инструменты</a>
                <a href="../best-practices.aspx" class="nav-item">🎓 Академия Промптинга</a>
                <a href="../prompts.aspx" class="nav-item">📂 Библиотека Промптов</a>
                <a href="../faq.aspx" class="nav-item">❓ FAQ</a>
            </nav>
        </aside>

        <main class="content">
            <header class="page-header">
                <h1>Основы работы с OpenWebUI</h1>
                <p class="lead">Добро пожаловать! Это руководство поможет вам сделать первые шаги в использовании нашего корпоративного AI-ассистента.</p>
            </header>

            <section id="quickstart">
                <h2>1. Быстрый старт: Ваши первые 5 минут</h2>
                <p>Давайте не будем читать теорию, а сразу попробуем. Следуйте этим шагам:</p>
                <div class="step-card" style="background: #f8fafc; padding: 1.5rem; border-radius: 8px; border-left: 4px solid var(--primary-color); margin-bottom: 1rem;">
                    <h3>Шаг 1: Вход</h3>
                    <p>Перейдите на <a href="https://ki.erni-gruppe.ch" target="_blank">ki.erni-gruppe.ch</a> и войдите через корпоративную почту.</p>
                </div>
                <div class="step-card" style="background: #f8fafc; padding: 1.5rem; border-radius: 8px; border-left: 4px solid var(--primary-color); margin-bottom: 1rem;">
                    <h3>Шаг 2: Выбор "Коллеги"</h3>
                    <p>Сверху выберите модель <strong>Llama 3.1 (8B)</strong>. Представьте, что это новый стажер, который прочитал весь интернет, но не знает специфики вашей задачи.</p>
                </div>
                <div class="step-card" style="background: #f8fafc; padding: 1.5rem; border-radius: 8px; border-left: 4px solid var(--primary-color); margin-bottom: 1rem;">
                    <h3>Шаг 3: Первый запрос</h3>
                    <p>Напишите в чат: <em>"Привет! Я менеджер проекта. Составь план встречи для обсуждения рисков нового релиза. У нас есть 30 минут."</em></p>
                </div>
            </section>

            <section id="anatomy">
                <h2>2. Анатомия идеального диалога</h2>
                <p>Посмотрите на скриншот интерфейса. Вот что важно знать:</p>
                <img src="../images/interface.png" alt="Интерфейс ERNI-KI" style="width: 100%; border-radius: 8px; margin: 1rem 0; border: 1px solid #e5e7eb;">
                <div class="grid" style="grid-template-columns: 1fr 1fr; gap: 1rem;">
                    <div>
                        <h4>🎯 Контекст (Левая панель)</h4>
                        <p>AI помнит только то, что в текущем чате. Хотите сменить тему? Создайте <strong>Новый чат</strong> (+), чтобы не путать модель.</p>
                    </div>
                    <div>
                        <h4>⚙️ Настройки (Верхняя панель)</h4>
                        <p>Здесь живут модели. <strong>Llama 3.2 (3B)</strong> — быстрая как молния, для простых писем. <strong>Llama 3.1 (8B)</strong> — умная, для отчетов и кода.</p>
                    </div>
                </div>
            </section>

            <section id="models">
                <h2>3. Какую модель выбрать?</h2>
                <p>В ERNI-KI мы используем локальные модели, работающие на наших GPU. Это безопасно и бесплатно.</p>
                <img src="../images/models.png" alt="Выбор модели" style="width: 100%; border-radius: 8px; margin: 1rem 0; border: 1px solid #e5e7eb;">
                <table style="width: 100%; border-collapse: collapse; margin-top: 1rem;">
                    <thead>
                        <tr style="background: #f1f5f9; text-align: left;">
                            <th style="padding: 0.75rem;">Модель</th>
                            <th style="padding: 0.75rem;">Для чего лучше всего?</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="border-bottom: 1px solid #e2e8f0;">
                            <td style="padding: 0.75rem;"><strong>🧠 Llama 3.1 (8B)</strong></td>
                            <td style="padding: 0.75rem;">Анализ документов, написание кода, сложные письма, креатив.</td>
                        </tr>
                        <tr>
                            <td style="padding: 0.75rem;"><strong>⚡️ Llama 3.2 (3B)</strong></td>
                            <td style="padding: 0.75rem;">Быстрые ответы, саммари коротких текстов, перевод, чат-болталка.</td>
                        </tr>
                    </tbody>
                </table>
            </section>

            <section id="chat">
                <h2>4. Первый диалог</h2>
                <p>Просто введите свой вопрос в поле внизу экрана и нажмите Enter. Вы можете общаться с AI как с коллегой.</p>
                <p>Пример запроса:</p>
                <pre style="background: #f1f5f9; padding: 1rem; border-radius: 0.5rem;"><code>Напиши план совещания по запуску нового проекта "Эверест" на 30 минут. Участники: маркетинг, разработка, продажи.</code></pre>
            </section>

            <section id="voice-features">
                <div class="card">
                    <h2>🎤 Голосовые функции</h2>
                    
                    <h3>Voice Input (Голосовой ввод)</h3>
                    <p>Вместо набора текста вы можете использовать микрофон для голосового ввода. Система автоматически преобразует вашу речь в текст (Speech-to-Text).</p>
                    <p><strong>Как включить:</strong> Нажмите на иконку микрофона 🎤 справа от поля ввода.</p>
                    
                    <h3>Voice Mode (Голосовой режим)</h3>
                    <p>Полноценный голосовой диалог с AI — вы говорите, AI отвечает голосом. Идеально для громкой связи или когда руки заняты.</p>
                    <p><strong>Как включить:</strong> Нажмите на иконку динамика 🔊 рядом с микрофоном.</p>
                    
                    <div class="tip-box">
                        <strong>💡 Совет:</strong> Голосовой режим особенно полезен для мозговых штурмов, когда нужно быстро проговорить идеи вслух.
                    </div>
                </div>
            </section>

            <section id="temporary-chat">
                <div class="card">
                    <h2>🔒 Temporary Chat (Временный чат)</h2>
                    <p>Временный чат — это режим приватности, в котором вся переписка удаляется сразу после закрытия окна. История не сохраняется.</p>
                    
                    <h3>Когда использовать:</h3>
                    <ul style="list-style-type: disc; margin-left: 20px;">
                        <li>Работа с конфиденциальными данными</li>
                        <li>Тестирование промптов</li>
                        <li>Личные вопросы</li>
                        <li>Эксперименты, которые не нужно сохранять</li>
                    </ul>
                    
                    <p><strong>Как включить:</strong> В верхней панели чата найдите тумблер "Временный чат" и активируйте его перед началом беседы.</p>
                    
                    <div class="alert alert-warning">
                        <strong>⚠️ Важно:</strong> После закрытия временного чата восстановить переписку будет невозможно.
                    </div>
                </div>
            </section>

            <section id="notes">
                <div class="card">
                    <h2>📝 Notes (Заметки)</h2>
                    <p>Заметки — это ваш личный блокнот прямо в интерфейсе ERNI-KI. Удобно для сохранения важных промптов, результатов или идей.</p>
                    
                    <h3>Как использовать:</h3>
                    <ol style="margin-left: 20px;">
                        <li>Нажмите на иконку "Заметки" 📝 в боковой панели</li>
                        <li>Создайте новую заметку</li>
                        <li>Добавьте текст, промпты или ссылки</li>
                        <li>Заметки сохраняются автоматически</li>
                    </ol>
                    
                    <div class="tip-box">
                        <strong>💡 Лайфхак:</strong> Сохраняйте удачные промпты в заметки, чтобы быстро копировать их в будущем.
                    </div>
                </div>
            </section>

            <p>&copy; 2025 Корпоративный AI Портал. Разработано командой DIZ.</p>
            <section id="pro-tips">
                <div class="card">
                    <h2>💡 Pro Tips (Official Docs)</h2>
                    <ul>
                        <li><strong>Быстрый доступ к файлам:</strong> Введите <code>#</code> в чате, чтобы открыть список загруженных документов и добавить их в контекст.</li>
                        <li><strong>Веб-поиск:</strong> Введите URL сайта после <code>#</code> (например, <code>#https://example.com</code>), чтобы AI прочитал его содержимое.</li>
                        <li><strong>Offline Mode:</strong> ERNI-KI работает полностью локально. Если вы видите ошибки загрузки, проверьте переменную <code>HF_HUB_OFFLINE=1</code>.</li>
                    </ul>
                </div>
            </section>
        </main>
    </div>
    <footer>
        <!-- Footer content if any -->
    </footer>

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
