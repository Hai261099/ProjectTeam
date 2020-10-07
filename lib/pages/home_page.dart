import 'package:company_project/constants.dart';
import 'package:company_project/styles/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        // Avatar
        leading: Center(
          child: FlatButton(
            onPressed: () {},
            shape: CircleBorder(),
            color: Color(0xFF36393D),
            child: Icon(
              Icons.person,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
        title: Column(
          // AppBar title
          children: [
            Row(
              children: [
                Text('Kiều Chí Công Công',
                    style: TextStyle(
                        fontFamily: 'RobotoMedium',
                        fontSize: 18.0,
                        letterSpacing: 2.0))
              ],
            ),
            Row(
              children: [
                Text('kieuchicongcong@gmail.com',
                    style: TextStyle(
                        fontFamily: 'RobotoRegular',
                        fontSize: 14.0,
                        letterSpacing: 1.5))
              ],
            )
          ],
        ),

        // Notification
        actions: [
          Stack(children: [
            IconButton(
                icon: Icon(Icons.notifications),
                color: Color(0xFFFFD833),
                onPressed: () {},
                iconSize: 30),
            Positioned(
                child: CircleAvatar(
                  child: Text('12',
                      style: TextStyle(fontSize: 9.0, color: Colors.red)),
                  radius: 8.0,
                  backgroundColor: Color(0xFFFFFFFF),
                ),
                top: 10,
                right: 9)
          ]),
        ],
      ),
      body: Column(
        children: [
          //Time + Timekeeping button
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Container(
              child: Row(children: [
                //Time
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Thứ 2, ngày 20/08/2020',
                            style: TextStyle(
                                color: Color(0xFF8D8E8F),
                                fontFamily: 'RobotoRegular')),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '08:30 - 17:30',
                          style: TextStyle(
                              color: theme(context).primaryColor,
                              fontFamily: 'RobotoBold',
                              fontSize: 26.0),
                        )
                      ],
                    )
                  ],
                ),
              ]),
            ),
          ),
          Divider(thickness: 5.0, color: Color(0xFFF2F2F2)),
          Container(
            height: 44,
            decoration:
                BoxDecoration(border: Border.all(color: titleColor, width: 1)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Container(
                      child: Text('Giao dịch ngày 06/10/2020',
                          style: TextStyle(
                              fontFamily: 'RobotoBold',
                              fontSize: 14,
                              color: Color(0xFF404040)))),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Container(
                      child: Text('Xem chi tiết',
                          style: TextStyle(
                              color: Color(0xFF2472FC),
                              fontSize: 14,
                              fontFamily: 'RobotoRegular'))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
