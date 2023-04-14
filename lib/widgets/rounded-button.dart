import 'package:vizeodevi/main.dart';
import 'package:flutter/material.dart';

import '../screens/homepage.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonName,
  
  }) : super(key: key);

  final String buttonName;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.brown),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
          child: GestureDetector(
            onTap: (){
              
            },
            child: Text(
              buttonName,
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.brown.shade100,
                  height: 1.5,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
