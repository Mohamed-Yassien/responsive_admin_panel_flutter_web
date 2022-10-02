import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard/controllers/MenuController.dart';
import 'package:responsive_dashboard/screens/home_screen.dart';
import 'package:responsive_dashboard/shared/constants.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(
          scaffoldBackgroundColor: bgColor,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
