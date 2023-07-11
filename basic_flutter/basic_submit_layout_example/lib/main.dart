import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: SafeArea(
          child: Scaffold(
            body: myWidget(),
          )
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class myWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child:  Column (
        children: [
          const Row(
             children: [ 
              SizedBox(
                width: 90,
                child: Text(
                  'Username:',
                  style: TextStyle(fontSize: 15, color: Colors.lightBlue),
                ),
              ),
              Text('Nguyễn Quế Lân', style: TextStyle(fontSize: 15,color: Colors.blue ),)
            ],
          ),
          const SizedBox(height: 10),
          const Row(
             children: [
              SizedBox(
                width: 90,
                child: Text(
                  'Address:',
                  style: TextStyle(fontSize: 15, color: Colors.lightBlue),
                ),
              ),
              Text('VKU Việt Hàn', style: TextStyle(fontSize: 15,color: Colors.blue ),)
            ],
          ),
          const SizedBox(height: 10),
          const Row (
             children: [
              SizedBox(
                width: 90,
                child: Text(
                  'Email:',
                  style: TextStyle(fontSize: 15, color: Colors.lightBlue),
                ),
              ),
              Text('nguyenquelan2405@gmail.com', style: TextStyle(fontSize: 15,color: Colors.blue ),)
            ],
          ),
          const SizedBox(height: 10),
          const Image(
            image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                  child: const Text('Cancel', style: TextStyle(fontSize: 15, color: Colors.white),)
                  ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {}, 
                  child: const Text('Submit', style: TextStyle(fontSize: 15, color: Colors.white),)
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
