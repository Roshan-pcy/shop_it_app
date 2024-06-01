import 'package:flutter/material.dart';
import 'package:shop_app/model/shoe.dart';

class card extends ChangeNotifier {
  List<Shoe> shoeshop = [
    Shoe(
        name: 'New kick',
        price: '120',
        image: 'assets/img1.jpg',
        dis: 'A brand new addida shoe shop with smooth kick'),
    Shoe(
        name: 'Padrick',
        price: '100',
        image: 'assets/img5.jpg',
        dis: 'A brand new padrick  mpdel with smooth kick'),
    Shoe(
        name: 'Fashtion world',
        price: '220',
        image: 'assets/img3.jpg',
        dis: 'A brand fastion world and light weight'),
    Shoe(
        name: ' Strim feek',
        price: '120',
        image: 'assets/img4.jpg',
        dis: 'A brand new addida shoe shop with smooth kick'),
    Shoe(
        name: 'New kick',
        price: '220',
        image: 'assets/img2.jpg',
        dis: 'A brand new addida shoe shop with smooth kick')
  ];

//user list
  List<Shoe> userList = [];

  //get user list

  List<Shoe> getList() {
    return shoeshop;
  }

  //get car list
  List<Shoe> getCard() {
    return userList;
  }

  //add to list
  void addList(Shoe shoe) {
    userList.add(shoe);
    print("this is the list$userList");
    notifyListeners();
  }

  //remove list
  void removeList(Shoe shoe) {
    print("this is the Renmoved list$userList");
    userList.remove(shoe);
    notifyListeners();
  }
}
