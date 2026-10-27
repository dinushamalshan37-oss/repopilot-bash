# 🧰 RepoPilot

### Understand a repository before you run it.

**Safe Developer Environment Diagnostics | Bash | CLI Automation**

> Scan a local codebase to discover its technology stack, check installed toolchains, review repository hygiene and get setup suggestions — without running unknown project code.

**Status:** Functional CLI MVP  ·  **Language:** Bash  ·  **License:** MIT

---

## ✨ Highlights

| Feature | What it does |
| --- | --- |
| 🔎 Stack detection | Recognize Go, Node.js, Python, Flutter/Dart, C#, Rust and basic C layouts |
| 🧰 Toolchain check | Show which required CLI tools are installed and their versions |
| 🌿 Git health | Inspect repository initialization and common project files |
| 🔐 Secret awareness | Warn when a local `.env` file appears tracked by Git |
| 📝 Diagnostics | Write a human-readable report to a new file |
| 🛡️ Safe setup | Preview `.env.example` initialization; `--apply` is explicit |
| 🧪 Automated tests | Bash test runner, ShellCheck and GitHub Actions |

## 🧰 Tech stack

`Bash` · `Git` · `Core Unix utilities` · `ShellCheck` · `GitHub Actions`

Designed for Linux, macOS and compatible Bash environments such as WSL or Git Bash.

## 🚀 Getting started

Clone and run:

```bash
git clone https://github.com/YOUR_USERNAME/repopilot-bash.git
cd repopilot-bash
chmod +x bin/repopilot
./bin/repopilot scan .
```

No package manager, database or runtime server is required for this script.

## 💻 CLI commands

| Command | Description |
| --- | --- |
| `./bin/repopilot scan .` | Scan the current repository |
| `./bin/repopilot doctor .` | Run the same diagnostics |
| `./bin/repopilot scan /path/to/repo` | Inspect a different repository |
| `./bin/repopilot report . report.txt` | Export diagnostics to a new file |
| `./bin/repopilot init-env examples` | Preview safe `.env` initialization |
| `./bin/repopilot init-env examples --apply` | Create `.env` from `.env.example` if absent |
| `./bin/repopilot --version` | Print version |

### Example output (illustrative)

```text
[STACK DETECTION]
  - Go

[TOOLS]
  [OK]   go       go version ...
  [OK]   git      git version ...

[PROJECT HEALTH]
  [OK]   README.md present
  [OK]   .gitignore present

[SUGGESTIONS]
  Go: go test ./...

Complete. No packages installed or repository code executed.
```

Actual output depends on your computer and project files.

## 🧠 How detection works

```text
Project directory
      │
      ▼
Known manifests and files (go.mod, pubspec.yaml, etc.)
      │
      ▼
Check matching commands (go, flutter, dotnet, ...)
      │
      ▼
Git / README / .gitignore health checks
      │
      ▼
Safe suggestions or optional text report
```

Detection is based on simple files and folder patterns. It does **not** parse every source file or claim to discover every programming language in a repository.

## 📁 Project structure

```text
repopilot-bash/
├── bin/repopilot             # Main executable CLI
├── examples/.env.example     # Safe demo configuration template
├── tests/run.sh              # Integration tests
├── .github/workflows/ci.yml # ShellCheck + tests
├── .gitignore
└── LICENSE
```

## ✅ Testing

```bash
bash tests/run.sh
```

Optional linting (install ShellCheck separately):

```bash
shellcheck bin/repopilot tests/run.sh
```

## 🔐 Safety design

- Does **not** install dependencies or execute project setup scripts.
- Does **not** read or print the contents of `.env`.
- `init-env` is a **dry run by default**; only `--apply` can create a file.
- Refuses to overwrite an existing `.env` or diagnostic report.
- Does not claim that detected stacks are exhaustive.

Review any command recommendation before running it, especially in a repository downloaded from an unknown source.

## 🗺️ Roadmap (not implemented yet)

- [ ] Machine-readable JSON output
- [ ] Plugin-based language detectors
- [ ] More detailed troubleshooting hints
- [ ] Optional cross-platform setup guides
- [ ] Repository health score with customizable rules

## 📸 Screenshots

Capture a real terminal run of `./bin/repopilot scan .` and add it to this README.

## 🤝 Contributions & license

Suggestions and pull requests are welcome. MIT licensed — see [LICENSE](LICENSE).

---

**GitHub description:** A Bash automation toolkit for detecting project technologies, checking developer tools, and generating diagnostic reports.
