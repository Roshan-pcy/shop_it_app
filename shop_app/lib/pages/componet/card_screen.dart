import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/model/card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<card>(
      builder: (context, value, child) {
        return Scaffold(
            backgroundColor: Colors.grey[300],
            body: Column(
              children: [
                const Text(
                  'Card Items',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.getCard().length,
                    itemBuilder: (context, index) {
                      var shoe = value.getCard()[index];
                      return Container(
                        margin: EdgeInsets.all(11),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          leading: Image.asset(shoe.image),
                          title: Text(shoe.name),
                          subtitle: Text(
                            shoe.price,
                            style: const TextStyle(),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                Provider.of<card>(context, listen: false)
                                    .removeList(shoe);
                              },
                              icon: const Icon(Icons.delete)),
                        ),
                      );
                    },
                  ),
                )
              ],
            ));
      },
    );
  }
}
