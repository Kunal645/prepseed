import 'package:demo_design/appbar.dart';
import 'package:demo_design/drawer.dart';
import 'package:flutter/material.dart';

class Attendance_Homescreen extends StatefulWidget {
  const Attendance_Homescreen({Key? key}) : super(key: key);

  @override
  _Attendance_HomescreenState createState() => _Attendance_HomescreenState();
}

class _Attendance_HomescreenState extends State<Attendance_Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarItems(),
      drawer: const SideBar(),
      body: ListView(
        shrinkWrap: true,
        children: [
          /*IconButton(
            alignment: Alignment.bottomLeft,
            icon: Icon(Icons.view_headline_rounded),
            onPressed: () {},
          ),*/
          /* Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Good Morning"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40.0,
                    width: 150.0,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 1.0),
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.2, color: Colors.black26),
                        borderRadius: BorderRadius.all(Radius.circular(9.0)),
                      ),
                    ),
                    child: DropdownButton2(
                      hint: Text("AIS JEE 12"),
                      value: categories,
                      underline: Container(),
                      // /  offset: const Offset(-5, -10),
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      isExpanded: true,
                      onChanged: (String? val) {
                        setState(() {
                          categories = val;
                        });
                      },
                      items: catData.map((String value) {
                        print(catData);
                        return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Icon(Icons.notifications),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(Icons.save)
                ],
              ),
            ],
          ),*/

          Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Attendance",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          //maximumSize: Size(20,20),
                          minimumSize: const Size(55, 30),
                          side: const BorderSide(
                              color: Color.fromARGB(255, 233, 233, 233),
                              width: 2.0) // Background color
                          ),
                      onPressed: () {
                        //Navigator.pushNamed(context, "/");
                      },
                      child: const Text(
                        "Refresh",
                        style: TextStyle(color: Colors.black, fontSize: 10.0),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(
                        Icons.add,
                        size: 20.0,
                      ),
                      label: const Text(
                        'Mark Attendance',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      onPressed: () {
                        print('Button Pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(55, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            height: 20.0,
            thickness: 2.0,
            color: Color.fromARGB(255, 233, 233, 233),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text("Physics"),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(
            height: 20.0,
            thickness: 2.0,
            color: Color.fromARGB(255, 233, 233, 233),
          ),
          Container(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "21 May",
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                  const Text("Physics",
                                      style: TextStyle(fontSize: 13.0),
                                      overflow: TextOverflow.ellipsis),
                                  TextButton.icon(
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                      size: 13.0,
                                    ),
                                    label: const Text(
                                      "Update",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13.0),
                                    ),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                              Tooltip(
                                message: "Sick Leave",
                                height: 20.0,
                                //verticalOffset: 48,
                                child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "-9",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "P",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                    height: 45.0,
                                    width: 45.0,
                                    decoration: BoxDecoration(
                                        color:
                                            const Color.fromARGB(255, 144, 238, 144),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 233, 233, 233),
                                            width: 2.0),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0)))),
                              ),
                              Tooltip(
                                message: "Sick Leave",
                                height: 20.0,
                                //verticalOffset: 48,
                                child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "0",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "A",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                    height: 45.0,
                                    width: 45.0,
                                    decoration: BoxDecoration(
                                        color:
                                        const Color.fromARGB(255, 240, 128, 128),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 233, 233, 233),
                                            width: 2.0),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0)))),
                              ),
                              Tooltip(
                                message: "Sick Leave",
                                height: 20.0,
                                //verticalOffset: 48,
                                child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "0",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "L",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                    height: 45.0,
                                    width: 45.0,
                                    decoration: BoxDecoration(
                                        color:
                                        const Color.fromARGB(255, 255, 160, 122),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 233, 233, 233),
                                            width: 2.0),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0)))),
                              ),
                              Tooltip(
                                message: "Sick Leave",
                                height: 20.0,
                                //verticalOffset: 48,
                                child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "0",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "LP",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                    height: 45.0,
                                    width: 45.0,
                                    decoration: BoxDecoration(
                                        color:
                                        const Color.fromARGB(255, 173, 216, 230),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 233, 233, 233),
                                            width: 2.0),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0)))),
                              ),
                              Tooltip(
                                message: "Sick Leave",
                                height: 20.0,
                                //verticalOffset: 48,
                                child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "0",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "CL",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                    height: 45.0,
                                    width: 45.0,
                                    decoration: BoxDecoration(
                                        color:
                                        const Color.fromARGB(255, 211, 211, 211),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 233, 233, 233),
                                            width: 2.0),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0)))),
                              ),
                              Tooltip(
                                message: "Sick Leave",
                                height: 20.0,
                                //verticalOffset: 48,
                                child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "0",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "SL",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                    height: 45.0,
                                    width: 45.0,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 224, 229, 255),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 233, 233, 233),
                                            width: 2.0),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0)))),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                        ),
                        const Divider(
                          height: 20.0,
                          thickness: 2.0,
                          color: Color.fromARGB(255, 233, 233, 233),
                        ),
                      ],
                    );
                  }),
              margin: const EdgeInsets.all(10.0),
              height: 420.0,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 233, 233, 233), width: 2.0),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)))),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 15.0,
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        //maximumSize: Size(20,20),
                        minimumSize: const Size(30, 30),
                        side: const BorderSide(
                            color: Colors.blueAccent,
                            width: 2.0) // Background color
                        ),
                    onPressed: () {},
                    child: const Text(
                      "1",
                      style: TextStyle(color: Colors.black, fontSize: 10.0),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15.0,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
