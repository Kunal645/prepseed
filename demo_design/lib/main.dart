import 'package:demo_design/Student/homescreen.dart';
import 'package:demo_design/Student/profile.dart';
import 'package:demo_design/Teachers/teachers_homescreen.dart';
import 'package:demo_design/Teachers/teachers_profile.dart';
import 'package:demo_design/assessments/assessments_homescreen.dart';
import 'package:demo_design/attendance/attendance_homescreen.dart';
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: '/assessments_homescreen',
      routes: {
        '/': (context) => const Home(),
        '/profile' : (context) => const Profile(),
        '/teachers_homescreen' : (context) => const Teachers_Homescreen(),
        '/teachers_profile' : (context) => const Teachers_Profile(),
        '/attendance_homescreen' : (context) => const Attendance_Homescreen(),
        '/assessments_homescreen' : (context) => const AssessmentsHomeScreen(),
      //  '/attendance' : (context) => Attendance()
      },
    ));

