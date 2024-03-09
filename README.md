[![Download](https://img.shields.io/pub/v/provider.svg)](https://pub.dev/packages/provider)
[![GitHub stars](https://img.shields.io/github/stars/coar14/petshop.svg)](https://github.com/coar14/petshop/stargazers)

# Flutter Provider State Management Example

This repository demonstrates how to use the Provider package for state management in Flutter applications.

## Overview

Provider is a powerful and flexible state management solution for Flutter applications. It is designed to be simple yet scalable, making it suitable for both small and large projects.

## Getting Started

To use Provider in your Flutter project, follow these steps:

1. Add the `provider` package to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     provider: ^5.0.3
   ```
2. Create a data model class that `extends ChangeNotifier` This class will hold the application state:
   ```main.dart
   void main() {
     runApp(const MyApp());
   }
   class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Pet Shop Provider',
        debugShowCheckedModeBanner: false,
        initialRoute: '/', 
        routes: {
          '/': (context) => const StartPage(),
          '/cart': (context) => const CartScreen(),
          '/profile': (context) => Profile(),
          '/catalog': (context) => const CatalogScreen()
        },
      ),
    );
   }
   }
   ```
