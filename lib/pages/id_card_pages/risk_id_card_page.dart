import 'package:company_project/constants.dart';
import 'package:flutter/material.dart';

class RiskIdCardPage extends StatefulWidget {
  @override
  _RiskIdCardPageState createState() => _RiskIdCardPageState();
}

class _RiskIdCardPageState extends State<RiskIdCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rủi ro giao dịch mã thẻ'),
        centerTitle: true,
      ),
      body: Column(
        children: [
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
      ),
    );
  }
}