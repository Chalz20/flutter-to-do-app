import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';


class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _selectedDate = DateTime.now().add(const Duration(days: 2));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 5 , 20 , 0 ),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Text("Calendar",
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
            SizedBox(height: 30),

            // Date selector ....

        EasyTheme(
            data: EasyTheme.of(context).copyWithState(
              selectedDayTheme: const DayThemeData(
                backgroundColor: Color(0xffF6F6F6),
                foregroundColor: Colors.black,
                border: BorderSide(color: Colors.black),

              ),
              unselectedDayTheme: const DayThemeData(
                backgroundColor: Colors.white,
                foregroundColor: Colors.grey,
                bottomElementStyle: TextStyle(
                )
              ),

            ),
          child: EasyDateTimeLinePicker(
            firstDate: DateTime.now().subtract(const Duration(days: 2)),
            lastDate: DateTime.now().add(const Duration(days: 30)),
            focusedDate: _selectedDate,
            daySeparatorPadding: 12,
            headerOptions: HeaderOptions(
              headerType: HeaderType.none, // default
            ),
            onDateChange: (date) {
              _selectedDate = date; // Handle the selected date.
            },
            dayElementsOrder: const [DayElement.bottom(), DayElement.middle()],
              timelineOptions: TimelineOptions(height: 68,) // the height of the timeline
              ),
        ),

            // Reminder part ......
            SizedBox(height: 32),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only( top: 8.0),
                  child: Text("6:00",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                  ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    //height: 78,
                    padding: EdgeInsets.fromLTRB(16, 16, 16 , 40 ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(121,144,248,0.1),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(121,144,248,1),
                              ),
                            ),
                            Text("Drink 8 glasses of water",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        Text("1h",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                          ),
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 8,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text("7:00",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500
                     )
                  ),
                )
              ]
          ),

            SizedBox(height: 8,),

            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("8:00",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  )
                ]
            ),
            SizedBox(height: 8,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only( top: 8.0),
                  child: Text("9:00",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    //height: 78,
                    padding: EdgeInsets.fromLTRB(16, 16, 16 , 40 ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(188,94,173,0.1),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(188,94,173,1),
                              ),
                            ),
                            Text("Get a notebook",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        Text("1h",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 8,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only( top: 8.0),
                  child: Text("10:00",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(width: 16,),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16, 16, 16 , 160 ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(70,207,139,0.1),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(70,207,139,1),
                              ),
                            ),
                            Text("Work",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        Text("4h",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 8,),

            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("11:00",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  )
                ]
            ),

            SizedBox(height: 8,),

            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("12:00",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  )
                ]
            ),

            SizedBox(height: 8,),

            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("13:00",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  )
                ]
            ),

            SizedBox(height: 8,),

            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("14:00",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  )
                ]
            ),

            SizedBox(height: 8,),

            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("15:00",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  )
                ]
            ),

            SizedBox(height: 8,),

            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("16:00",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  )
                ]
            ),

            SizedBox(height: 8,),

            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("17:00",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  )
                ]
            ),

            SizedBox(height: 8,),

            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("18:00",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  )
                ]
            ),

            SizedBox(height: 8,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only( top: 8.0),
                  child: Text("19:00",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(width: 16,),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16, 16, 16 , 160 ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(121,144,248,0.1),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(121,144,248,1),
                              ),
                            ),
                            Text("Walk for 15 minutes",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        Text("4h",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 8,),










          ]



        ),
      ),


    );
  }
}
