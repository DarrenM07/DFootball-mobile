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

### Assigment 7
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
- **Scaffold**: Provides the basic structure of the screen with a top app bar, body, and floating button. It is a foundational widget in Flutter that holds the main layout.
- **AppBar**: Displays a title at the top of the screen. In this project, it shows "DFootball" as the app title.
- **Padding**: Adds spacing around its child widget. Used to ensure elements are spaced from the screen edges.
- **Row**: Arranges `InfoCard` widgets horizontally. In this project, it organizes user information cards in a row.
- **Column**: Arranges widgets vertically for organizing layout. It’s used to stack user info cards and feature buttons.
- **Card**: Creates a shadowed container for content display, used in `InfoCard` to show user data.
- **GridView**: Used to display `ItemCard` widgets in a 3-column grid layout.
- **Container**: Wraps widgets to add styling, like borders and padding.
- **Text**: Displays textual content.
- **Icon**: Shows icons in the `ItemCard` widgets.
- **InkWell**: Detects taps or interactions on the `ItemCard` widgets.
- **Material**: Wraps `ItemCard` to give a consistent background color and rounded corners.
- **SnackBar**: Displays a small pop-up notification at the bottom of the screen when a button is pressed.

# Custom Widgets
- **InfoCard**: Custom widget displaying information like NPM, Name, and Class.
- **ItemCard**: Custom widget displaying an item icon and name, with a tap interaction to show a `SnackBar` message.

## 3. Use-Case for `setState()`

The `setState()` method is used within a `StatefulWidget` to update the widget's state. When `setState()` is called, it triggers a rebuild of the widget, updating the UI to reflect the current state. This is useful for dynamic content, where user interactions or data changes need to be displayed immediately. It is commonly used when the widget needs to dynamically change, such as updating a counter, changing a theme, or displaying new data in response to user interactions.

# Example of Variables Affected by `setState()`
Only variables that are properties of a StatefulWidget’s State class can be updated with setState(). For instance, if this project had a counter or toggle variable to switch between themes, setState() would be used to update and reflect that change in the UI. In a stateful widget, variables like counters, toggle values, or form inputs can be managed by `setState()`. For instance, a counter variable that increments every time a button is pressed can use `setState()` to update and display the latest count.

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
          ItemHomepage("View Product", Icons.mood),
          ItemHomepage("Add Product", Icons.add),
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

## ----------------------------------------------------------------------------------------------------------------
### Assignment 8
  ## 1. What is the purpose of const in Flutter? Explain the advantages of using const in Flutter code. When should we use const, and when should it not be used?
    The const keyword in Flutter (and Dart) defines objects that are compile-time constants, meaning their values are fixed at compile-time and cannot change during runtime. Using const in Flutter brings several advantages:

    Advantages: Using const in Flutter creates a single, reusable instance of an object, saving memory. Since const objects cannot change after initialization, they lead to more predictable code and help prevent bugs related to object mutation.

    When to Use const: Use const for widgets that stay the same throughout the app’s lifecycle or for repeated widgets and values, as it aids in caching and memory efficiency. It’s ideal for values known at compile time, like mathematical constants or widgets built with such constants.

    When Not to Use const: Avoid const for values or widgets that depend on user actions, state changes, or dynamic data, as const is limited to compile-time values. For runtime flexibility, const is not suitable when widgets require dynamic properties.



  ## 2. Explain and compare the usage of Column and Row in Flutter. Provide example implementations of each layout widget!
  Comparison of Column and Row in Flutter:
  - Direction:  Column  is vertical (top to bottom),  Row  is horizontal (left to right).
  -  Main Axis:   Column  uses a vertical main axis,  Row  uses a horizontal main axis.
  -  Cross Axis:   Column  cross axis is horizontal,  Row  cross axis is vertical.
  -  Use Case:   Column  stacks widgets vertically,  Row  arranges widgets side by side.
  -  Main Axis Alignment:  Both offer alignments like  Start ,  Center ,  SpaceBetween .
  -  Cross Axis Alignment:  Both support alignments like  Start ,  Center ,  Stretch .


  Example of Column:

  ```
  Column(
    children: [
      Text('Item 1'),
      Text('Item 2'),
      Container(
        color: Colors.red,
        height: 100,
        width: 100,
        child: Center(child: Text('Box')),
      ),
      Icon(Icons.star, size: 50),
    ],
  ),
  ```

  Example of Row:
  ```
    children: [
      Icon(Icons.home),
      Text('Starred Item'),
      Container(
              color: Colors.blue,
              height: 50,
              width: 50,
              child: Center(child: Text('Box')),
            ),
            Text('End'),
    ],
  ```



  ## 3. List the input elements you used on the form page in this assignment. Are there other Flutter input elements you didn’t use in this assignment? Explain!

   Input Elements Used: 

  -  TextFormField:  Used to input the product’s name, description, and quantity (configured for numeric input using TextInputType.number).
  -  ElevatedButton:  Triggers form validation and saves the entered data.

   Other Input Elements Not Used: 

  1.  DropdownButtonFormField:  Displays a dropdown menu for selecting from predefined options, useful for categories.
  2.  Checkbox and CheckboxListTile:  Toggles a boolean value, suitable for enabling/disabling settings.
  3.  Radio and RadioListTile:  Used to select one option from a set of mutually exclusive choices.
  4.  Switch:  Toggles a setting on or off, functioning similarly to a checkbox but styled as a switch.
  5.  Slider:  Allows selecting a value from a range, ideal for quantities or ratings.
  6.  DatePicker:  Lets users pick a date, useful for inputs like expiration dates.
  7.  TimePicker:  Used for selecting a specific time.
  8.  TextField:  Similar to TextFormField but lacks built-in validation, making it a simpler input field.

   Explanation: 
  TextFormField was chosen for this form as it supports validation, making it well-suited for text and numeric entries. Other input widgets, like dropdowns, checkboxes, and sliders, are better for predefined choices, toggles, or range selections but were unnecessary here. Date and time pickers were not required, as there was no need for date or time inputs. Input widgets should align with the form’s specific requirements; for example, DropdownButtonFormField is useful for selecting categories, and Checkbox is helpful for boolean options.


  ## 4. How do you set the theme within a Flutter application to ensure consistency? Did you implement a theme in your application?
  To maintain a consistent design in a Flutter app, use a global theme with ThemeData to define colors, fonts, and visual properties across the app.

   How to Set a Global Theme: 
  1.  Define in MaterialApp:  Pass a ThemeData object to the theme property of the MaterialApp widget.
  2.  Customize ThemeData:  ThemeData allows customization of primary and secondary colors, font styles, button themes, and input decoration themes.

  ```
  import 'package:flutter/material.dart';

  void main() {
    runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Custom Themed App',
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.deepPurple,
            secondary: Colors.orange,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            elevation: 4,
          ),
          buttonTheme: const ButtonThemeData(
            buttonColor: Colors.deepPurple,
            textTheme: ButtonTextTheme.primary,
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.black87, fontSize: 20),
            bodyMedium: TextStyle(color: Colors.black54, fontSize: 16),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            ),
          ),
        ),
        home: HomePage(),
      );
    }
  }

  class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Custom Themed App'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Tap Here'),
          ),
        ),
      );
    }
  }
  ```



  ## 5. How do you manage navigation in a multi-page Flutter application?
  In a multi-page Flutter app, navigation can be handled effectively using the Navigator class, MaterialPageRoute, named routes, data passing, and advanced packages like go_router.

  1. Basic Navigator Class Usage:

  Navigator.push: Pushes a new page.
  Navigator.pop: Removes the current page.
  Example:
  ```
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondPage()),
  );
  Navigator.pop(context);
  ```

  2. Named Routes for Scalability:

  Define Routes:
  ```
  void main() {
    runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondPage(),
      },
    ));
  }
  ```
  Navigate Using Named Routes:
  ```
  Navigator.pushNamed(context, '/second');
  ```

  3. Passing Data Between Pages:

  Direct Passing:
  ```
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondPage(data: 'Hello')),
  );
  Using Named Routes with Arguments:
  dart
  Copy code
  Navigator.pushNamed(
    context,
    '/second',
    arguments: 'Hello',
  );

  // Receiving Arguments in SecondPage
  final String data = ModalRoute.of(context)!.settings.arguments as String;
  ```
  4. Advanced Navigation with go_router Package:

  Using go_router:
  ```
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/second',
        builder: (context, state) => SecondPage(),
      ),
    ],
  );

  void main() {
    runApp(MaterialApp.router(
      routerConfig: _router,
    ));
  }
  ```
  This structure provides basic navigation, scalability with named routes, data passing, and advanced routing for complex needs.

### Assignment 9
## Explain why we need to create a model to retrieve or send JSON data. Will an error occur if we don't create a model first?
Creating models to manage JSON data in Django and Flutter/Dart is essential for building well-structured, maintainable, and reliable applications. Models ensure data integrity, streamline data exchange between the backend and frontend, and minimize the risk of errors. Neglecting to use models can result in a fragile codebase, more bugs, and a more challenging development process.

## Explain the function of the http library that you implemented for this task.
The http library in Flutter/Dart enables server communication by managing HTTP requests and responses, supporting methods such as GET for retrieving data and POST for sending data.

## Explain the function of CookieRequest and why it’s necessary to share the CookieRequest instance with all components in the Flutter app.
CookieRequest plays a vital role in handling sessions, cookies, and stateful communication in Flutter apps. Using a single instance ensures secure and consistent interactions with the backend, simplifies implementation, and prevents duplicate sessions, making it crucial for apps with authentication or personalized features.

## Explain the mechanism of data transmission, from input to display in Flutter.
When a user interacts with a Flutter app, actions like form submissions or button clicks trigger network requests (e.g., GET or POST) to the Django backend via libraries like http or CookieRequest. Django processes the request, retrieves or updates data, and returns a JSON response. Flutter converts this JSON into Dart objects using models, simplifying data management, and displays the results on the UI using widgets like ListView or FutureBuilder.

## Explain the authentication mechanism from login, register, to logout. Start from inputting account data in Flutter to Django’s completion of the authentication process and display of the menu in Flutter.
During registration, Flutter sends user data to Django for validation and account creation. For login, Flutter submits credentials, and Django verifies them, returning a session cookie or token for authentication. Flutter securely stores this and includes it in future requests for protected resources. Logout involves Flutter asking Django to invalidate the session or token, then clearing stored credentials and redirecting the user to the login screen. Django manages validation and sessions, while Flutter ensures a seamless user experience.

## Explain how you implement the checklist above step by step! (not just following the tutorial)

# Setting up the authentication for the flutter project

# In the django project create a new app called authentication.

# Create a function for login, register and log out in the views.py.
```
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.models import User
import json
from django.contrib.auth import logout as auth_logout


@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Successful login status.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login successful!"
                # Add other data if you want to send data to Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login failed, account disabled."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login failed, check email or password again."
        }, status=401)
    
@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        username = data['username']
        password1 = data['password1']
        password2 = data['password2']

        # Check if the passwords match
        if password1 != password2:
            return JsonResponse({
                "status": False,
                "message": "Passwords do not match."
            }, status=400)

        # Check if the username is already taken
        if User.objects.filter(username=username).exists():
            return JsonResponse({
                "status": False,
                "message": "Username already exists."
            }, status=400)

        # Create the new user
        user = User.objects.create_user(username=username, password=password1)
        user.save()

        return JsonResponse({
            "username": user.username,
            "status": 'success',
            "message": "User created successfully!"
        }, status=200)

    else:
        return JsonResponse({
            "status": False,
            "message": "Invalid request method."
        }, status=400)
    
@csrf_exempt
def logout(request):
    username = request.user.username

    try:
        auth_logout(request)
        return JsonResponse({
            "username": username,
            "status": True,
            "message": "Logged out successfully!"
        }, status=200)
    except:
        return JsonResponse({
        "status": False,
        "message": "Logout failed."
        }, status=401)
```

# Add URL routing to the function created.
```
from django.urls import path
from authentication.views import login, register
from authentication.views import logout

app_name = 'authentication'

urlpatterns = [
    path('login/', login, name='login'),
    path('register/', register, name='register'),
    path('logout/', logout, name='logout'),

]
```

and add path('auth/', include('authentication.urls'))

# Install the package provided by the teaching assistant team by running the following commands in the Terminal.

```
flutter pub add provider
flutter pub add pbp_django_auth
```

# Modify the root widget in the main.dart.
```
class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
    return Provider(
    create: (_) {
        CookieRequest request = CookieRequest();
        return request;
    },
    child: MaterialApp(
        title: ' DFootball',
        theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepPurple,
        ).copyWith(secondary: Colors.deepPurple[400]),
        ),
        home: MyHomePage(),
    ),
    );
}
} 
```

# Create a new file in the screens folder named login.dart and register.dart.
# Add the following code to the login.dart file
```
import 'package:dfootball/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:dfootball/screens/register.dart';
void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(secondary: Colors.blue[400]),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () async {
                      String username = _usernameController.text;
                      String password = _passwordController.text;
                      final response = await request
                          .login("http://127.0.0.1:8000/auth/login/", {
                        'username': username,
                        'password': password,
                      });

                      if (request.loggedIn) {
                        String message = response['message'];
                        String uname = response['username'];
                        if (context.mounted) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                  content:
                                      Text("$message Welcome, $uname.")),
                            );
                        }
                      } else {
                        if (context.mounted) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Login Failed'),
                              content: Text(response['message']),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 36.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: Text(
                      'Don\'t have an account? Register',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

# Add the following code to register.dart:
```
import 'dart:convert';
import 'package:dfootball/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Confirm your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () async {
                      String username = _usernameController.text;
                      String password1 = _passwordController.text;
                      String password2 = _confirmPasswordController.text;

                      // Check credentials
                      // TODO: Change the url, don't forget to add a slash (/) inthe end of the URL!
                      // To connect Android emulator with Django on localhost,
                      // use the URL http://10.0.2.2/
                      final response = await request.postJson(
                          "http://127.0.0.1:8000/auth/register/",
                          jsonEncode({
                            "username": username,
                            "password1": password1,
                            "password2": password2,
                          }));
                      if (context.mounted) {
                        if (response['status'] == 'success') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successfully registered!'),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Failed to register!'),
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Register'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

# Create a custom model according to the Django application project.

# Create a new file under the models/ folder in the subdirectory lib/ with the name product_entry.dart, fill it with this code
```
// To parse this JSON data, do
//
// final ProductEntry = ProductEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> ProductEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String product;
    DateTime time;
    String description;
    int ammount;

    Fields({
        required this.user,
        required this.product,
        required this.time,
        required this.description,
        required this.ammount,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        product: json["product"],
        time: DateTime.parse(json["time"]),
        description: json["feelings"],
        ammount: json["ammount"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "product": product,
        "time": "${time.year.toString().padLeft(4, '0')}-${time.month.toString().padLeft(2, '0')}-${time.day.toString().padLeft(2, '0')}",
        "description": description,
        "ammount": ammount,
    };
}
```

# Fetch Data from Django and Show Data in the Flutter App
# Run flutter pub add http in the Flutter project
# In the file android/app/src/main/AndroidManifest.xml, add this code to allow your Flutter app to access the internet.
```
...
<application>
...
</application>
<!-- Required to fetch data from the Internet. -->
<uses-permission android:name="android.permission.INTERNET" />
...
```

# Create a new file in the lib/screens directory with name list_productentry.dart and fill it with this code
```
import 'package:flutter/material.dart';
import 'package:dfootball/models/product_entry.dart';
import 'package:dfootball/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';


class ProductEntryPage extends StatefulWidget {
  const ProductEntryPage({super.key});

  @override
  State<ProductEntryPage> createState() => _ProductEntryPageState();
}

class _ProductEntryPageState extends State<ProductEntryPage> {
  Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
    // TODO: Don't forget to add the trailing slash (/) at the end of the URL!
    final response = await request.get('http://127.0.0.1:8000/json/');

    // Decoding the response into JSON
    var data = response;

    // Convert json data to a ProductEntry object
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(ProductEntry.fromJson(d));
      }
    }
    return listProduct;
  } // Removed the extra closing bracket here

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'There is no Product data in  DFootball.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${snapshot.data![index].fields.product}",
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.description}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.ammount}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.time}")
                    ],
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
```

# Create a detail page for each item listed on the Product list page.

# Create a new dart file named detail_product in lib/widgets/
Add the following code to the file
```
import 'package:flutter/material.dart';
import 'package:dfootball/models/product_entry.dart';

class ProductDetail extends StatelessWidget {
  final ProductEntry product;

  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.product),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.product,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text("Price: \$${product.fields.ammount}"),
            const SizedBox(height: 10),
            Text("Description: ${product.fields.description}"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Product List'),
            ),
          ],
        ),
      ),
    );
  }
}
```