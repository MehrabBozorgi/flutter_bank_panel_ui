import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_wallet_ui/model/person_model.dart';
import 'package:flutter_green_wallet_ui/widgets/CircleAvatar_Widgets.dart';
import 'package:flutter_green_wallet_ui/widgets/ExpandedContainer.dart';
import 'package:flutter_green_wallet_ui/widgets/FirstScreen_Item.dart';

class FirstScreen extends StatelessWidget {
  List<PersonModel> person = [
    PersonModel(
      id: 1,
      name: 'Shelden Copper',
      money: 100,
      image: 'person1.png',
      color: Colors.red,
    ),
    PersonModel(
      id: 2,
      name: 'Angelina Berry',
      money: 305.5,
      image: 'person2.png',
      color: Colors.greenAccent,
    ),
    PersonModel(
      id: 3,
      name: 'Bill Smith',
      money: 789.5,
      image: 'person3.png',
      color: Color(0xFFF06292),
    ),
    PersonModel(
      id: 4,
      name: 'Mac Gary',
      money: 250,
      image: 'person4.png',
      color: Colors.yellowAccent,
    ),
    PersonModel(
      id: 5,
      name: 'Cary Mcgee',
      money: 550.5,
      image: 'person5.png',
      color: Colors.blueGrey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text(
                  'Welcome back :',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Hi Mehrab',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar_Widgets(
                        icon: Icons.money_rounded, text: 'Transfer'),
                    CircleAvatar_Widgets(
                        icon: Icons.sticky_note_2, text: 'Voucher'),
                    CircleAvatar_Widgets(
                        icon: Icons.people_alt_rounded, text: 'Send'),
                    CircleAvatar_Widgets(
                        icon: Icons.more_horiz_rounded, text: 'more'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width - 25,
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xFFb9e67a),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    ExpandedContainer(
                      size: 30,
                      text: 'VISA',
                      flex: 3,
                      verticalSized: 25,
                    ),
                    ExpandedContainer(
                      size: 16,
                      text: 'Total Balance',
                      flex: 0,
                      verticalSized: 5,
                    ),
                    ExpandedContainer(
                      size: 25,
                      text: '\$20,000.70',
                      flex: 1,
                      verticalSized: 0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Send Money',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: person.length,
                  itemBuilder: (context, index) =>
                      FirstScreen_Item(person: person, index: index),
                ),
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
