import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_wallet_ui/screens/main_screen.dart';

import 'first_screen.dart';

class BeginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFb9e67a),
        body: Stack(
          children: [
            Image.asset(
              'money.png',
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),

            Container(
              margin: EdgeInsets.only(top: 50),
              width: double.infinity,
              child: Image.asset(
                'coin.png',
                width: 200,
                height: 200,
              ),
            ),

            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      width: double.infinity,
                      child: Text(
                        'Your Saving are save with us',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      width: double.infinity,
                      child: Text(
                        'The Bank of America Corporation is an American multinational investment bank and financial services holding company headquartered in Charlotte, North Carolina. Founded in San Francisco, Bank of America was formed through NationsBank\'s acquisition of BankAmerica in 1998.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Color(0xFFb9e67a),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ],
                          ),
                          ConstrainedBox(
                            constraints:
                                BoxConstraints.tightFor(width: 150, height: 45),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(50),
                                  ),
                                ),
                                primary: Color(0xFFb9e67a),
                                elevation: 15,
                                shadowColor: Color(0xFFb9e67a),
                              ),
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.grey[900],
                                  fontSize: 16,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => MainScreen(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
