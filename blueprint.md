# Blueprint: Florería App

## Overview

This document outlines the structure, features, and planned enhancements for the Florería App, a Flutter application for a flower shop.

## Current State

The application consists of six screens in a single `main.dart` file:

1.  **LoginPage:** The entry point of the app, with options to log in.
2.  **ProductosPage:** Displays a grid of best-selling products.
3.  **MenuPage:** A menu screen with expandable sections for "Ocaciones" and "Flores".
4.  **AniversarioPage:** A screen displaying anniversary-themed products.
5.  **CarritoPage:** The shopping cart screen.
6.  **FinalizarCompraPage:** The checkout screen.

The current implementation has hardcoded navigation, duplicated widgets, and all the code in a single file.

## Planned Enhancements

My plan is to refactor the application to improve its structure, maintainability, and user interface.

### 1. Project Restructuring

-   **screens/:** Create a directory to hold each screen in its own file (e.g., `login_screen.dart`, `products_screen.dart`).
-   **widgets/:** Create a directory for reusable widgets, such as `ProductCard`.
-   **navigation/:** Create a file to configure the app's routing using `go_router`.
-   **theme/:** Create a file to define a consistent theme for the application, including colors and typography.

### 2. Navigation

-   Replace the current `MaterialPageRoute` navigation with `go_router` for a declarative, URL-based routing system. This will make the navigation more robust and easier to manage.

### 3. State Management

-   For now, the state management will remain simple with `StatefulWidget` for local state. As the app grows, a more robust solution like `Provider` or `Riverpod` will be considered for managing app-wide state (like the shopping cart).

### 4. UI/UX Improvements

-   **Theming:** Implement a consistent theme using `ThemeData` with `ColorScheme.fromSeed` and `google_fonts` for a modern and visually appealing look.
-   **Reusable Widgets:** Extract the `ProductCard` into a reusable widget to avoid code duplication.
-   **Image Handling:** Replace the current base64 encoded images with network URLs for better performance and easier management.

### 5. Code Quality

-   **Separation of Concerns:** By splitting the code into multiple files and folders, the project will be more organized and easier to maintain.
-   **Readability:** Use clear and consistent naming conventions for files, classes, and variables.

After implementing these changes, the app will be more scalable, maintainable, and have a more polished user interface.
