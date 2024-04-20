import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wash_out/pages/cart.dart';
import 'package:wash_out/services/auth/auth_gate.dart';
import 'package:wash_out/firebase_options.dart';

import 'package:wash_out/themes/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Cart>(
          create: (_) => Cart(), // Here, we create an instance of Cart and provide it to the widget tree.
        ),
        ChangeNotifierProvider<ThemeProvider>(
          create: (_) => ThemeProvider(), // Here, we create an instance of ThemeProvider and provide it to the widget tree.
        ),
        // Add more providers if needed
      ],
      
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
