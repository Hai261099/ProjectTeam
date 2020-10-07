import 'package:company_project/pages/id_card_pages/id_card_page.dart';
import 'package:company_project/pages/topup_pages/topup_page.dart';
import 'package:company_project/store/bottom_bar_store/bottom_bar_store.dart';
import 'package:company_project/styles/theme.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  
  final BottomBarStore bottomBarStore = BottomBarStore();
  List<Widget> pages = [];

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    pages = <Widget>[HomePage(), IdCardPage(), TopupPage()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(bottomBarStore.selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFFFFFFFF),
        selectedItemColor: Color(0xFF0B62AB),
        unselectedItemColor: theme(context).primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            title: Text('Tổng quan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Mã thẻ'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text('Topup'),
          ),
        ],
        currentIndex: bottomBarStore.selectedIndex,
        onTap: bottomBarStore.onItemTapped,
      ),
    );
  }
}
