import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 55),
          alignment: Alignment.topCenter,
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Image(
                  //   image: AssetImage('assets/images/logo_wsb_pion.jpg'),
                  // ),
                  SizedBox(
                    width: 15,
                    height: 30,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Luty 2022",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(14, 39, 73, 1),
                        fontSize: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 130,
          child: Container(
            height: MediaQuery.of(context).size.height - 160,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 30),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildDateColumn("M", 21, false),
                      buildDateColumn("T", 22, false),
                      buildDateColumn("W", 23, false),
                      buildDateColumn("T", 24, false),
                      buildDateColumn("F", 25, true),
                      buildDateColumn("S", 26, false),
                      buildDateColumn("S", 27, false),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        buildTaskListItem(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Container buildTaskListItem() {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 15,
                height: 10,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(14, 39, 73, 1),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(20),
                    )),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Piątek, 09:00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(14, 39, 73, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 185,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(right: 10, left: 30),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Internet rzeczy",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Egzamin końcowy",
                  style: TextStyle(
                    color: Color.fromRGBO(140, 140, 149, 1),
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.person,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " dr Anna Kowalska",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wyższa Szkoła Bankowa, budynek B",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Sala 311",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildDateColumn(String weekDay, int date, bool isActive) {
    return Container(
      decoration: isActive
          ? BoxDecoration(
              color: Color.fromRGBO(14, 39, 73, 1),
              borderRadius: BorderRadius.circular(10))
          : BoxDecoration(),
      height: 55,
      width: 35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            weekDay,
            style: TextStyle(
                color: Color.fromRGBO(140, 140, 149, 1), fontSize: 11),
          ),
          Text(
            date.toString(),
            style: TextStyle(
                color:
                    isActive ? Color.fromRGBO(234, 240, 243, 1) : Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
