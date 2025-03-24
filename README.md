# ClickTacToe

A modern implementation of the classic Tic Tac Toe game built with Flutter and Riverpod.

## Overview

ClickTacToe is a feature-rich Tic Tac Toe game that supports multiple player types:
- Local player (human)
- AI player (using Minimax algorithm)

The application is designed with clean architecture principles, making it easy to extend with new features and player types.

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



### Player System Architecture

One of the key design decisions was creating a flexible player system that can support different types of players (human, AI, potentially remote).

#### PlayerHandler Interface

The `PlayerHandler` interface is the cornerstone of this design, allowing different player implementations to be used interchangeably:
