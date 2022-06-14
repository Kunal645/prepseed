import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        shrinkWrap: true,
        children: [
          Image(
            image: AssetImage("assets/icon.jpg"),
            width: 50.0,
            height: 60.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                TextButton(
                  onPressed: (){},
                  child: Text("Dashboard",style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                ),
               Container(
                 width: 140.0,
                 child: Divider(
                  height: 20.0,
                  thickness: 2.0,
                  color: Color.fromARGB(255, 233, 233, 233),
              ),
               ),
            ],
          ),
          TextButton.icon(
              onPressed: (){},
              icon: Icon(Icons.widgets_outlined,color: Colors.black,),
              label: Text("Home",style: TextStyle(
                color: Colors.black
              ),)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (){},
                child: Text("Admin",style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              ),
              Container(
                width: 140.0,
                child: Divider(
                  height: 20.0,
                  thickness: 2.0,
                  color: Color.fromARGB(255, 233, 233, 233),
                ),
              ),
            ],
          ),
          Container(

            padding: EdgeInsets.symmetric(horizontal: 20.0),
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(Icons.approval,color: Colors.black,),
                label: const Text(
                  "Students",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          Container(

            padding: EdgeInsets.symmetric(horizontal: 20.0),
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/teachers_homescreen');
                },
                label: const Text(
                  "Teachers",
                  style: TextStyle(color: Colors.black),
                ),
              icon: Icon(Icons.approval,color: Colors.black,),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/attendance_homescreen');
                },
                label: const Text(
                  "Attendance",
                  style: TextStyle(color: Colors.black),
                ), icon: Icon(Icons.app_registration,color: Colors.black,),

            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/assessments_homescreen');
              },
              label: const Text(
                "Assessments",
                style: TextStyle(color: Colors.black),
              ), icon: Icon(Icons.app_registration,color: Colors.black,),

            ),
          ),
        ],
      ),
    );
  }
}
