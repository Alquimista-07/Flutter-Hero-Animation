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
            // NOTA: Recordemos que el FlutterLogo es el widget que tienen en común la pantalla Home con la Detail, entonces este también lo envolvemos
            //       en el widget Hero. Y OJOOOOOO tenemos que colocarle el mismo tag ya que son widgets en común entre las dos pantallas.
            // NOTA: Otra cosa que tenemos que tener en cuenta es que el widget Hero tiene otras propiedades que podemos cambiar como la animación, la duración entre otras
            //       cosas.
            Hero(
              tag: 'logo',
              child: FlutterLogo(size: 450),
            ),
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
