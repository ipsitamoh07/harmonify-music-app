import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmonify1/audio_helper/page_manager.dart';
import 'package:harmonify1/audio_helper/service_locator.dart';
import 'package:harmonify1/common/colors.dart';
import 'package:harmonify1/view/splash_view.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

@override
  void initState() {
    getIt<PageManager>().init();
    super.initState();
  }

  @override
  void dispose() {
    getIt<PageManager>().dispose();
    super.dispose();
  }

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
