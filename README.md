# Robot Framework Project Template

## Overview
This project provides a robust template for developing automated tests using Robot Framework. It features a modular structure for organizing test cases, reusable resources, custom Python libraries, and CI integration scripts. Dependency management is handled via Poetry, and common development tasks (documentation generation, linting, etc.) are automated using Invoke.

This Template is a personal interpretation on how is best to use robot framework in order to develop and maintain aan easily scalable test environment.
The current structure has been defined with some premises on mind:
- Tests are defined using templates, this is to "force" the reusability of robot coded structures.
- Use of Robot coded resources is discouraged besides the templates, this is to limit how deep the keywords will be seen in the logs
- 

Is important to note that each project has its own quirks and its own developers, feel free to change any structure you are not using.

## Project Structure

```
RoboTemplate
├── tests/                      # Robot Framework test suites and cases
│   ├── __init__.robot
│   ├── example_test.robot
│   ├── example_suite_folder/
│   │   ├── __init__.robot
│   │   ├── example_siute_test.robot
│   │   ├── example_suite_test_library.py
│   │   └── example_suite_test.resource
│   └── example_suite_folder_2/
│       └── __init__.robot
├── resources/                  # Shared keywords, variables, and resource files
│   └── CommonSetupTeardown.resource
├── libraries/                  # Custom Python libraries for advanced keywords
│   ├── example_library.py
│   └── framework/
│       └── environment.py
├── ci/                         # Scripts for CI/CD integration
│   └── run_tests.sh
├── docs/                       # Generated documentation and assets
│   ├── libraries/
│   ├── resources/
│   └── tests/
│       └── example_suite/
│           └── Robot-framework-logo.png
├── env.yaml                    # Example environment configuration for tests
├── pyproject.toml              # Poetry configuration and dependencies
├── poetry.lock                 # Poetry lock file
├── tasks.py                    # Invoke tasks for docs, linting, and automation
├── .libtoc                     # LibTOC configuration for documentation
└── README.md                   # Project documentation
```

## Features

- **Modular Test Organization:** Clean separation of tests, resources, and libraries for scalable automation.
- **Poetry Dependency Management:** Easy installation and management of Python packages.
- **Task Automation:** Use Invoke to run tasks like documentation generation (`robotframework-testdoc`), linting (`robocop`), and more.
- **CI/CD Ready:** Scripts and folder structure to support integration with popular CI systems.
- **Extensible:** Add new tests, keywords, and libraries as your project grows.
- **Environment Configuration:** Example `env.yaml` for bench, device, and connection setup.
- **Documentation Generation:** Store generated docs and assets in the `docs` folder.

## Setup Instructions

1. **Clone the repository:**
   ```sh
   git clone <repository-url>
   cd RoboTemplate
   ```

2. **Install dependencies:**
   Make sure [Poetry](https://python-poetry.org/) is installed, then run:
   ```sh
   poetry install
   ```

3. **Run Tests:**
   Execute all Robot Framework tests:
   ```sh
   poetry run robot tests/
   ```
   Or use the CI script:
   ```sh
   ./ci/run_tests.sh
   ```

4. **Generate Documentation:**
   ```sh
   poetry run invoke generate-docs
   ```

5. **Lint Code:**
   ```sh
   poetry run invoke lint
   ```

6. **Clean Reports:**
   ```sh
   poetry run invoke clean
   ```

## Usage

- Place your Robot Framework test cases in the `tests` directory.
- Store shared keywords and variables in the `resources` directory.
- Implement custom Python keywords in the `libraries` directory.
- Add or modify CI scripts in the `ci` directory.
- Use `tasks.py` to automate repetitive development tasks.
- Use `env.yaml` to configure your test bench and devices.

## Contribution Guidelines

- Fork the repository and create a feature branch.
- Ensure your code follows project standards and passes linting.
- Submit a pull request with a clear description of your changes.

## License

MIT

---

This template accelerates Robot Framework projects with best practices for structure, automation, and CI/CD integration.