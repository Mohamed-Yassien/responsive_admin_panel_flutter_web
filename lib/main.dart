import 'package:flutter/material.dart';
import 'package:responsive_dashboard/screens/home_screen.dart';
import 'package:responsive_dashboard/shared/constants.dart';

main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: bgColor,
      ),
      home: const HomeScreen(),
    );
  }
}
