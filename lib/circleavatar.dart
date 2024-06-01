import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.amber,
          radius: 25,
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/564x/43/d7/db/43d7db9776af539613cf3735e7c0f989.jpg'),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 335,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Thông báo chung',
                  ),
                  Text(
                    '12:57:46 12/01/2024',
                  )
                ],
              ),
            ),
            Text('Họp vào lúc 9h', style: TextStyle(color: Colors.black54))
          ],
        ),
        Divider(
          indent: 10,
        ),
      ],
    );
  }
}
