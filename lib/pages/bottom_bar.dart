import 'package:company_project/pages/id_card_pages/id_card_page.dart';
import 'package:company_project/pages/topup_pages/topup_page.dart';
import 'package:company_project/store/bottom_bar_store/bottom_bar_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'home_page.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final BottomBarStore bottomBarStore = BottomBarStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: bottomBarStore.pageController,
        children: [HomePage(), IdCardPage(), TopupPage()],
      ),
      bottomNavigationBar: Observer(
        builder: (_) => BottomNavigationBar(
          backgroundColor: Color(0xFFFFFFFFF),
          selectedItemColor: Color(0xFF0B62AB),
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
      ),
    );
  }
}
