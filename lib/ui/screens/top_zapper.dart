import 'package:flutter/material.dart';

import '../../custom_widget/searchbar.dart';

class TopZapper extends StatelessWidget {
  const TopZapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [Colors.blue, Colors.purple],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          title: Text('Top Zapper'),
          leading: Icon(Icons.arrow_back_ios_new),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Icon(
                  Icons.border_all_sharp,
                ),
              ),
            )
          ],
        ),
        body: Container(
            child: Column(
          children: [
            SearchBar(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/person.jpg'),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(10),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ListTile(
                      title: Text('Emaa Khan'),
                      subtitle: Text('this is subtitle.....'),
                      trailing: Text('10,000'),
                    ),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
