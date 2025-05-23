import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/cart_provider.dart';
import 'screens/product_list_screen.dart';
import 'screens/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => CartProvider(),
      child: MaterialApp(
        title: 'Shopping Cart',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xFFF0F8FF), // Alice Blue
          colorScheme: ColorScheme.light(
            primary: const Color(0xFF4682B4), // Steel Blue
            secondary: const Color(0xFF87CEEB), // Sky Blue
            surface: Colors.white,
            background: const Color(0xFFF0F8FF), // Alice Blue
          ),
          cardTheme: CardTheme(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: Colors.white,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4682B4), // Steel Blue
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF4682B4), // Steel Blue
            foregroundColor: Colors.white,
            elevation: 0,
          ),
        ),
        home: ProductListScreen(),
        routes: {
          '/cart': (ctx) => const CartScreen(),
        },
      ),
    );
  }
}
