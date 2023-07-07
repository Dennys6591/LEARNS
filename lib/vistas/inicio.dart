import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:learns/constantes.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  late PageController _pageController;
  int _currentPage = 0;
  final List<Widget> _pageItems = [];
final int cantidadRecursos = 5; // Cantidad de recursos que deseas mostrar
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    _buildPageItems();
    super.didChangeDependencies();
  }
///// se crean los repositorios aleatorios 
void _buildPageItems() {
  const int itemsPerPage =4; // Cantidad de contenedores por página
  int totalItems = 15; // Total de contenedores en tu lista
  Random random = Random();

  for (int i = 0; i < totalItems; i += itemsPerPage) {
    List<Widget> page = [];

    for (int j = i; j < i + itemsPerPage; j++) {
      if (j < totalItems) {
        Color randomColor = Color.fromARGB(
          255,
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
        );

        page.add(
          Expanded(
            child: Container(
              color: randomColor,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    
                      Expanded(
                        flex: 1,
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const AutoSizeText(
                          'Nombre del recurso',
                           style: TextStyle(color: Colors.white),
                            minFontSize: 5.0, // Tamaño mínimo de la fuente
                            maxFontSize: double.infinity, // Tamaño máximo de la fuente (se ajustará automáticamente)
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            ),
                        ),
                      ),
                    ],
                  ),
              ),
            ),
          ),
        );
      }
    }

    _pageItems.add(
      GridView.count(
        crossAxisCount: itemsPerPage,
        shrinkWrap: true,
        children: page,
      ),
    );
  }
}



  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentPage--;
      });
    } else {
      _pageController.jumpToPage(_pageItems.length - 1);
      setState(() {
        _currentPage = _pageItems.length - 1;
      });
    }
  }

  void _nextPage() {
    if (_currentPage < _pageItems.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentPage++;
      });
    } else {
      _pageController.jumpToPage(0);
      setState(() {
        _currentPage = 0;
      });
    }
  }

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
                   PopupMenuItem(
                      value: 2,
                      onTap: () {
                        // Lógica para manejar la selección de "Informática y electrónica"
                      },
                      child: const Text('Mecánica'),
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

          ////aqui se ponen los repositorios ahora esta solo creandose aleatoriamente pero deberia ir con una base de datos
          SizedBox(
            height: 250,
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: _pageItems,
            ),
          ),

          
        ],
      ),
      bottomNavigationBar: Container(
        height: 110.0,
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
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Padding(
      padding: const EdgeInsets.only(left: 10.0), // Ajusta el espaciado aquí
      child: IconButton(
        onPressed: _previousPage,
        icon: const Icon(Icons.arrow_back),
      ),
    ),
    IconButton(
      onPressed: _nextPage,
      icon: const Icon(Icons.arrow_forward),
    ),
        ],
      ),
    );
  }
}