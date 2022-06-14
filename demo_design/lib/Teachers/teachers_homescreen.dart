
import 'package:demo_design/appbar.dart';
import 'package:demo_design/drawer.dart';
import 'package:flutter/material.dart';

class Teachers_Homescreen extends StatefulWidget {
  const Teachers_Homescreen({Key? key}) : super(key: key);

  @override
  _Teachers_HomescreenState createState() => _Teachers_HomescreenState();
}

class _Teachers_HomescreenState extends State<Teachers_Homescreen> {
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
                const Text("Teachers",style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                ElevatedButton.icon(
                  icon: const Icon(
                    Icons.add,
                    size: 30.0,
                  ),
                  label: const Text('Add Teachers'),
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
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Teachers(ais-teacher)",textAlign: TextAlign.left,style: TextStyle(fontSize: 15.0),),
                                  Text("teacher@ais.ahm.com",style: TextStyle(fontSize: 15.0),overflow: TextOverflow.ellipsis),

                                ],
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      side: const BorderSide(
                                          color: Color.fromARGB(255, 233, 233, 233),
                                          width: 2.0) // Background color
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/teachers_profile');
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(Icons.visibility_outlined,color: Colors.black,size: 10.0,),
                                      SizedBox(width: 5,),
                                      Text("Profile",style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10.0
                                      ),)
                                    ],
                                  )),
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
                                      Text("Schedule",style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10.0
                                      ),)
                                    ],
                                  )),
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
    );
  }
}
