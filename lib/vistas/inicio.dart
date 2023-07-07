import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(189, 15, 15, 0.959),
        leading: Image.asset("assets/images/logo.png"),
        title: const Text('    L.E.A.R.N.S   ESPOCH'),
        actions: [
          MaterialButton(
            minWidth: 200.0,
            height: 40.0,
            onPressed: () {},
            color: const Color.fromARGB(0, 218, 70, 25),
            child: const Text('Inicio', style: TextStyle(color: Colors.white)),
          ),
          MaterialButton(
            minWidth: 200.0,
            height: 40.0,
            color: const Color.fromARGB(0, 244, 11, 3),
            child: const Text('Recursos\n institucionales',
                style: TextStyle(color: Colors.white)),
            onPressed: () {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(0, 0, 0, 0),
                items: [
                  PopupMenuItem(
                    child: Text('Todos'),
                    value: 1,
                    onTap: () {},
                  ),
                  PopupMenuItem(
                    child: Text('Informática y electrónica'),
                    value: 2,
                    onTap: () {},
                  ),
                  // Agrega más opciones de menú según tus necesidades
                ],
                elevation: 8.0,
              );
            },
          ),
          MaterialButton(
            minWidth: 200.0,
            height: 40.0,
            onPressed: () {},
            color: const Color.fromARGB(0, 209, 18, 18),
            child: const Text('Recursos\n abiertos',
                style: TextStyle(color: Colors.white)),
          ),
          FloatingActionButton(
            onPressed: () {
              // Acción del botón
            },
            backgroundColor: const Color.fromARGB(0, 0, 0, 0),
            elevation: 50.0,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person_2_outlined,
                    color: Color.fromARGB(255, 255, 255, 255)),
                SizedBox(
                    height: 4.0), // Espacio vertical entre el icono y el texto
                Text(
                  'Inciar\nsesión',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '¡Bienvenido a la página de inicio!',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
