import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'my Card Example',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('my Card Example'),
      ),
      body: myCard(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class myCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.none,
          color: Colors.green,
          padding: const EdgeInsets.all(20.0),
            child: const Image(
            image: NetworkImage('https://deih43ym53wif.cloudfront.net/bun-cha-vietnam-food-shutterstock_769738648_a1baaf2235.jpeg'),
            height: 800,
            fit: BoxFit.fitHeight,
          ),
        ),
   
        const Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            margin: EdgeInsets.all(20.0),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('I am a Card', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20.0),
                  //text content
                  Text(
                    'Gitflow Workflow là một thiết kế quy trình làm'
                    ' việc được sử dụng lần đầu tiên và làm cho phổ biến'
                    ' bởi Vincent Driessen at nvie. Gitflow Workflow '
                    'định nghĩa một cấu trúc phân nhánh nghiêm ngặt xung quanh'
                    ' bản release của dự án. Điều này cung cấp thêm một framework'
                    ' mạnh mẽ để quản lý các dự án lớn.',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.justify,
                    maxLines: 9,
                    overflow: TextOverflow.ellipsis,
                  ),
                ]
              ),
            )
              ),
        )
      ],
    );
  }
}
