import 'package:consulta_fipe/pages/create_user.dart';
import 'package:consulta_fipe/pages/cripto.dart';
import 'package:consulta_fipe/pages/fipe.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [const Fipe(), const Cripto(), const CreateUser()];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pesquisa Fipe"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: telas[_current],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _current,
        onTap: (indice) {
          setState(() {
            _current = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        items: [
          const BottomNavigationBarItem(
              label: "Fipe", icon: Icon(Icons.car_crash_outlined)),
          BottomNavigationBarItem(
              label: "Cripto", icon: Icon(Icons.currency_bitcoin)),
          BottomNavigationBarItem(
              label: "Users", icon: Icon(Icons.person_add_alt)),
          // BottomNavigationBarItem(
          //     label: "Biblioteca", icon: Icon(Icons.folder)),
        ],
      ),
    );
  }
}
