import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main () => runApp(MaterialApp(
  home: const MyApp(),
  title: 'Lotta Travel App',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: const Color(0xFF3EBACE),
    accentColor: const Color(0xFFD8ECF1),
    //scaffoldBackgroundColor: const Color(0xfdae5f1)
  ),
));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
