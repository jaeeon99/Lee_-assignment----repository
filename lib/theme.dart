import 'package:flutter/material.dart';

final lightTheme = ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.pinkAccent, brightness: Brightness.light),
        dividerColor: Colors.black38,
        highlightColor: Colors.pinkAccent,
        sliderTheme: SliderThemeData(
          thumbColor: Colors.pinkAccent,
          activeTickMarkColor: Colors.black38,
          inactiveTickMarkColor: Colors.black38,
          trackHeight: 1,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
            backgroundColor: WidgetStatePropertyAll(Colors.pinkAccent),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
            side: WidgetStatePropertyAll(
              BorderSide(color: Colors.black38),
            ),
            foregroundColor: WidgetStatePropertyAll(Colors.black),
          ),
        ),
      );


      final darkTheme = ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.pinkAccent, brightness: Brightness.dark),
        dividerColor: Colors.white38,
        highlightColor: Colors.pinkAccent,
        sliderTheme: SliderThemeData(
          thumbColor: Colors.pinkAccent,
          activeTickMarkColor: Colors.white30,
          inactiveTickMarkColor: Colors.white30,
          trackHeight: 1,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
            backgroundColor: WidgetStatePropertyAll(Colors.pinkAccent),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
            side: WidgetStatePropertyAll(
              BorderSide(color: Colors.white),
            ),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
          ),
        ),
      );