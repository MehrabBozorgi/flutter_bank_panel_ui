import 'package:flutter/material.dart';
import 'package:flutter_green_wallet_ui/model/person_model.dart';

class FirstScreen_Item extends StatelessWidget {
  final int index;
  const FirstScreen_Item({
    required this.person,
    required this.index,
  });

  final List<PersonModel> person;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(45),
          topLeft: Radius.circular(45),
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(5),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: person[index].color,
              child: Image.asset(
                person[index].image,
                height: 45,
                width: 45,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 5,top: 15),
            child: Text(
              person[index].name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 5,top: 10),
            child: Text(
              '\$'+person[index].money.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

        ],
      ),
    );
  }
}