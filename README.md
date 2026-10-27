
# 🧰 RepoPilot
### Developer Environment Automation Toolkit

> Inspect Projects. Detect Technologies. Simplify Development.

RepoPilot is a lightweight command-line developer utility built using **Bash scripting**.

It helps developers understand unfamiliar projects by detecting programming languages, checking installed development tools, and providing environment setup recommendations.

The goal is to make developer environment diagnostics faster, safer, and more convenient.

---

## 🚀 Features

- 🔎 Automatic technology stack detection
- 🧠 Programming language identification
- 🧰 Developer toolchain checking
- 🌿 Git repository diagnostics
- 📁 Project structure inspection
- 🔐 Basic environment file safety checks
- 📝 Diagnostic report generation
- ⚡ Fast command-line execution
- 🛡️ Safe environment initialization
- 🧪 Automated integration tests

## 💻 Supported Project Technologies

RepoPilot can recognize common indicators for:

- Go
- JavaScript / Node.js
- Python
- Flutter / Dart
- C#
- Rust
- C

Detection uses project manifests and recognizable file structures.

## 🛠️ Technology Stack

| Technology | Purpose |
|---|---|
| Bash | Automation scripting |
| Git | Repository diagnostics |
| Unix Utilities | File and system checks |
| ShellCheck | Script linting |
| GitHub Actions | Automated testing |

## 📁 Project Structure

```text
repopilot-bash/
├── bin/
│   └── repopilot
├── examples/
│   └── .env.example
├── tests/
│   └── run.sh
├── .github/
│   └── workflows/
│       └── ci.yml
├── .gitignore
├── LICENSE
└── README.md
```

## ⚙️ Installation

### Requirements

- Bash
- Git
- Linux, macOS, WSL, or Git Bash

### Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/repopilot-bash.git
cd repopilot-bash
```

### Make Script Executable

```bash
chmod +x bin/repopilot
```

### Run Project Scanner

```bash
./bin/repopilot scan .
```

## 💻 Available Commands

### Scan Current Project

```bash
./bin/repopilot scan .
```

### Run Diagnostics

```bash
./bin/repopilot doctor .
```

### Scan Another Repository

```bash
./bin/repopilot scan /path/to/project
```

### Generate Report

```bash
./bin/repopilot report . report.txt
```

### Preview Environment Initialization

```bash
./bin/repopilot init-env examples
```

### Apply Environment Initialization

```bash
./bin/repopilot init-env examples --apply
```

## 🖥️ Example Output

```text
[STACK DETECTION]
  - Go

[TOOLS]
  [OK] go installed
  [OK] git installed

[PROJECT HEALTH]
  [OK] README.md found
  [OK] .gitignore found

[SUGGESTIONS]
  Run: go test ./...

Diagnostics completed.
```

The actual results depend on the inspected repository and installed development tools.

## 🧠 How It Works

```text
Developer Repository
         |
         v
   File Detection
         |
         v
 Technology Analysis
         |
         v
  Toolchain Checking
         |
         v
 Repository Diagnostics
         |
         v
 Report & Recommendations
```

## 🧪 Testing

```bash
bash tests/run.sh
```

### Optional ShellCheck

```bash
shellcheck bin/repopilot tests/run.sh
```

## 🔐 Security

RepoPilot follows a safety-focused approach:

- Does not execute unknown repository code
- Does not automatically install dependencies
- Does not display secret environment values
- Uses explicit confirmation through `--apply`
- Avoids overwriting existing configuration files

## 🔮 Future Improvements

- [ ] JSON diagnostic reports
- [ ] More programming language detectors
- [ ] Custom project templates
- [ ] Advanced repository analysis
- [ ] Interactive CLI dashboard
- [ ] Developer environment health scoring

## 🤝 Contributions

Contributions, bug reports, and feature suggestions are welcome.

## 📜 License

Licensed under the MIT License.

---

### ⭐ Support

If RepoPilot makes your development workflow easier, give this repository a star!

**Built with Bash | Linux | Automation | DevOps**
