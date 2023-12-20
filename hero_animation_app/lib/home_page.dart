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
            // NOTA: Implementar el Hero Animation, es bien sencillo en este caso lo que quiero animar es el FlutterLogo, inclusive se podría animar el GestureDetector
            //       pero no tiene mucho sentido. Entonces para esto vamos a envolver el FlutterLogo en un widget llamado Hero. Adicionalmente este widget sería el que
            //       tiene en común con la pantalla Detail y por lo tanto tienen que tener el mismo tag.
            // NOTA: Otra cosa que tenemos que tener en cuenta es que el widget Hero tiene otras propiedades que podemos cambiar como la animación, la duración entre otras
            //       cosas.
            GestureDetector(
              onTap: () => pushRoute(context),
              child: const Hero(
                // NOTA: OJOOOOOOO es super importante tener en cuenta que el tag tiene que ser único para cada Hero, ya que si no hacemos esto la pantalla va a aparecer en negro
                //       o marcar algún error.
                tag: 'logo',
                child: FlutterLogo(size: 150),
              ),
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
