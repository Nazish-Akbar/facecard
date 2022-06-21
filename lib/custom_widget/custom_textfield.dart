import 'package:flutter/material.dart';

class newcard extends StatelessWidget {
  final hinttext;
  final prefixIcon;

  newcard({
    this.hinttext,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.white,
          // elevation: 5,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: TextFormField(
            // minLines: ,
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              hintText: hinttext,
              prefixIcon: prefixIcon,
              hintStyle: TextStyle(
                //color: Colors.white,
                fontSize: 12,
              ),
              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
      ],
    );
  }
}
