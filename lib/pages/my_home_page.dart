import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
    State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;


@override
Widget build(BuildContext context) {
  return Scaffold(
    floatingActionButton: Column(
      mainAxisSize: MainAxisSize.min, // Minimize column height
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FloatingActionButton.small(
          backgroundColor: Color(0xff393433),
          heroTag: 'calendar',
          onPressed: () {
            Navigator.pushNamed(context, '/calendar');
          },
          tooltip: 'Calendar',
          child: const Icon(
              Icons.calendar_month,
              color: Colors.white,
          ),
        ),
        SizedBox(height: 10,),

        // The add task FAB......
        FloatingActionButton(
            heroTag: 'new_task',
            onPressed: () {
              Navigator.pushNamed(context, '/new_task');
            },
            tooltip: 'Add new task',
            backgroundColor: Color(0xff393433),
            child: Icon(Icons.add,
              color: Colors.white,
              size: 32,
             )
        ),
      ],
    ),
    body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Today",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  SizedBox(width: 10,),
                  Text("10 Feb",
                   style: TextStyle(
                     fontSize: 36,
                     color: Colors.grey
                   ),
                  ),

                ],
              ),
              SizedBox(height: 25),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        width: 160,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(121,144,248,0.1),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.heart_broken,
                             color: Color(0xff7990F8),
                              size: 24,
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Text("6",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 5),

                                Text("Health",
                                  style: TextStyle(
                                    color: Colors.blueGrey
                                  ),
                                )
                              ]
                            )
                          ],
                        ),

                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 160,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(70,207,139,0.1),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.business_center_rounded,
                              color: Color(0xff46CF8B),
                              size: 24,
                            ),
                            SizedBox(height: 15),
                            Row(
                                children: [
                                  Text("5",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 5),

                                  Text("Work",
                                    style: TextStyle(
                                        color: Colors.blueGrey

                                    ),
                                  )
                                ]
                            )

                          ],
                        ),

                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  // Second Row of card items ........
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        width: 160,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(188,94,173,0.1),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.monitor_heart,
                              color: Color(0xffBC5EAD),
                              size: 24,
                            ),
                            SizedBox(height: 15),
                            Row(
                                children: [
                                  Text("4",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 5),

                                  Text("Mental Health",
                                    style: TextStyle(
                                        color: Colors.blueGrey
                                    ),
                                  )
                                ]
                            )
                          ],
                        ),

                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 160,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(143,137,134,0.1),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.folder_rounded,
                              color: Color(0xff908986),
                              size: 24,
                            ),
                            SizedBox(height: 15),
                            Row(
                                children: [
                                  Text("13",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 5),

                                  Text("Others",
                                    style: TextStyle(
                                        color: Colors.blueGrey
                                    ),
                                  )
                                ]
                            )
                          ],
                        ),

                      )
                    ],
                  ),

              ]
              ),

              //Beginning of the checkbox section with todoss ....
              SizedBox(height: 32),
              Column(
                // Section for independent todos ...
                children: [
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: isChecked,
                    side: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue!;
                      }
                      );
                    },
                    title: Text("Drink 8 glasses of water",),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 6,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(121,144,248,0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),

                          child: Text("HEALTH",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff7990F8),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    isThreeLine: true,
                  ),
                  Divider(
                    height: 20,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),

                  //Second checkbox .....
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: isChecked,
                    side: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue!;
                      }
                      );
                    },
                    title: Text("Edit the PDF file",),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 6,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(70,207,139,0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),

                          child: Text("WORK",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff46CF8B),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    isThreeLine: true,
                  ),
                  Divider(
                    height: 20,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),

                  //Third checkbox , the one with subsections .......
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: isChecked,
                    side: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue!;
                      }
                      );
                    },
                    title: Text("Write in a gratitude journal"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 6,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(188,94,173,0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),

                          child: Text("MENTAL HEALTH",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffBC5EAD),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 6),

                        //Row for subsections ....
                        Row(
                          children: [
                            Checkbox(
                                value: isChecked ,
                                onChanged:  (bool? newValue) {
                                  setState(() {
                                    isChecked = newValue!;
                                  }
                                  );
                                },
                              side: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text("Get a notebook",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff121212)
                              ),
                            )
                          ],
                        ),
                        // Second row for subsections ....
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked ,
                              onChanged:  (bool? newValue) {
                                setState(() {
                                  isChecked = newValue!;
                                }
                                );
                              },
                              side: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Text("Follow the youtube tutorial",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff121212)
                                ),
                              ),
                            )
                          ],
                        ),


                      ],
                    ),
                    isThreeLine: true,
                  ),
                  Divider(
                    height: 20,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),

                //Fourth checkbox , the last one ........
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: isChecked,
                    side: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue!;
                      }
                      );
                    },
                    title: Text("Stretch everyday for 15 minutes ",),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 6,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(121,144,248,0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),

                          child: Text("HEALTH",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff7990F8),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    isThreeLine: true,
                  ),
                  Divider(
                    height: 20,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),






                ]
              ),

            ],
          ),
        ),
      ),
    ),

);
}
}
