import 'package:flutter/material.dart';

//زر بشكل بيضاوي
class OvalButton extends StatelessWidget {
  const OvalButton(
      {Key? key,
      required this.color,
      required this.title,
      required this.onPressed})
      : super(key: key);

  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(50),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 250,
          height: 30.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}

//---------------------------------------------------
//زر بشكل مربع
class BoxButton extends StatelessWidget {
  const BoxButton(
      {Key? key,
      required this.color,
      required this.title,
      required this.onPressed})
      : super(key: key);

  final Color color;
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 5,
        color: color,
        // borderRadius: BorderRadius.circular(50),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 155,
          height: 30.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}

class OvalSmallButton extends StatelessWidget {
  const OvalSmallButton(
      {Key? key,
      required this.color,
      required this.title,
      required this.onPressed})
      : super(key: key);
  final Color color;
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: color,
      borderRadius: BorderRadius.circular(50),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 150,
        height: 30.0,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
