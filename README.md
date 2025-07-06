# 💬 Object-Oriented ChatBot – Weekly Practice with Python

Welcome to the **OOP ChatBot Project** for hands-on practice with Python classes, interfaces, inheritance, polymorphism, and modular design.

This project is supervised by **Dr. Humera Tariq** and designed for incremental weekly learning.

---

## 📌 Student Workflow Guidelines

### 👤 Individual Work (Recommended)

1. **Fork** this repository from GitHub.
2. **Clone** your fork to your computer:

   ```bash
   git clone https://github.com/your-username/chat-application.git

3. Use the provided .bat scripts to set up your project folder structure, environment, and Git integration.

4. Work weekly inside your cloned repository, building your chatbot logic and features.

5. Push weekly commits to your forked GitHub repository.

### 👤👤 👤Group Work (Alternative)
1. One member forks the instructor’s repository.
2. Other members are added as collaborators to the fork.
3. Use feature branches to isolate development:

   git checkout -b feature/einstein-bot
4. Collaborate using pull requests and code reviews.

## Prerequisites
Install the following tools before proceeding:
✅ Python 3.10+

✅ Git

✅ GitHub CLI: https://cli.github.com/

✅ VS Code (recommended)

## 📌 How to best use given .bat files for git automation (Optional)
This project includes helper scripts to reduce setup time and ensure consistency.

| Step | File Name                     | Purpose                                                | Need to Edit?                     |
| ---- | ----------------------------- | ------------------------------------------------------ | --------------------------------- |
| 0    | `step_0_create_structure.bat` | Creates project folders, activates virtual environment |  No                              |
| 00   | `step_00_init_git.bat`        | Initializes Git and identity, commits initial version  |  Yes (Set GitHub name & email)   |
| 1    | `step_1_check_git.bat`        | Verifies Git installation                              |  No                              |
| 2    | `step_2_check_git_repo.bat`   | Checks if `.git` folder exists                         |  No                              |
| 3    | `step_3_add_remote.bat`       | Adds remote GitHub repository link                     |  Yes (Update with your repo URL) |
| 4    | `step_4_mvp_commit.bat`       | Commits and pushes code to GitHub                      |  No (unless repo URL changed)    |

💡 I run step 0 and step 00 outside folder "chat_application". All other .bat files have been run from inside chat-application.

## 📁 Folder Structure step_0_create_structure.bat
chat_application/
│
├── venv/                   # Virtual environment
├── main.py                 # Entry point of the application
├── README.md               # Project documentation
├── requirements.txt        # Dependencies
│
├── src/
│   ├── models/             # Bot classes (e.g. EinsteinBot, RonaldoBot)
│   ├── services/           # Chat service logic
│   ├── utils/              # Helper utilities (if any)
│   ├── exceptions/         # Custom error definitions (optional)
│   └── core/               # CLI, initializers, config etc.
│
├── tests/                  # Unit or functional tests
│
├── step_0_create_structure.bat
├── step_00_init_git.bat
├── step_1_check_git.bat
├── step_2_check_git_repo.bat
├── step_3_add_remote.bat
├── step_4_mvp_commit.bat


## 🐍 Working with Virtual Environment
A venv folder is created in Step 0.

To activate:     call venv\Scripts\activate
To deactivate:   deactivate


## 📚 Weekly Coding Practice
Each week, extend the chatbot in small steps:

Add new bots in: src/models/bots/

Define common interface in: src/models/bot_interface.py

Keep logic clean using services in: src/services/

Maintain a clean main.py entry point

Practice these concepts:

Classes & Constructors

Inheritance & Method Overriding

Interfaces (via abc.ABC)

Polymorphism (calling reply() on different bots)

