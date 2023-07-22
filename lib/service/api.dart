import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Api {
  Map<String, String> get headers => {
        "host": "veiculos.fipe.org.br",
        "Reference": "http://veiculos.fipe.org.br",
        "Content-type": "application/json",
        "User-Agent": "Thunder Client (https://www.thunderclient.com)"
      };
  Future pesquisar(String pesquisa) async {
    var response;
    try {
      var url = Uri.parse("http://veiculos.fipe.org.br/api/veiculos/$pesquisa");
      response = await http.post(url, headers: headers);
    } catch (e) {
      print("AQUI NO ERRO: $e");
      return e;
    }
    if (response.statusCode == 200) {
      List dados = jsonDecode(response.body);
      return dados;
    }
  }
}
