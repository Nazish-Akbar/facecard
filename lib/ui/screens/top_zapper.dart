import 'package:facecard/ui/screens/top_zapper_view_model.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchBar(),
              ListView.builder(
                shrinkWrap: true,
                itemCount: personList.length,
                itemBuilder: (context, index) {
                  final currentPerson = personList[index];
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('images/person.jpg'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 50,
                                margin: EdgeInsets.only(
                                    left: 10, right: 10, top: 2, bottom: 2),
                                decoration: BoxDecoration(color: Colors.white),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(currentPerson.title),
                                    Text(currentPerson.subtile),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 20, bottom: 5, child: Icon(Icons.favorite)),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
