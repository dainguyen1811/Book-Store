import 'package:book_store/models/theme_constants.dart';
import 'package:book_store/models/theme_manager.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bottom_nav_bar/bottom_custom.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  await _themeManager.loadThemeMode(); 
  runApp(
    ChangeNotifierProvider(
      create: (context) => _themeManager,
      child: const MyApp(),
    ),
  );
}


ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      // themeMode: Provider.of<ThemeManager>(context).themeMode,
      debugShowCheckedModeBanner: false,
      home: BottomCustom(),
    );
  }
}

// class MyHomeScreen extends StatefulWidget {
//   const MyHomeScreen({super.key});

//   @override
//   State<MyHomeScreen> createState() => _MyHomeScreenState();
// }

// class _MyHomeScreenState extends State<MyHomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           Switch(
//             value: _themeManager.themeMode == ThemeMode.dark,
//             onChanged: (value) {
//               setState(() {
//                 _themeManager.toggleTheme(value); 
//               });
//             },
//           ),
//         ],
//       ),
//       body: const BottomCustom(),
//     );
//   }
// }
