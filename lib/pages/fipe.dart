import 'package:flutter/widgets.dart';

import '../service/api.dart';

class Fipe extends StatefulWidget {
  const Fipe({super.key});

  @override
  State<Fipe> createState() => _FipeState();
}

class _FipeState extends State<Fipe> {
  _listar(String pesquisa) {
    Api api = Api();
    return api.pesquisar(pesquisa);
  }

  @override
  Widget build(BuildContext context) {
    _listar("ConsultarTabelaDeReferencia");
    return const Center(
      child: Text("AQUI VAI SER A PESQUISA"),
    );
  }
}
