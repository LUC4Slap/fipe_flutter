import 'package:flutter/material.dart';

import '../service/api.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class Fipe extends StatefulWidget {
  const Fipe({super.key});

  @override
  State<Fipe> createState() => _FipeState();
}

class _FipeState extends State<Fipe> {
  final TextEditingController colorController = TextEditingController();
  final TextEditingController iconController = TextEditingController();
  final List<DropdownMenuEntry> colorEntries = <DropdownMenuEntry>[];
  final List<DropdownMenuEntry> iconEntries = <DropdownMenuEntry>[];
  String dropdownValue = list.first;

  _listar(String pesquisa) async {
    print("NA CHAMADA DA API");
    Api api = Api();
    var resposta = await api.pesquisar(pesquisa);
    // print(resposta == null ? "SEM RESPOSTA" : resposta);
    print(resposta);
  }

  @override
  Widget build(BuildContext context) {
    _listar("ConsultarTabelaDeReferencia");
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            isExpanded: true,
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
