# *Click* Tac Toe

A modern implementation of the classic Tic Tac Toe game built with Flutter and Riverpod.

## Overview

**Clic** Tac Toe is a feature-rich Tic Tac Toe game that supports multiple player types:
- Local player (human)
- AI player (using Minimax algorithm)

The application is designed with clean architecture principles, making it easy to extend with new features and player types.

## Platform Support

**Clic** Tac Toe is ready for:
- iOS
- Android
- macOS

While the application should work on other desktop platforms, it has not been extensively tested on them and may have some glitches or issues.

## Technical Architecture

### Core Architecture

The application follows a modular architecture with clear separation of concerns:

- **Modules**: The code is organized into modules (game, player, design)
- **Clean Architecture**: Each module follows the principles of clean architecture with:
  - Interfaces layer (domains, interfaces)
  - Use cases
  - Core (providers, repositories)
  - UI (screens, widgets)

### State Management

The application uses Riverpod for state management, which provides:
- Dependency injection
- Reactive state management
- Testability

### Game State Manager

Currently, there's only one implementation for a `GameStateManager`, the local one.
But along the same handling as what we'll see for the player implementation, we could have had a `GameManager` type to ensure the correct implementation.

![Game State Manager (1)](https://github.com/user-attachments/assets/1cee8748-753d-4c84-9e24-3a151581fa53)

### Player System Architecture

One of the key design decisions was creating a flexible player system that can support different types of players (human, AI, potentially remote).

![playerhandle](https://github.com/user-attachments/assets/82d73c7b-8928-4907-b105-417a9c10cfed)

I make the choce to differentiate the Players using two interfaces:
- `PlayerStateHandler`, which defines the build method and only takes into account the state side that is updated
- `PlayerHandler`, which contains the methods for managing players, which corresponds to the notifier on the Riverpod side 

#### Local Player Handler

