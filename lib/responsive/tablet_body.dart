import 'package:flutter/material.dart';

class MyTabletBody extends StatefulWidget {
  const MyTabletBody({Key? key}) : super(key: key);

  @override
  State<MyTabletBody> createState() => _MyTabletBodyState();
}

class _MyTabletBodyState extends State<MyTabletBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text("T A B L E T"),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(height: 250, color: Colors.deepPurple[400]),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.deepPurple[300],
                              height: 120,
                            ),
                          );
                        }))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              color: Colors.deepPurple[300],
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.amber
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
