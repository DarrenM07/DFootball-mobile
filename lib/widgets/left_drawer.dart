import 'package:flutter/material.dart';
import 'package:dfootball/screens/menu.dart';
import 'package:dfootball/screens/productentry_form.dart';
import 'package:dfootball/screens/list_productentry.dart';
// TODO: Import ProductEntryFormPage if it has already been created

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'DFootball',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Track your product every day here!",
                  // TODO: Add text style with center alignment, font size 15, white color, and normal weight
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          // Routing section
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home Page'),
            // Redirection part to MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.mood),
            title: const Text('Add Product'),
            // Redirection part to ProductEntryFormPage
            onTap: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductEntryFormPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('Mood List'),
            onTap: () {
                // Route to the mood page
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                );
            },
        ),
        ],
      ),
    );
  }
}

