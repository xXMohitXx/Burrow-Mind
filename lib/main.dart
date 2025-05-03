import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:burrowmind/theme/app_theme.dart';
import 'package:burrowmind/screens/login_screen.dart';
import 'package:burrowmind/screens/register_screen.dart';
import 'package:burrowmind/screens/home_screen.dart';
import 'package:burrowmind/screens/chat_screen.dart';
import 'package:burrowmind/screens/time_capsule_screen.dart';
import 'package:burrowmind/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BurrowMind',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/chat': (context) => const ChatScreen(),
        '/time-capsule': (context) => const TimeCapsuleScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
