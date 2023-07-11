import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: Text('Basic music list Layout'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: SafeArea(
          child: Column(
            children: [
              myWidget(),
              myWidget(),
              myWidget(),
              myWidget(),
              myWidget(),
              myWidget(),
              myWidget(),
              myWidget(),
            ],
          ),
        ),
      ),
    ),
  );
}

class myWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900],
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Image(
                image: NetworkImage('https://cdn.iconscout.com/icon/free/png-256/free-avatar-370-456322.png?f=webp'),
                width: 60,
                height: 60,

              ),
              SizedBox( width: 10.0,),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Diamond',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900],
                      ),
                    ),
                    Text(
                      'Diamond is the hardest',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                
                width: 20,
                height: 20,
                color: Colors.blueGrey[900],
              ),
              SizedBox( width:20),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    color: Colors.blueGrey[900],
                  ),
                  Text(
                    '3:00',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
