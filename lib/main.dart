import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_4/screens/doctor_list.dart';

void main() {
  Map<int, Color> color =
  {
    50: Color(0xff07da5f),
    100: Color(0xff07da5f),
    200: Color(0xff07da5f),
    300: Color(0xff07da5f),
    400: Color(0xff07da5f),
    500: Color(0xff07da5f),
    600: Color(0xff07da5f),
    700: Color(0xff07da5f),
    800: Color(0xff07da5f),
    900: Color(0xff07da5f),
  };
  MaterialColor primeColor = MaterialColor(0xff07da5f, color);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoctorList(),
      theme: ThemeData(
          primarySwatch: primeColor,
          appBarTheme: AppBarTheme(
              foregroundColor: Colors.white
          ),
      ),
    ),
  );
}
