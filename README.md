# Modern TypeScript ESM Project

A modern, up-to-date TypeScript project with ESM modules, comprehensive tooling, and IDE integration.

## 🚀 Features

- **TypeScript 5.9.2** with strict configuration
- **ESM modules** with Node.js 24+ support
- **Dual build system**: TypeScript Compiler (tsc) and SWC for fast builds
- **Modern linting**: ESLint 9.x with flat config and TypeScript integration
- **Code formatting**: Prettier with WebStorm/IDE compatibility
- **Testing**: Node.js built-in test runner with tsx
- **Development tools**: Hot reload, type checking, and comprehensive scripts

## 📋 Prerequisites

- Node.js 24.8.0+ (use fnm for version management)
- Yarn package manager

### Setting up Node.js

```bash
# Install and use Node.js 24
fnm install 24.8.0
fnm use 24.8.0

# Install Yarn globally (if needed)
npm i -g yarn
```

## 🛠️ Available Scripts

```bash
# Development
yarn dev                 # Start development with hot reload
yarn start              # Run the built application

# Building
yarn build              # Build with TypeScript compiler
yarn build:tsc          # Build with TypeScript compiler (explicit)
yarn build:swc          # Build with SWC (faster)
yarn clean              # Clean build directory

# Testing
yarn test               # Run tests
yarn test:watch         # Run tests in watch mode

# Code Quality
yarn lint               # Run ESLint
yarn lint:fix           # Run ESLint with auto-fix
yarn format             # Format code with Prettier
yarn format:check       # Check code formatting
yarn type-check         # Run TypeScript type checking

# Comprehensive Check
yarn ci                 # Run all checks (type-check, lint, format, test, build)
```

## 🔧 IDE Configuration

### WebStorm/IntelliJ IDEA

The project is configured to work seamlessly with WebStorm:

1. **Prettier**: Configured via `.prettierrc.json` - WebStorm will automatically detect and use these settings
2. **ESLint**: Uses modern flat config format - enable ESLint in WebStorm settings
3. **TypeScript**: Strict configuration with comprehensive type checking
4. **EditorConfig**: Consistent formatting across different editors

### VS Code

Settings are provided in `.vscode/settings.json` for optimal VS Code experience.

## 📁 Project Structure

```
├── src/                    # Source files
│   ├── app.ts             # Main application entry
│   └── month-from-date.ts # Example module
├── tests/                 # Test files
│   └── months.test.ts     # Example tests
├── dist/                  # Build output (generated)
├── .vscode/               # VS Code settings
├── eslint.config.js       # ESLint flat configuration
├── tsconfig.json          # TypeScript configuration
├── .prettierrc.json       # Prettier configuration
├── .swcrc                 # SWC configuration
├── .editorconfig          # Editor configuration
└── package.json           # Dependencies and scripts
```

## 🐳 Docker

Build and explore the Docker image:

```bash
# Build docker image
docker build -t esm:latest .

# Explore docker image
docker run --rm -it --entrypoint=/bin/sh esm:latest

# Run the application
docker-compose up
```

### GitHub Container Registry

Docker images are automatically built and pushed to GitHub Container Registry on every push to master:

- **Registry**: `ghcr.io/ichulkov/esm-typescript`
- **Tags**: `latest`, `master-<sha>`, branch names
- **Pull**: `docker pull ghcr.io/ichulkov/esm-typescript:latest`

## 📦 Dependencies

### Runtime Dependencies

- **express**: `^5.1.0` - Web framework

### Development Dependencies

- **TypeScript & Types**: `typescript`, `@types/node`
- **Build Tools**: `@swc/core`, `@swc/cli`, `tsx`
- **Linting**: `eslint`, `typescript-eslint`, `@eslint/js`
- **Formatting**: `prettier`, `eslint-config-prettier`, `eslint-plugin-prettier`
- **Utilities**: `globals`

## 🔄 Updating Dependencies

To update dependencies to their latest versions:

```bash
yarn upgrade-interactive --latest
```

## 🎯 Development Workflow

1. **Start development**: `yarn dev`
2. **Make changes** to TypeScript files
3. **Run tests**: `yarn test` or `yarn test:watch`
4. **Check code quality**: `yarn ci`
5. **Build for production**: `yarn build`

## ✅ Quality Assurance

The project includes comprehensive quality checks:

- **Type Safety**: Strict TypeScript configuration
- **Code Style**: Prettier formatting with consistent rules
- **Code Quality**: ESLint with TypeScript-specific rules
- **Testing**: Unit tests with Node.js test runner
- **Build Verification**: Both TSC and SWC build processes

All checks can be run with: `yarn ci`
