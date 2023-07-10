import 'package:flutter/material.dart';
import 'package:learns/vistas/reutilizables.dart';

class CrearRepositorio extends StatefulWidget {
  const CrearRepositorio({super.key});

  @override
  State<CrearRepositorio> createState() => _CrearRepositorio();
}

class _CrearRepositorio extends State<CrearRepositorio> {
  bool isVideosExpanded = false;
  bool isObjetoExpanded = false;
  String _selectedOptionTipoRecurso = '';
  String _controllerNombreRecurso = '';
  List<String> objetosAprendizaje = ['Video 1', 'PDF 1', 'Objeto 1'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 15),
              const Text(
                "Información",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 40),
              //////////////////////////barras desplegables con los recursos
              TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre del recurso',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _controllerNombreRecurso = value;
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isVideosExpanded = !isVideosExpanded;
                    _selectedOptionTipoRecurso = 'Opción seleccionada';
                  });
                },
                child: Container(
                  color: Color.fromARGB(255, 27, 155, 53),
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        isVideosExpanded
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        _selectedOptionTipoRecurso.isNotEmpty
                            ? _selectedOptionTipoRecurso
                            : 'Tipo de recurso',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              if (isVideosExpanded)
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.grey,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedOptionTipoRecurso = 'Abierto';
                            isVideosExpanded = false;
                          });
                        },
                        child: Text(
                          'Abierto',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 1,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedOptionTipoRecurso =
                                'Informática y electrónica';
                            isVideosExpanded = false;
                          });
                        },
                        child: Text(
                          'Informática y electrónica',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                     Container(
                        width: 200,
                        height: 1,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedOptionTipoRecurso = 'Mecánica';
                            isVideosExpanded = false;
                          });
                        },
                        child: Text(
                          'Mecánica',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
      
              //////////////////////////////Imagen del recurso
               SizedBox(height: 15,),
      
               Text("Imagen del recurso "),
               SizedBox(height: 15,),
      
               Container(
        width: 150,
        height: 150,
        color: Colors.grey,
        child: Icon(
          Icons.image,
          size: 100,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 10),
      ElevatedButton(
      style: ButtonStyle(
        backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 27, 155, 53)),
      ),
        onPressed: () {
          // Acción al hacer clic en el botón
        },
        child: Text('Subir imagen'),
      ),
      
      //////////////////// ingresar objetos de aprendizaje
       
      
      Column(
        children: [
          ListView.builder(
        shrinkWrap: true,
        itemCount: objetosAprendizaje.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(objetosAprendizaje[index]),
          );
        },
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: ButtonStyle(
        backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 27, 155, 53)),
      ),
        onPressed: () {
          // Acción al hacer clic en el botón
        },
        child: Text('Agregar objeto de aprendizaje'),
          ),
        ],
      ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
