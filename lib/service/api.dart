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
    try {
      var url = Uri.parse("http://veiculos.fipe.org.br/api/veiculos/$pesquisa");
      print(url);
      return await http.post(url, headers: headers);
    } catch (e) {
      print("AQUI NO ERRO: $e");
      return e;
    }
    // var url = Uri.parse("http://veiculos.fipe.org.br/api/veiculos/" + pesquisa);
    // return await http.post(url);
    // if (response.statusCode == 200) {
    //   // print(response);
    //   // Map<String, dynamic> dados = jsonDecode(response.body);
    //   // List videos = dados['items'].map<Video>((map) {
    //   //   // return Video.fromJson(map);
    //   // }).toList();
    //   // return videos;
    // } else {
    //   print('erro');
    //   return [];
    // }
  }
}
