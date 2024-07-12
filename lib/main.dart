import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmonify1/common/colors.dart';
import 'package:harmonify1/view/splash_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Harmonify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Chilight",
        scaffoldBackgroundColor: TColor.bg,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: TColor.primaryText,
          displayColor: TColor.primaryText,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary,
        ),
        useMaterial3: false,
      ),
      home: const SplashView(),
    );
  }
}
