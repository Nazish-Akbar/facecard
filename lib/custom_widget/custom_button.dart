import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final icon;
  final onPressed;
  final color;
  final Style;
  const BottomButton(
      {required this.title,
      this.icon,
      required this.onPressed,
      this.color,
      this.Style});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: RaisedButton(
          color: color,
          child: Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 20, bottom: 20),
                child: Text(
                  title,
                  style: Style,
                ),
              ),
            ],
          ),
          onPressed: onPressed,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
