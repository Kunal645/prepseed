import 'package:demo_design/drawer.dart';
import 'package:flutter/material.dart';

import '../appbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> catData = <String>[
    "AIS JEE 12",
    "AIS NEET 12",
    "AIS JEE 11",
    "AIS NEET 11"
  ];
  String? categories;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const AppBarItems(),
      drawer: const SideBar(),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              "Good Morning",
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("User"),
                ElevatedButton.icon(
                  icon: const Icon(
                    Icons.add,
                    size: 30.0,
                  ),
                  label: const Text('Add Student'),
                  onPressed: () {
                    print('Button Pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            height: 20.0,
            thickness: 2.0,
            color: Color.fromARGB(255, 233, 233, 233),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            height: 40.0,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 233, 233, 233), width: 2.0),
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                    color: Color.fromARGB(255, 121, 115, 109), fontSize: 15.0),
                contentPadding: EdgeInsets.all(10.0),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
              padding: const EdgeInsets.all(10.0), child: const Text("Total 6 Students")),
          Container(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              /*Image(
                              image: AssetImage("assets/icon.jpg"),
                              height: 40.0,
                              width: 40.0,
                              fit: BoxFit.contain,
                            ),*/
                              const Divider(
                                height: 20.0,
                                thickness: 2.0,
                                color: Color.fromARGB(255, 233, 233, 233),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("X(student15)",textAlign: TextAlign.left,style: TextStyle(fontSize: 15.0),),
                                  const Text("student15@ais.ahm.com",style: TextStyle(fontSize: 15.0),overflow: TextOverflow.ellipsis),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              side: const BorderSide(
                                                  color: Color.fromARGB(255, 233, 233, 233),
                                                  width: 2.0) // Background color
                                          ),
                                          onPressed: () {
                                            Navigator.pushNamed(context, '/profile');
                                          },
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: const [
                                              Icon(Icons.visibility_outlined,color: Colors.black,size: 10.0,),
                                              SizedBox(width: 5,),
                                              Text("Preview",style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10.0
                                              ),)
                                            ],
                                          )),
                                      const SizedBox(width: 10.0,),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              side: const BorderSide(
                                                  color: Color.fromARGB(255, 233, 233, 233),
                                                  width: 2.0) // Background color
                                          ),
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                title: const Text("X's Attendance"),
                                                content: SizedBox(
                                                  height: 150.0,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const Divider(
                                                        height: 20.0,
                                                        thickness: 2.0,
                                                        color: Color.fromARGB(255, 233, 233, 233),
                                                      ),
                                                      const Text("Physics",style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15.0
                                                      ),),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      const Text("Not Enough Data",style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 10.0
                                                      ),),
                                                      const Divider(
                                                        height: 20.0,
                                                        thickness: 2.0,
                                                        color: Color.fromARGB(255, 233, 233, 233),
                                                      ),
                                                      const SizedBox(
                                                        height: 15.0,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [

                                                          ElevatedButton(onPressed: (){
                                                            Navigator.of(ctx).pop();
                                                          }, child: const Text("Ok"))
                                                        ],
                                                      )

                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                            print("hee");
                                           // Navigator.pushNamed(context, "/attendance");
                                          },
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Icon(Icons.visibility_outlined,color: Colors.black,size: 10.0,),
                                              SizedBox(width: 5.0,),
                                              Text("Attendance",style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10.0
                                              ),)
                                            ],
                                          )),
                                      const SizedBox(width: 10.0,),

                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              side: const BorderSide(
                                                  color: Color.fromARGB(255, 233, 233, 233),
                                                  width: 2.0) // Background color
                                          ),
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                title: const Text("X's Grades"),
                                                content: SizedBox(
                                                  height: 150.0,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const Divider(
                                                        height: 20.0,
                                                        thickness: 2.0,
                                                        color: Color.fromARGB(255, 233, 233, 233),
                                                      ),
                                                      const Text("Student hasn't given any assessment",style: TextStyle(
                                                          fontSize: 10.0
                                                      ),),
                                                      const Divider(
                                                        height: 20.0,
                                                        thickness: 2.0,
                                                        color: Color.fromARGB(255, 233, 233, 233),
                                                      ),
                                                      const SizedBox(
                                                        height: 15.0,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          ElevatedButton(onPressed: (){
                                                            Navigator.of(ctx).pop();
                                                          }, child: const Text("Ok"))
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: const [
                                              Icon(Icons.visibility_outlined,color: Colors.black,size: 10.0,),
                                              SizedBox(width: 5.0,),
                                              Text("Grades",style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10.0
                                              ),)
                                            ],
                                          )),
                                      const SizedBox(width: 10.0,),

                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              side: const BorderSide(
                                                  color: Color.fromARGB(255, 233, 233, 233),
                                                  width: 2.0) // Background color
                                          ),
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                /*title:*/ /*Row(
                                                  children: [
                                                    ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          primary: Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10.0)
                                                          ),
                                                          //maximumSize: Size(20,20),
                                                          minimumSize: Size(50,25),
                                                          side: BorderSide(
                                                              color: Color.fromARGB(255, 233, 233, 233),
                                                              width: 1.0) // Background color
                                                      ),
                                                      onPressed: () {
                                                        Navigator.pushNamed(context, "/");
                                                      },
                                                      child: Icon(Icons.arrow_back_rounded,size:12.0,color: Colors.black,),
                                                    ),
                                                    SizedBox(width: 15.0,),
                                                    Text("X's Report",style: TextStyle(
                                                        fontSize: 13.0
                                                    ),)
                                                  ],
                                                ),*/
                                                content: SizedBox(
                                                  height: 250.0,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
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
                                                                minimumSize: const Size(50,25),
                                                                side: const BorderSide(
                                                                    color: Color.fromARGB(255, 233, 233, 233),
                                                                    width: 1.0) // Background color
                                                            ),
                                                            onPressed: () {
                                                              Navigator.pushNamed(context, "/");
                                                            },
                                                            child: const Icon(Icons.arrow_back_rounded,size:12.0,color: Colors.black,),
                                                          ),
                                                          const SizedBox(width: 15.0,),
                                                          const Text("X's Report",style: TextStyle(
                                                              fontSize: 13.0
                                                          ),)
                                                        ],
                                                      ),
                                                      const Divider(
                                                        height: 20.0,
                                                        thickness: 2.0,
                                                        color: Color.fromARGB(255, 233, 233, 233),
                                                      ),
                                                      const Text("You have not attempted any live assessments yet.",style: TextStyle(
                                                          fontSize: 10.0
                                                      ),),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      const Text("Attempted some assessments and come back.",style: TextStyle(
                                                          fontSize: 10.0
                                                      ),),
                                                      const SizedBox(height: 10.0,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          ElevatedButton(
                                                            style: ElevatedButton.styleFrom(
                                                                primary: Colors.blue,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(10.0)
                                                                ),
                                                                //maximumSize: Size(20,20),
                                                                minimumSize: const Size(55,30),
                                                               // Background color
                                                            ),
                                                            onPressed: () {
                                                              //Navigator.pushNamed(context, "/");
                                                            },
                                                            child: const Text("Go to assessments",style: TextStyle(color: Colors.white,fontSize: 10.0),),
                                                          ),
                                                          const SizedBox(width: 10.0,),

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
                                                              //Navigator.pushNamed(context, "/");
                                                            },
                                                            child: const Text("Refresh",style: TextStyle(color: Colors.black,fontSize: 10.0),),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 15.0,
                                                      ),
                                                      const Divider(
                                                        height: 20.0,
                                                        thickness: 2.0,
                                                        color: Color.fromARGB(255, 233, 233, 233),
                                                      ),

                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          ElevatedButton(onPressed: (){
                                                            Navigator.of(ctx).pop();
                                                          }, child: const Text("Ok"))
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );

                                          },
                                          child: Row(
                                            children: const [
                                              Icon(Icons.visibility_outlined,color: Colors.black,size: 10.0,),
                                              SizedBox(width: 5.0,),
                                              Text("Report",style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10.0
                                              ),)
                                            ],
                                          )),

                                    ],
                                  ),
                                ],
                              ),
                              /*ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    side: BorderSide(
                                        color: Color.fromARGB(255, 233, 233, 233),
                                        width: 2.0) // Background color
                                    ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                    Text("Preview",style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8.0
                                    ),)
                                  ],
                                )),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    side: BorderSide(
                                        color: Color.fromARGB(255, 233, 233, 233),
                                        width: 2.0) // Background color
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                    Text("Attendance",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 8.0
                                    ),)
                                  ],
                                )),

                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    side: BorderSide(
                                        color: Color.fromARGB(255, 233, 233, 233),
                                        width: 2.0) // Background color
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                    Text("Grades",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 8.0
                                    ),)
                                  ],
                                )),

                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    side: BorderSide(
                                        color: Color.fromARGB(255, 233, 233, 233),
                                        width: 2.0) // Background color
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                    Text("Report",style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 8.0
                                    ),)
                                  ],
                                )),
*/                    ],
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
              /*children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        *//*Image(
                          image: AssetImage("assets/icon.jpg"),
                          height: 40.0,
                          width: 40.0,
                          fit: BoxFit.contain,
                        ),*/
              /*
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("X(student15)",textAlign: TextAlign.left,style: TextStyle(fontSize: 15.0),),
                            Text("student15@ais.ahm.com",style: TextStyle(fontSize: 15.0),overflow: TextOverflow.ellipsis),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 10.0,),
                                        SizedBox(width: 5,),
                                        Text("Preview",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 10.0,),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 10.0,),
                                        SizedBox(width: 5.0,),
                                        Text("Attendance",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 10.0,),

                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 10.0,),
                                        SizedBox(width: 5.0,),
                                        Text("Grades",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 10.0,),

                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 10.0,),
                                        SizedBox(width: 5.0,),
                                        Text("Report",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10.0
                                        ),)
                                      ],
                                    )),

                              ],
                            ),
                          ],
                        ),

                        *//*ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                                ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Preview",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8.0
                                ),)
                              ],
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Attendance",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Grades",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Report",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),
*/
/*                    ],
                    ),
                  ),

                  Divider(
                    height: 20.0,
                    thickness: 2.0,
                    color: Color.fromARGB(255, 233, 233, 233),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        *//*Image(
                          image: AssetImage("assets/icon.jpg"),
                          height: 40.0,
                          width: 40.0,
                          fit: BoxFit.contain,
                        ),*/
              /*
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("X(student15)",textAlign: TextAlign.left,style: TextStyle(fontSize: 10.0),),
                                    Text("student15@ais.ahm.com",style: TextStyle(fontSize: 10.0),overflow: TextOverflow.ellipsis),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Preview",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Attendance",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),

                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Grades",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),

                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Report",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),

                              ],
                            ),
                          ],
                        ),

                        */
              /*ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                                ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Preview",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8.0
                                ),)
                              ],
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Attendance",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Grades",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Report",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),
*/
/*                    ],
                    ),
                  ),

                  Divider(
                    height: 20.0,
                    thickness: 2.0,
                    color: Color.fromARGB(255, 233, 233, 233),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        */
              /*Image(
                          image: AssetImage("assets/icon.jpg"),
                          height: 40.0,
                          width: 40.0,
                          fit: BoxFit.contain,
                        ),*/
              /*
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("X(student15)",textAlign: TextAlign.left,style: TextStyle(fontSize: 10.0),),
                                    Text("student15@ais.ahm.com",style: TextStyle(fontSize: 10.0),overflow: TextOverflow.ellipsis),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Preview",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Attendance",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),

                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Grades",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),

                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Report",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),

                              ],
                            ),
                          ],
                        ),

                        */
              /*ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                                ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Preview",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8.0
                                ),)
                              ],
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Attendance",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Grades",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Report",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),
*/
/*                    ],
                    ),
                  ),

                  Divider(
                    height: 20.0,
                    thickness: 2.0,
                    color: Color.fromARGB(255, 233, 233, 233),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        */
              /*Image(
                          image: AssetImage("assets/icon.jpg"),
                          height: 40.0,
                          width: 40.0,
                          fit: BoxFit.contain,
                        ),*/
              /*
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("X(student15)",textAlign: TextAlign.left,style: TextStyle(fontSize: 10.0),),
                                    Text("student15@ais.ahm.com",style: TextStyle(fontSize: 10.0),overflow: TextOverflow.ellipsis),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Preview",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Attendance",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),

                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Grades",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),

                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Report",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),

                              ],
                            ),
                          ],
                        ),

                        */
              /*ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                                ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Preview",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8.0
                                ),)
                              ],
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Attendance",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Grades",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Report",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),
*/
/*                    ],
                    ),
                  ),

                  Divider(
                    height: 20.0,
                    thickness: 2.0,
                    color: Color.fromARGB(255, 233, 233, 233),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        */
              /*Image(
                          image: AssetImage("assets/icon.jpg"),
                          height: 40.0,
                          width: 40.0,
                          fit: BoxFit.contain,
                        ),*/
              /*
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("X(student15)",textAlign: TextAlign.left,style: TextStyle(fontSize: 10.0),),
                                    Text("student15@ais.ahm.com",style: TextStyle(fontSize: 10.0),overflow: TextOverflow.ellipsis),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Preview",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Attendance",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),

                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Grades",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),

                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Report",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),

                              ],
                            ),
                          ],
                        ),

                        */
              /*ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                                ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Preview",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8.0
                                ),)
                              ],
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Attendance",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Grades",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Report",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),
*/
/*                    ],
                    ),
                  ),

                  Divider(
                    height: 20.0,
                    thickness: 2.0,
                    color: Color.fromARGB(255, 233, 233, 233),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        */
              /*Image(
                          image: AssetImage("assets/icon.jpg"),
                          height: 40.0,
                          width: 40.0,
                          fit: BoxFit.contain,
                        ),*/
              /*
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("X(student15)",textAlign: TextAlign.left,style: TextStyle(fontSize: 10.0),),
                                    Text("student15@ais.ahm.com",style: TextStyle(fontSize: 10.0),overflow: TextOverflow.ellipsis),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Preview",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Attendance",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),

                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Grades",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),
                                SizedBox(width: 5.0,),

                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromARGB(255, 233, 233, 233),
                                            width: 2.0) // Background color
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                        Text("Report",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.0
                                        ),)
                                      ],
                                    )),

                              ],
                            ),
                          ],
                        ),

                        *//*ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                                ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Preview",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8.0
                                ),)
                              ],
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Attendance",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Grades",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),

                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 233, 233, 233),
                                    width: 2.0) // Background color
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.visibility_outlined,color: Colors.black,size: 8.0,),
                                Text("Report",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8.0
                                ),)
                              ],
                            )),
*/
/*                    ],
                    ),
                  ),
                ],*/
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
                IconButton(onPressed:(){}, icon: const Icon(Icons.arrow_back_ios,size: 15.0,)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        //maximumSize: Size(20,20),
                        minimumSize: const Size(30,30),
                        side: const BorderSide(
                            color: Colors.blueAccent,
                            width: 2.0) // Background color
                    ),
                    onPressed: () {},
                    child: const Text("1",style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0
                    ),)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_outlined,size: 15.0,))
              ],
            ),
          ),
        ],
      ),
      /*appBar: AppBar(
        title: Text("Good Afternoon, AIS.", style: TextStyle(
          color: Colors.black,
          fontSize: 15.0,

        ),),
        backgroundColor: Color.fromARGB(255, 233, 233, 233),
      ),
      body: Stack(
        children: [
          Container(
            height: 300.0,
            color: Colors.black,
          ),

        ],
      ),
      */ //drawerScrimColor: Colors.black,
      /* endDrawerEnableOpenDragGesture: true,
      drawerEnableOpenDragGesture: true,*/
      /*drawer: Drawer(
        child: SafeArea(
          right: false,
          child: Container(
            height: 300.0,
            color: Colors.white,
            width: 100.0,
            child: Scrollbar(
              isAlwaysShown: true,
              child: ListView(
                children: [
                  Image(image: AssetImage("assets/icon.jpg")),
                  Text("DashBoard"),
                  Image(image: AssetImage("assets/icon.jpg")),
                  Image(image: AssetImage("assets/icon.jpg")),
                  Image(image: AssetImage("assets/icon.jpg")),
                  Image(image: AssetImage("assets/icon.jpg")),
                  Image(image: AssetImage("assets/icon.jpg")),
                  Image(image: AssetImage("assets/icon.jpg")),
                  Image(image: AssetImage("assets/icon.jpg")),
                  Image(image: AssetImage("assets/icon.jpg")),
                  Image(image: AssetImage("assets/icon.jpg")),
                  Image(image: AssetImage("assets/icon.jpg")),
                ],
              ),
            ),
          ),

        ),
      ),*/
    );
  }

  Widget AttendancePopUp(BuildContext context){
    return const Center(
      child: AlertDialog(
        title: Text("Hyy"),
        content: Text("Hello"),
      ),
    );
  }
}
