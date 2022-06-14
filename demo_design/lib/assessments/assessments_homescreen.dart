import 'dart:ui';

import 'package:demo_design/appbar.dart';
import 'package:demo_design/drawer.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';

class AssessmentsHomeScreen extends StatefulWidget {
  const AssessmentsHomeScreen({Key? key}) : super(key: key);

  @override
  _AssessmentsHomeScreenState createState() => _AssessmentsHomeScreenState();
}

class _AssessmentsHomeScreenState extends State<AssessmentsHomeScreen> {
  List<String> catData = <String>[
    "AIS JEE 12",
    "AIS NEET 12",
    "AIS JEE 11",
    "AIS NEET 11"
  ];

  String? categories;

  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();

  DateTime? selectDateOne;
  DateTime? selectDateSecond;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarItems(),
      drawer: const SideBar(),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 30.0,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              "Assessments",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            height: 20.0,
            thickness: 2.0,
            color: Color.fromARGB(255, 233, 233, 233),
          ),
          Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Create new Assessments",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  const Divider(
                    height: 10.0,
                    thickness: 2.0,
                    color: Color.fromARGB(255, 233, 233, 233),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          //maximumSize: Size(20,20),
                          minimumSize: const Size(40, 30),
                          // Background color
                        ),
                        onPressed: () {},
                        child: const Text("Create New")),
                  ),
                ],
              ),
              margin: const EdgeInsets.all(10.0),
              height: 140.0,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 233, 233, 233),
                      width: 2.0),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)))),
          Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Drafts",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              //maximumSize: Size(20,20),
                              minimumSize: const Size(40, 30),
                              // Background color
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  content: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                          },
                                          child: const Text("Ok"))
                                    ],
                                  ),
                                  title: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 40.0,
                                        width: 160.0,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10.0),
                                              ),
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 233, 233, 233),
                                                  width: 2.0),
                                            ),
                                            hintText: 'Search by draft name',
                                            hintStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 121, 115, 109),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold),
                                            contentPadding:
                                                EdgeInsets.all(20.0),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Super Group : ",
                                            style: TextStyle(fontSize: 13.0),
                                          ),
                                          Container(
                                            height: 35.0,
                                            width: 140.0,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0),
                                            decoration: const ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 1.2,
                                                    color: Colors.black26),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(9.0)),
                                              ),
                                            ),
                                            child: DropdownButton2(
                                              hint: const Text(
                                                "AIS JEE 12",
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              value: categories,
                                              underline: Container(),
                                              // /  offset: const Offset(-5, -10),
                                              dropdownDecoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                              ),
                                              isExpanded: true,
                                              onChanged: (String? val) {
                                                setState(() {
                                                  categories = val;
                                                });
                                              },
                                              items:
                                                  catData.map((String value) {
                                                return DropdownMenuItem(
                                                  value: value,
                                                  child: Text(
                                                    value,
                                                    style: const TextStyle(
                                                        fontSize: 10.0,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Created on or After : ",
                                            style: TextStyle(fontSize: 13.0),
                                          ),
                                          SizedBox(
                                            height: 35.0,
                                            width: 140.0,
                                            child: TextField(
                                              controller: firstController,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10.0),
                                              onTap: () {
                                                showDateOne(context);
                                                FocusScope.of(context)
                                                    .requestFocus(FocusNode());
                                              },
                                              autofocus: false,
                                              decoration: const InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(10.0),
                                                  ),
                                                  borderSide: BorderSide(
                                                      color: Color.fromARGB(
                                                          255, 233, 233, 233),
                                                      width: 2.0),
                                                ),
                                                hintText: 'Select Date',
                                                hintStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 121, 115, 109),
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 10.0,
                                                        horizontal: 10.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Created on or Before : ",
                                            style: TextStyle(fontSize: 13.0),
                                          ),
                                          SizedBox(
                                            height: 35.0,
                                            width: 140.0,
                                            child: TextField(
                                              controller: secondController,
                                              onTap: () {
                                                showDateTwo(context);
                                                FocusScope.of(context)
                                                    .requestFocus(FocusNode());
                                              },
                                              style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.bold),
                                              autofocus: false,
                                              decoration: const InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(10.0),
                                                  ),
                                                  borderSide: BorderSide(
                                                      color: Color.fromARGB(
                                                          255, 233, 233, 233),
                                                      width: 2.0),
                                                ),
                                                hintText: 'Select Date',
                                                hintStyle: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 121, 115, 109),
                                                    fontSize: 10.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 10.0,
                                                        horizontal: 10.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: const Text("Filter")),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 10.0,
                    thickness: 2.0,
                    color: Color.fromARGB(255, 233, 233, 233),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    child: Table(
                      columnWidths: {
                        0: FixedColumnWidth(100),
                      },
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(children: [
                          Text('Action',
                          textAlign: TextAlign.center,
                          ),
                          Text('Name', textAlign: TextAlign.center,),
                          Text('Duration', textAlign: TextAlign.center,),
                          Text("Sections", textAlign: TextAlign.center,)
                        ]),
                        TableRow(
                            children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(onPressed: (){}, icon:Icon(Icons.add)),
                              IconButton(onPressed: (){}, icon:Icon(Icons.add)),
                            ],
                          ),
                          Text('JEE STD 12', textAlign: TextAlign.center,),
                          Text('10800', textAlign: TextAlign.center,),
                          Text('1', textAlign: TextAlign.center,)
                        ]),

                      ],
                    ),
                  )
                ],
              ),
              margin: const EdgeInsets.all(10.0),
              height: 300.0,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 233, 233, 233),
                      width: 2.0),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)))
          ),
          Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Published",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                   Divider(
                    height: 10.0,
                    thickness: 2.0,
                    color: Color.fromARGB(255, 233, 233, 233),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Published Assessment List",
                      style: TextStyle(
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ],
              ),
              margin: const EdgeInsets.all(10.0),
              height: 130.0,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 233, 233, 233),
                      width: 2.0),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)))
          ),
        ],
      ),
    );
  }

  DateFormat format = DateFormat('dd/MM/yyyy');

  showDateOne(BuildContext context) async {
    DateTime? newSelectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2019, 1),
        lastDate: DateTime.now());
    if (newSelectedDate != null) {
      print(newSelectedDate);

      selectDateOne = newSelectedDate;
      firstController.text = format.format(selectDateOne!);
    }
  }

  showDateTwo(BuildContext context) async {
    DateTime? newSelectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2019, 1),
        lastDate: DateTime.now());
    if (newSelectedDate != null) {
      print(newSelectedDate);
      selectDateSecond = newSelectedDate;
      secondController.text = format.format(selectDateSecond!);
    }
  }
}
