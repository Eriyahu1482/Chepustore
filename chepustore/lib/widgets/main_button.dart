import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  final Color buttonTextColor;
  final Color buttonShadowColor;
  final void Function()? onTap;

  const MainButtonWidget({ 
   required this.buttonName,
   required this.buttonColor,
   required this.buttonTextColor,
   this.buttonShadowColor = Colors.white,
   required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color.fromRGBO(70, 51, 111, 1), width: 3),
          color: buttonColor,
          boxShadow: [
            BoxShadow (
            color: buttonShadowColor.withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 6,)],
        ),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Text (buttonName,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: buttonTextColor,
            fontSize: 17,
          ),)
            ]
          ),
      ),
    );
  }
}