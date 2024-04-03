
import 'package:flutter/material.dart';
import 'package:saintmartine_design/Screens/Counter_App.dart';
import 'package:saintmartine_design/Screens/List_view.dart';

import 'Screens/HomePage.dart';
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      home: CounterApp(),
    );
  }
}


