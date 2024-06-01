import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/model/card.dart';
import 'package:shop_app/model/shoe.dart';

class Shoetile extends StatelessWidget {
  final Shoe shoe;
  const Shoetile({super.key, required this.shoe});
  void addTOCart(Shoe shoe, BuildContext context) {
    Provider.of<card>(context, listen: false).addList(shoe);
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text(
            'Succefuly Added🎉',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Color.fromARGB(255, 115, 228, 119),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              fit: BoxFit.cover,
              shoe.image,
              height: 200,
              width: 300,
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Text(
                shoe.dis,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$" + shoe.price,
                      style: const TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    addTOCart(shoe, context);
                  },
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
