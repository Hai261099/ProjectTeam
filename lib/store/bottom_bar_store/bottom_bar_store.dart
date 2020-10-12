import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'bottom_bar_store.g.dart';

class BottomBarStore = BottomBarBase with _$BottomBarStore;

abstract class BottomBarBase with Store {
  var pageController = PageController();
  @observable
  int selectedIndex = 0;

  @action
  void onItemTapped(int index) {
    pageController.jumpToPage(index);
    selectedIndex = index;
  }
}
