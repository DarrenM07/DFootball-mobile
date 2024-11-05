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
## 5. Explain Step-by-step
  
  # Step 1: Creating the Flutter Project
  1. **Generate a new project named `DFootball` and enter the project directory.**
    - Use the following commands to create the project and navigate into it:
    ```
    flutter create dfootball
    cd dfootball
    ```
    - *Explanation*: The `flutter create` command generates the basic Flutter project structure with the name "DFootball." This directory includes the `lib` folder, `assets` folder, and other basic configurations required to run a Flutter application.

  2. **Run the app through Terminal.**
    - Run the project by using the following command:

    ```
    flutter run
    ```
    - **Explanation**: The `flutter run` command compiles the project and runs it on a connected emulator or physical device. The app will show either a blank screen or the default “Welcome to Flutter” page.

  # Step 2: Initialize Git and Push to GitHub
  1. **Initialize Git in the DFootball project.**
    - Run the following command in the root of the project:

    ```
    git init
    ```
    - **Explanation**: `git init` initializes a Git repository in the project directory, allowing you to track code changes.

    - Make the first commit and push it to GitHub:
    ```
    git add .
    git commit -m "Initial commit"
    git remote add origin <GITHUB-URL>
    git push -u origin main
    ```

  # Step 3: Reorganizing Project Structure
  1. **Create a new file named `menu.dart` in the `lib` folder.**
    - This step helps separate code by functionality, making the code more organized.

  2. **Move the `MyHomePage` code from `main.dart` to `menu.dart`.**
    - This step separates the UI components from `main.dart` for easier management. After that, add a new import in `main.dart`:

    ```
    import 'package:DFootball/menu.dart';
    ```

  # Step 4: Creating a Simple Widget
    # Step 1: Changing the Application Theme
    - **Change the theme** in `main.dart` to customize the visual appearance.

      ```
        colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.red,
      ).copyWith(secondary: const Color.fromARGB(255, 0, 102, 255)),
      ```
      - **Explanation**: This color change gives the app a more personalized look, in this case using red and blue as the main theme color for the DFootball app.

    # Step 2: Change `MyHomePage` to Stateless
    - **Change `MyHomePage` to a `StatelessWidget`** in `menu.dart`.
      - Changing `MyHomePage` from stateful to stateless makes it more efficient if it doesn't require internal state changes, such as animations or dynamic updates.

    # Step 3: Creating an InfoCard for Team Information
    - **Declare variables for information like team name, league, and country** inside `MyHomePage`.
    - Create an `InfoCard` class to display this information.

      ```
      class InfoCard extends StatelessWidget {
        // Card information that displays the title and content.

        final String title;  // Card title.
        final String content;  // Card content.

        const InfoCard({super.key, required this.title, required this.content});

        @override
        Widget build(BuildContext context) {
          return Card(
            // Create a card box with a shadow.
            elevation: 2.0,
            child: Container(
              // Set the size and spacing within the card.
              width: MediaQuery.of(context).size.width / 3.5, // Adjust with the width of the device used.
              padding: const EdgeInsets.all(16.0),
              // Place the title and content vertically.
              child: Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  Text(content),
                ],
              ),
            ),
          );
        }
      }
      ```
      - **Explanation**: This `InfoCard` can display information about the team, league, and country, using a `Card` widget for a neat and professional look.

    # Step 4: Creating a Button Card (ItemCard) for Features
    - Create an `ItemHomepage` class to store button attributes (such as name and icon).
    - Create an `ItemCard` to display the button and show a SnackBar notification when pressed.

      ```
      class ItemCard extends StatelessWidget {
        // Display the card with an icon and name.

        final ItemHomepage item; 
        
        const ItemCard(this.item, {super.key}); 

        @override
        Widget build(BuildContext context) {
          return Material(
            // Specify the background color of the application theme.
            color: Theme.of(context).colorScheme.secondary,
            // Round the card border.
            borderRadius: BorderRadius.circular(12),
            
            child: InkWell(
              // Action when the card is pressed.
              onTap: () {
                // Display the SnackBar message when the card is pressed.
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(content: Text("You have pressed the ${item.name} button!"))
                  );
              },
              // Container to store the Icon and Text
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Column(
                    // Place the Icon and Text in the center of the card.
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        item.icon,
                        color: Colors.black,
                        size: 30.0,
                      ),
                      const Padding(padding: EdgeInsets.all(3)),
                      Text(
                        item.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      }
      ```
      - **Explanation**: This button will show a small notification each time it is pressed, displaying the name of the button.

    # Step 5: Integrate `InfoCard` and `ItemCard` in `MyHomePage`
    - Integrate all components by arranging the layout in the `build()` function.

      ```
      class MyHomePage extends StatelessWidget {
          MyHomePage({super.key});
          final String npm = '2306256293'; // NPM
          final String name = 'Darren Marcello Sidabutar'; // Name
          final String className = 'PBP KKI'; // Class
          final List<ItemHomepage> items = [
          ItemHomepage("View Mood", Icons.mood),
          ItemHomepage("Add Mood", Icons.add),
          ItemHomepage("Logout", Icons.logout),
          ];
        // This widget is the home page of your application. It is stateful, meaning
        // that it has a State object (defined below) that contains fields that affect
        // how it looks.

        // This class is the configuration for the state. It holds the values (in this
        // case the title) provided by the parent (in this case the App widget) and
        // used by the build method of the State. Fields in a Widget subclass are
        // always marked "final".


        @override
        @override
        Widget build(BuildContext context) {
          // Scaffold provides the basic structure of the page with the AppBar and body.
          return Scaffold(
            // AppBar is the top part of the page that displays the title.
            appBar: AppBar(
              // The title of the application "DFootball" with white text and bold font.
              title: const Text(
                'DFootball',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // The background color of the AppBar is obtained from the application theme color scheme.
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            // Body of the page with paddings around it.
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              // Place the widget vertically in a column.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Row to display 3 InfoCard horizontally.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoCard(title: 'NPM', content: npm),
                      InfoCard(title: 'Name', content: name),
                      InfoCard(title: 'Class', content: className),
                    ],
                  ),

                  // Give a vertical space of 16 units.
                  const SizedBox(height: 16.0),

                  // Place the following widget in the center of the page.
                  Center(
                    child: Column(
                      // Place the text and grid item vertically.

                      children: [
                        // Display the welcome message with bold font and size 18.
                        const Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Text(
                            'Welcome to DFootball Store',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        ),

                        // Grid to display ItemCard in a 3 column grid.
                        GridView.count(
                          primary: true,
                          padding: const EdgeInsets.all(20),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 3,
                          // To ensure that the grid fits its height.
                          shrinkWrap: true,

                          // Display ItemCard for each item in the items list.
                          children: items.map((ItemHomepage item) {
                            return ItemCard(item);
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      }
      ```
      - **Explanation**: These components will be displayed in a `Grid` and `Column` layout, providing an attractive interface for the DFootball app.

  ## Step 6 : Analysis and Testing
  - **Use the `flutter analyze` command** to check for any code issues.

    ```
    flutter analyze
    ```
    - **Explanation**: This analysis helps identify errors or warnings that could impact app performance.