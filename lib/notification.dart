import 'package:flutter/material.dart';

class Secondroute extends StatelessWidget {
  const Secondroute({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff117b33),
          centerTitle: true,
          title: const Text(
            'Nhóm: Dự án Omchat',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8, left: 8),
              child: Text('12:57:46 12/01/2024'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: Container(
                color: const Color(0xffdee1e6),
                child: Padding(
                  padding: EdgeInsets.only(left: 8, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Thông báo',
                        style: TextStyle(color: Color(0xff52a9eb)),
                      ),
                      Text('Đã phát hành phiên bản 0.3.0')
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
