import 'package:company_project/constants.dart';
import 'package:company_project/pages/id_card_pages/risk_id_card_page.dart';
import 'package:company_project/styles/theme.dart';
import 'package:flutter/material.dart';

class IdCardPage extends StatefulWidget {
  @override
  _IdCardPageState createState() => _IdCardPageState();
}

class _IdCardPageState extends State<IdCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Trang giao dịch mã thẻ'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RiskIdCardPage()));
          },
          label: Text('Risk'),
          backgroundColor: theme(context).primaryColor,
        ),
        body: Column(
          children: [
            Container(
                height: 44,
                color: Color(0xFFEBEBEB),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Text(
                      'Thông báo',
                      style: TextStyle(
                          color: theme(context).primaryColor,
                          fontFamily: 'RobotoBold',
                          fontSize: 16),
                    ),
                  ),
                ])),
            Container(
                height: 102,
                decoration: BoxDecoration(
                    border: Border.all(color: titleColor, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tiêu đề',
                              style: TextStyle(
                                  fontFamily: 'RobotoBold', fontSize: 16)),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 10.0, 0, 12),
                            child: Text('Mã giao dịch'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text('Thông tin giao dịch'),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text('Thành công',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'RobotoBold',
                                  color: Color(0xFF18CC18))),
                        ],
                      )
                    ],
                  ),
                )),
            Divider(
              color: Color(0xFFF8F8F8),
              thickness: 10,
            ),
            Container(
                height: 102,
                decoration: BoxDecoration(
                    border: Border.all(color: titleColor, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tiêu đề',
                              style: TextStyle(
                                  fontFamily: 'RobotoBold', fontSize: 16)),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 10.0, 0, 12),
                            child: Text('Mã giao dịch'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text('Thông tin giao dịch'),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text('Thành công',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'RobotoBold',
                                  color: Color(0xFF18CC18))),
                        ],
                      )
                    ],
                  ),
                )),
            Divider(
              color: Color(0xFFF8F8F8),
              thickness: 10,
            ),
            Container(
                height: 102,
                decoration: BoxDecoration(
                    border: Border.all(color: titleColor, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tiêu đề',
                              style: TextStyle(
                                  fontFamily: 'RobotoBold', fontSize: 16)),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 10.0, 0, 12),
                            child: Text('Mã giao dịch'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text('Thông tin giao dịch'),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text('Thành công',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'RobotoBold',
                                  color: Color(0xFF18CC18))),
                        ],
                      )
                    ],
                  ),
                )),
            Divider(
              color: Color(0xFFF8F8F8),
              thickness: 10,
            ),
          ],
        ));
  }
}
