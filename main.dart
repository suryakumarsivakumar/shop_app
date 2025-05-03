import 'package:flutter/material.dart';
import 'package:shop_app_flutter/cart_provider.dart';
//import 'package:shop_app_flutter/global_variables.dart';
import 'package:shop_app_flutter/home_page.dart';
//import 'package:shop_app_flutter/product_details_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),

      child: MaterialApp(
        title: 'shop app',
        debugShowCheckedModeBanner: false,

        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromRGBO(254, 206, 1, 1),
            primary: Color.fromRGBO(254, 206, 1, 1),
          ),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          ),
          textTheme: const TextTheme(
            titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),

            bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),

            titleLarge: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          useMaterial3: true,
        ),
        home: HomePage(),
      ),
    );
  }
}
