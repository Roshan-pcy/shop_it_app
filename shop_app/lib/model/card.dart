import 'package:shop_app/model/shoe.dart';

class card {
  List<Shoe> shoeshop = [
    Shoe(
        name: 'New kick',
        price: '120\$',
        image: 'asstes/imag1.jpg',
        dis: 'A brand new addida shoe shop with smooth kick'),
    Shoe(
        name: 'Padrick',
        price: '100\$',
        image: 'asstes/imag2.jpg',
        dis: 'A brand new padrick  mpdel with smooth kick'),
    Shoe(
        name: 'Fashtion world',
        price: '220\$',
        image: 'asstes/imag1.jpg',
        dis: 'A brand fastion world and light weight'),
    Shoe(
        name: ' Strim feek',
        price: '120\$',
        image: 'asstes/imag1.jpg',
        dis: 'A brand new addida shoe shop with smooth kick'),
    Shoe(
        name: 'New kick',
        price: '220\$',
        image: 'asstes/imag1.jpg',
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
    return shoeshop;
  }

  //add to list
  void addList(Shoe shoe) {
    shoeshop.add(shoe);
  }

  //remove list
  void removeList(Shoe shoe) {
    shoeshop.remove(shoe);
  }
}
