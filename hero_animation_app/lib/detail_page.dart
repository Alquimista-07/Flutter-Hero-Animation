import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail'),
        ),
        body: const Column(
          children: [
            FlutterLogo(size: 450),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Aliqua in velit dolore quis non consequat veniam laboris esse. Proident pariatur duis cupidatat deserunt veniam. In irure pariatur cillum elit aute sint dolor duis.',
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ));
  }
}
