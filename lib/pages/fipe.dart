import 'dart:ffi';

import 'package:flutter/material.dart';

import '../service/api.dart';

List<Map> list = <Map>[];

class Fipe extends StatefulWidget {
  const Fipe({super.key});

  @override
  State<Fipe> createState() => _FipeState();
}

class _FipeState extends State<Fipe> {
  // final TextEditingController colorController = TextEditingController();
  // final TextEditingController iconController = TextEditingController();
  // final List<DropdownMenuEntry> colorEntries = <DropdownMenuEntry>[];
  // final List<DropdownMenuEntry> iconEntries = <DropdownMenuEntry>[];
  final dropdownValue = ValueNotifier('');

  _listar(String pesquisa) async {
    print("NA CHAMADA DA API");
    Api api = Api();
    var resposta = await api.pesquisar(pesquisa);
    for (var item in resposta) {
      list.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _listar("ConsultarTabelaDeReferencia");

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ValueListenableBuilder(
          valueListenable: dropdownValue,
          builder: (BuildContext context, String value, _) {
            return DropdownButton<String>(
              hint: const Text("Selecione um ano"),
              value: (value.isEmpty) ? null : value,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              isExpanded: true,
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? escolha) =>
                  dropdownValue.value = escolha.toString(),
              items: list.map<DropdownMenuItem<String>>((ano) {
                return DropdownMenuItem<String>(
                  value: ano['Mes'],
                  child: Text(ano['Mes']!),
                );
              }).toList(),
            );
          }),
      // Column(
      //   children: [],
      // ),
    );
  }
}
