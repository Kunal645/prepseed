import 'package:demo_design/appbar.dart';
import 'package:demo_design/chart/questionseries.dart';
import 'package:demo_design/drawer.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<QuestionSeries> data = [
    QuestionSeries(month: 1, question: ""),
    QuestionSeries(month: 2, question: ""),
    QuestionSeries(month: 3, question: ""),
    QuestionSeries(month: 4, question: ""),
    QuestionSeries(month: 1, question: ""),
    QuestionSeries(month: 1, question: ""),
  ];

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
            height: 130.0,
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
                              borderRadius: BorderRadius.circular(10.0)),
                          //maximumSize: Size(20,20),
                          minimumSize: const Size(55, 30),
                          side: const BorderSide(
                              color: Color.fromARGB(255, 233, 233, 233),
                              width: 2.0) // Background color
                          ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/");
                      },
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        size: 14.0,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    const Text(
                      "X's Profile",
                      style: TextStyle(fontSize: 15.0),
                    )
                  ],
                ),
                const Text("Email : student15@ais.ahm.com"),
                const Text("Mobile : 9876543210"),
                const Text("Phases : AIS JEE 12")
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            height: 450.0,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 233, 233, 233), width: 2.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Grades",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 40.0,
                        width: 120.0,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: const TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 233, 233, 233),
                                  width: 2.0),
                            ),
                            prefixIcon: Icon(Icons.search, size: 15.0),
                            hintText: 'Search',
                            hintStyle:
                                TextStyle(color: Colors.black, fontSize: 12.0),
                            contentPadding: EdgeInsets.all(5.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(10.0),
                ),
                const Divider(
                  height: 20.0,
                  thickness: 2.0,
                  color: Color.fromARGB(255, 233, 233, 233),
                ),
                Container(
                  child: const Text("X has not given any exams in selected duration"),
                  padding: const EdgeInsets.all(10.0),
                ),
                SfCartesianChart(
                  title: ChartTitle(
                    text: "X's Overall Average"
                  ),
                  series: <ChartSeries>[
                    BarSeries<QuestionSeries,String>(
                      dataSource: [
                        QuestionSeries(month: 0, question: "Marks"),
                        QuestionSeries(month: 0, question: "Marks Gained"),
                        QuestionSeries(month: 0, question: "Marks Lost"),
                        QuestionSeries(month: 0, question: "Question Attempted"),
                        QuestionSeries(month: 0, question: "Correct Question"),
                        QuestionSeries(month: 0, question: "Incorrect Question"),
                        QuestionSeries(month: 0, question: "Question UnAttempted"),
                        QuestionSeries(month: 0, question: "Total Question"),
                      ],
                      xValueMapper: (QuestionSeries data,_) => data.question,
                      yValueMapper: (QuestionSeries data,_) => data.month,
                    )
                    ],
                  primaryXAxis: CategoryAxis(),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            height: 130.0,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 233, 233, 233), width: 2.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: const [
                      Text(
                        "Purchased Plan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(10.0),
                ),
                const Divider(
                  height: 20.0,
                  thickness: 2.0,
                  color: Color.fromARGB(255, 233, 233, 233),
                ),
                Container(
                  child: const Text("You have not purchased any plans."),
                  padding: const EdgeInsets.all(10.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
