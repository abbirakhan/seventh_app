import 'package:flutter/material.dart';
//import 'package:seventh_app/pages/personal_info.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:seventh_app/pages/personal_info.dart';
//import 'package:seventh_app/pages/personal_check.dart';
import 'package:seventh_app/pages/personal_both.dart';
//import 'package:seventh_app/pages/personal_check.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 821),
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.nunitoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: const PersonalInfo(),
      ),
    );
  }
}
