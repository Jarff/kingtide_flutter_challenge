# Kingtide Challenge - Futurama Character Browser

A Flutter application that allows users to browse Futurama characters with filtering and favorites functionality.

## Features

- 📱 **Character Browser**: Browse through a paginated list of Futurama characters
- 🔍 **Search & Filter**: Filter characters by name, species and gender
- ⭐ **Favorites**: Save your favorite characters (persisted locally)
- 📄 **Details View**: View detailed information about each character
- 🏗️ **Clean Architecture**: Organized with domain/infrastructure/presentation layers

## Tech Stack

- **State Management**: MobX with code generation
- **Dependency Injection**: Injectable + GetIt
- **Routing**: GoRouter
- **Networking**: HTTP with Dartz for functional error handling
- **Code Generation**: Built Value for serialization
- **Local Storage**: Shared Preferences
- **Architecture**: Clean Architecture with separation of concerns

## Prerequisites

- Flutter SDK: ^3.9.2
- Dart SDK: ^3.9.2
- FVM (Flutter Version Manager) - Recommended

## Setup Instructions

### 1. Clone the Repository

```bash
git clone <repository-url>
cd kingtide_challenge
```

### 2. Install Flutter (if not already installed)

Using FVM (recommended):
```bash
fvm install 3.35.4
fvm use 3.35.4
```

Or using regular Flutter:
```bash
flutter --version  # Should be 3.35.4 or higher
```

### 3. Get Dependencies

```bash
flutter pub get
```

### 4. Generate Code

This project uses code generation for several features. Run:

```bash
dart run build_runner build --delete-conflicting-outputs
```

This will generate:
- MobX store code (`*.g.dart` files)
- Built Value serializers
- Injectable dependency injection setup

### 5. Run the Application

```bash
flutter run
```

For iOS:
```bash
flutter run -d ios
```

For Android:
```bash
flutter run -d android
```

## Project Structure

```
lib/
├── core/
│   ├── application/          # Business logic & stores
│   │   └── stores/          # MobX stores
│   │       ├── home_stores/ # Characters list & filtering
│   │       ├── detail_stores/# Character details
│   │       └── favorite_stores/# Favorites management
│   ├── domain/              # Business entities & interfaces
│   │   ├── entities/        # Domain models
│   │   └── services/        # Service interfaces
│   ├── infrastructure/      # External implementations
│   │   ├── models/          # Data models & serialization
│   │   └── services/        # Service implementations
│   └── presentation/        # UI layer
│       ├── views/           # Screen widgets
│       └── widgets/         # Reusable components
├── inject/                   # Dependency injection setup
├── main.dart                 # App entry point
└── routes.dart               # Route definitions
```

## Key Components

### Architecture
- **Clean Architecture**: Separation between domain, infrastructure, and presentation
- **Dependency Injection**: Injectable for automatic DI setup
- **Functional Programming**: Dartz Either type for error handling

### State Management
- **MobX**: Reactive state management with observables
- Stores handle business logic and state changes
- Observer widgets react to state changes
