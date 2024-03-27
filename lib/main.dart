import 'package:flutter/material.dart';

// 该库可以锁定屏幕方向
// import 'package:flutter/services.dart';

import 'package:expense_tracker/widget/expenses.dart';

// 一般变量前面加上 k 代表在设置全局变量
var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(155, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {

  // 下列被注释的代码可以固定屏幕的方向
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then(
  //   (fh) {
      runApp(
        MaterialApp(
          darkTheme: ThemeData.dark().copyWith(
            colorScheme: kDarkColorScheme,
            cardTheme: const CardTheme().copyWith(
              color: kDarkColorScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: kDarkColorScheme.primaryContainer,
                foregroundColor: kDarkColorScheme.onSecondaryContainer,
              ),
            ),
          ),
          theme: ThemeData().copyWith(
            colorScheme: kColorScheme,
            appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kColorScheme.onPrimaryContainer,
              foregroundColor: kColorScheme.primaryContainer,
            ),
            cardTheme: const CardTheme().copyWith(
              color: kColorScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: kColorScheme.primaryContainer,
              ),
            ),
            textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kColorScheme.onSecondaryContainer,
                    fontSize: 16,
                  ),
                ),
          ),
          // themeMode: ThemeMode.system,
          home: const Expenses(),
        ),
      );
    // },
  // );
}
