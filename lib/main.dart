import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/blocs/provider.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: "Food Delivery",
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
      blocs: [
        Bloc(
          (i) => CartProvider(),
        ),
      ],
      dependencies: [],
    );
  }
}
