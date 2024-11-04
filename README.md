### DFootball

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Assigment 7
# 1. Stateless Widgets and Stateful Widgets

In Flutter, widgets are the building blocks of the user interface. Widgets in Flutter are broadly categorized into **stateless** and **stateful**:

- **Stateless Widgets**: These widgets are immutable, meaning their properties and content cannot change once they are built. Stateless widgets are ideal for displaying static information or content that doesn't require dynamic updates. They do not maintain any internal state, which makes them lightweight and efficient for simple layouts.
  
  Example: `Text`, `Icon`, `Container`, and `Column` can be stateless widgets if they don’t require any data updates after being built.

- **Stateful Widgets**: These widgets can change over time, based on interactions or data updates. Stateful widgets maintain a `State` object where their data is stored and can be updated. When the state changes, the widget is rebuilt to reflect the new state, enabling interactive and dynamic UI elements.
  
  Example: Buttons or interactive items that require user actions, like toggling between states, can be created with stateful widgets.

# Difference between Stateless and Stateful Widgets

| Stateless Widgets                           | Stateful Widgets                           |
|---------------------------------------------|--------------------------------------------|
| Immutable and cannot change after creation. | Mutable, can change state dynamically.     |
| Suitable for static content.                | Suitable for interactive content.          |
| Does not use a `State` object.              | Uses a `State` object to manage changes.   |

## 2. Widgets Used in This Project

# Widgets
- **Scaffold**: Provides the basic structure of the app, including the `AppBar` and `body` layout.
- **AppBar**: Displays the title at the top of the page.
- **Padding**: Adds padding around widgets to create space.
- **Row**: Arranges `InfoCard` widgets horizontally.
- **Column**: Arranges widgets vertically for organizing layout.
- **Card**: Creates a shadowed container for content display, used in `InfoCard` to show user data.
- **GridView**: Used to display `ItemCard` widgets in a 3-column grid layout.
- **Container**: Wraps widgets to add styling, like borders and padding.
- **Text**: Displays textual content.
- **Icon**: Shows icons in the `ItemCard` widgets.
- **InkWell**: Detects taps or interactions on the `ItemCard` widgets.
- **Material**: Wraps `ItemCard` to give a consistent background color and rounded corners.

# Custom Widgets
- **InfoCard**: Custom widget displaying information like NPM, Name, and Class.
- **ItemCard**: Custom widget displaying an item icon and name, with a tap interaction to show a `SnackBar` message.

## 3. Use-Case for `setState()`

The `setState()` method is used within a `StatefulWidget` to update the widget's state. When `setState()` is called, it triggers a rebuild of the widget, updating the UI to reflect the current state. This is useful for dynamic content, where user interactions or data changes need to be displayed immediately.

# Example of Variables Affected by `setState()`
In a stateful widget, variables like counters, toggle values, or form inputs can be managed by `setState()`. For instance, a counter variable that increments every time a button is pressed can use `setState()` to update and display the latest count.

```
int counter = 0;

void incrementCounter() {
  setState(() {
    counter++;
  });
}
```

## 4. Difference between const and final Keywords
In Dart, const and final are used to define constants, but they have different properties:

const: Used to declare compile-time constants. A const value is determined at compile-time, meaning it remains constant and cannot be altered. It is ideal for values that are known and fixed before the code runs.

Example:
```
const int maxLimit = 100;
```

final: Used to declare runtime constants. A final variable can be assigned only once and cannot be changed after being initialized. However, its value is assigned at runtime, making it suitable for values that depend on runtime information.

Example:
```
final DateTime currentTime = DateTime.now();
```