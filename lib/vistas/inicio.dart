import 'package:flutter/material.dart';
import 'package:learns/constantes.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color1,
        leading:
            Flexible(flex: 1, child: Image.asset("assets/images/logo.png")),
        title: const Text('    L.E.A.R.N.S   ESPOCH'),
        actions: [
          Flexible(
            flex: 1,
            child: MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    20.0), // Ajusta el radio de borde según sea necesario
              ),
              child:
                  const Text('Inicio', style: TextStyle(color: Colors.white)),
            ),
          ),
          Flexible(
            flex: 1,
            child: MaterialButton(
              onPressed: () async {
                final RenderBox button =
                    context.findRenderObject() as RenderBox;
                final RenderBox overlay =
                    Overlay.of(context).context.findRenderObject() as RenderBox;
                final Offset buttonTopLeft =
                    button.localToGlobal(Offset.zero, ancestor: overlay);
                final Offset buttonBottomRight = button.localToGlobal(
                    button.size.bottomRight(Offset.zero),
                    ancestor: overlay);
                final double screenWidth = MediaQuery.of(context).size.width;
                final double dx = screenWidth; // Ajusta según sea necesario
                final Offset newTopLeft =
                    Offset(buttonTopLeft.dx + dx, buttonTopLeft.dy);
                final Offset newBottomRight =
                    Offset(buttonBottomRight.dx + dx, buttonBottomRight.dy);

                final RelativeRect position = RelativeRect.fromRect(
                  Rect.fromPoints(newTopLeft, newBottomRight),
                  Offset.zero & overlay.size,
                );

                await showMenu(
                  context: context,
                  position: position,
                  items: [
                    PopupMenuItem(
                      value: 1,
                      onTap: () {
                        // Lógica para manejar la selección de "Todos"
                      },
                      child: const Text('Todos'),
                    ),
                    PopupMenuItem(
                      value: 2,
                      onTap: () {
                        // Lógica para manejar la selección de "Informática y electrónica"
                      },
                      child: const Text('Informática y electrónica'),
                    ),
                    // Agrega más opciones de menú según tus necesidades
                  ],
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    20.0), // Ajusta el radio de borde según sea necesario
              ),
              child: const Text('Recursos\ninstitucionales',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
          Flexible(
            flex: 1,
            child: MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    20.0), // Ajusta el radio de borde según sea necesario
              ),
              child: const Text('Recursos\n abiertos',
                  style: TextStyle(color: Colors.white)),
            ),
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
                  'Iniciar\nsesión',
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
      body: Column(
        children: <Widget>[
          const SizedBox(height: 40),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Recursos mas populares',
              style: TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(height: 70),
      LayoutBuilder(
  builder: (BuildContext context, BoxConstraints constraints) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: constraints.maxWidth * 0.2, // Ajusta el tamaño del contenedor según tus necesidades
            height: 200,
            color: Colors.blue,
            child: InkWell(
              onTap: () {
                // Acción al presionar la imagen
                // Puedes ejecutar una función o navegar a otra pantalla, por ejemplo
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                  const Text(
                    'Nombre del recurso',
                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: constraints.maxWidth * 0.2, // Ajusta el tamaño del contenedor según tus necesidades
            height: 200,
            color: const Color.fromARGB(255, 33, 243, 107),
            child: InkWell(
              onTap: () {
                // Acción al presionar la imagen
                // Puedes ejecutar una función o navegar a otra pantalla, por ejemplo
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                  const Text(
                    'Nombre del recurso',
                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
           width: constraints.maxWidth * 0.2, // Ajusta el tamaño del contenedor según tus necesidades
            height: 200,
            color: const Color.fromARGB(255, 243, 33, 33),
            child: InkWell(
              onTap: () {
                // Acción al presionar la imagen
                // Puedes ejecutar una función o navegar a otra pantalla, por ejemplo
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                  const Text(
                    'Nombre del recurso',
                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),

           const SizedBox(width: 20),
          Container(
           width: constraints.maxWidth * 0.2, // Ajusta el tamaño del contenedor según tus necesidades
            height: 200,
            color: Color.fromARGB(255, 182, 223, 18),
            child: InkWell(
              onTap: () {
                // Acción al presionar la imagen
                // Puedes ejecutar una función o navegar a otra pantalla, por ejemplo
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                  const Text(
                    'Nombre del recurso',
                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                  ),

                  
                ],
              ),
            ),
          ),

          const SizedBox(width: 20),
          Container(
           width: constraints.maxWidth * 0.2, // Ajusta el tamaño del contenedor según tus necesidades
            height: 200,
            color: Color.fromARGB(255, 18, 223, 216),
            child: InkWell(
              onTap: () {
                // Acción al presionar la imagen
                // Puedes ejecutar una función o navegar a otra pantalla, por ejemplo
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                  const Text(
                    'Nombre del recurso',
                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                  ),

                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  },
),


        ],
      ),
      bottomNavigationBar: Container(
        height: 100.0,
        color: Colors.grey,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Escuela Superior Politécnica de Chimborazo 2023\n',
                style: TextStyle(fontSize: 14.0, color: Colors.white),
              ),
            ),
            // Espacio horizontal entre los widgets
            Text(
              '    Dirección: Panamericana sur km 1 1/2. Riobamba-Ecuador',
              style: TextStyle(fontSize: 12.0, color: Colors.white),
            ),
            Text(
              '    Teléfono: 593(03) 2998-200',
              style: TextStyle(fontSize: 12.0, color: Colors.white),
            ),
            Text(
              '    Telefax: (03)2317-001',
              style: TextStyle(fontSize: 12.0, color: Colors.white),
            ),
            Text(
              '    Código Postal: EC060155',
              style: TextStyle(fontSize: 12.0, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
