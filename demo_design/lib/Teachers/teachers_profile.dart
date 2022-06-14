
import 'package:demo_design/appbar.dart';
import 'package:demo_design/drawer.dart';
import 'package:flutter/material.dart';

class Teachers_Profile extends StatefulWidget {
  const Teachers_Profile({Key? key}) : super(key: key);

  @override
  _Teachers_ProfileState createState() => _Teachers_ProfileState();
}

class _Teachers_ProfileState extends State<Teachers_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarItems(),
      drawer: const SideBar(),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            height: 150.0,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 233, 233, 233), width: 2.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          //maximumSize: Size(20,20),
                          minimumSize: const Size(55,30),
                          side: const BorderSide(
                              color: Color.fromARGB(255, 233, 233, 233),
                              width: 2.0) // Background color
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/teachers_homescreen");
                      },
                      child: const Icon(Icons.arrow_back_rounded,size:14.0,color: Colors.black,),
                    ),
                    const SizedBox(width: 15.0,),
                    const Text("Teacher's Profile",style: TextStyle(
                        fontSize: 15.0,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                const Text("Email : teachers@ais.ahm.com"),
                const SizedBox(height: 15.0,),
                const Text("Mobile : 9876543210"),
                const SizedBox(height: 15.0,),
                const Text("Phases : AIS JEE 12")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
