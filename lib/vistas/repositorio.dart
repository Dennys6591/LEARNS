import 'package:flutter/material.dart';
import 'package:learns/vistas/reutilizables.dart';

class repositoriosScreem extends StatefulWidget {
  const repositoriosScreem({super.key});

  @override
  State<repositoriosScreem> createState() => _repositoriosState();
}

class _repositoriosState extends State<repositoriosScreem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
    appBar: MyAppBar(),
    body: Container(),
    bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}