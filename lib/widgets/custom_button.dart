import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key,  this.onTap ,required this.text}) : super(key: key) ;
  VoidCallback? onTap;
   String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
