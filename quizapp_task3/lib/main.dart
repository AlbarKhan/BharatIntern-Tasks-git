import 'package:flutter/material.dart';
import 'package:quizapp_task3/widgets/quiz.dart';

ColorScheme kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 92, 13, 13),
);

ColorScheme kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 11, 41, 125),
);

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kDarkColorScheme.secondaryContainer.withOpacity(0.8),
          foregroundColor: kDarkColorScheme.primary.withOpacity(0.7),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.secondaryContainer,
            foregroundColor: kDarkColorScheme.primary.withOpacity(0.7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        cardTheme: const CardTheme().copyWith(
          elevation: 10,
          color: kDarkColorScheme.tertiaryContainer.withOpacity(1.0),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleSmall: TextStyle(
                fontSize: 16,
                color: kDarkColorScheme.secondary.withOpacity(0.9),
              ),
              titleMedium: TextStyle(color: kDarkColorScheme.inversePrimary),
              bodyLarge: TextStyle(
                fontSize: 16,
                color: kDarkColorScheme.onTertiaryContainer.withOpacity(0.5),
              ),
              bodyMedium: TextStyle(
                fontSize: 14,
                color: kDarkColorScheme.onTertiaryContainer.withOpacity(0.5),
              ),
            ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.primaryContainer,
          foregroundColor: kColorScheme.primary.withOpacity(0.7),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.secondaryContainer,
            foregroundColor: kColorScheme.primary.withOpacity(0.7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        cardTheme: const CardTheme().copyWith(
          elevation: 10,
          color: kColorScheme.tertiaryContainer.withOpacity(1.0),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleSmall: TextStyle(
                fontSize: 16,
                color: kColorScheme.secondary.withOpacity(0.9),
              ),
              bodyLarge: TextStyle(
                fontSize: 16,
                color: kColorScheme.onTertiaryContainer.withOpacity(0.5),
              ),
              bodyMedium: TextStyle(
                fontSize: 14,
                color: kColorScheme.onTertiaryContainer.withOpacity(0.5),
              ),
            ),
      ),
      home: const Quiz(),
      // themeMode: ThemeMode.dark,
    );
  }
}
