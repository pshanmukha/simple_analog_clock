import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_analog_clock/Theme/theme.dart';
import 'package:simple_analog_clock/provider/theme_provider.dart';
import 'package:simple_analog_clock/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyThemeModel(),
      child: Consumer<MyThemeModel>(
        builder: (context, theme, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Simple Analog Clock',
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
