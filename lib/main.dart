import 'package:crypto_events/pages/event_page.dart';
import 'package:crypto_events/pages/navbar.dart';
import 'package:flutter/material.dart';

// ThemeData theme = ThemeData();
var kColorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFFFFFFFF),
    background: const Color(0xFFFFFFFF),
    primaryContainer: const Color(0xFF111015),
    secondaryContainer: const Color(0xAAF4F4F4));

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        // cardTheme: const CardTheme().copyWith(),
        scaffoldBackgroundColor: kColorScheme.background,
      ),
      debugShowCheckedModeBanner: false,
      home: const NavBar(),
      routes: {
        EventPage.routeName: (context) => const EventPage(),
      },
    );
  }
}
//fontFamily: GoogleFonts.raleway().fontFamily