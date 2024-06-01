import 'package:flutter/material.dart';
import 'package:omega_task/notification.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff117b33),
        centerTitle: true,
        title: const Text(
          ' Omchat',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        leadingWidth: 150,
        leading: const Padding(
          padding: EdgeInsets.only(top: 8, left: 8),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/564x/0a/ef/aa/0aefaacf707ee5c6015018ee9bac773f.jpg'),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nghia Tu',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Nhóm của bạn',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Secondroute()));
              },
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.blue,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ListView(
            children: const [
              Row(
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                        Text('Họp vào lúc 9h',
                            style: TextStyle(color: Colors.black54))
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                indent: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
