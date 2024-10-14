# Stunning Octo Umbrella

C++ project scaffolding for embedded systems.

## Features

- **CMake**: Build system for managing the project.
- **pre-commit**: Ensures code quality with pre-commit hooks.
- **gtest**: Google Test framework for unit testing.

## Getting Started

### Prerequisites

- CMake
- Make
- g++
- pre-commit

### Building the Project

```sh
make build
```

### Releasing the Project

To create a release build:

```sh
make release
```

### Running Tests

```sh
make test
```

### Using pre-commit

Install pre-commit hooks:

```sh
pre-commit install
```

Run pre-commit hooks manually:

```sh
pre-commit run --all-files
```

## Makefile Tasks

- `make build`: Build the project.
- `make release`: Build the project in release mode.
- `make clean`: Clean the build directory.
- `make test`: Run all tests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
