import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hero_animation_app/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Método para cambiar a la otra pantalla
  void pushRoute(BuildContext context) {
    // NOTA: Para construir la ruta de navegación que es el segundo parámetro de la función push podríamos usar el Material Page Route
    //       o también podríamos usar cupertino cuya función es CupertinoPageRoute que recibe un builder con el buildContext que regresa
    //       la otra pantalla que queremos mostrar.
    Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => const DetailPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
      ),
      body: Table(
        children: [
          // NOTA: Cada uno de los TableRow tienen que tener la misma cantidad de elementos, es decir,
          //       ser iguales, eso quiere decir que si quitamos un placeholder en alguno y no agregamos
          //       otro elemento que lo reemplce o rellene nos va amarcar error.
          const TableRow(children: [
            Placeholder(fallbackHeight: 150),
            Placeholder(fallbackHeight: 150),
            Placeholder(fallbackHeight: 150),
          ]),
          const TableRow(children: [
            Placeholder(fallbackHeight: 150),
            Placeholder(fallbackHeight: 150),
            Placeholder(fallbackHeight: 150),
          ]),
          const TableRow(children: [
            Placeholder(fallbackHeight: 150),
            Placeholder(fallbackHeight: 150),
            Placeholder(fallbackHeight: 150),
          ]),
          TableRow(children: [
            GestureDetector(
              onTap: () => pushRoute(context),
              child: const FlutterLogo(size: 150),
            ),
            const Placeholder(fallbackHeight: 150),
            const Placeholder(fallbackHeight: 150),
          ]),
          TableRow(children: [
            const Placeholder(fallbackHeight: 150),
            const Placeholder(fallbackHeight: 150),
            Container()
          ]),
        ],
      ),
    );
  }
}
