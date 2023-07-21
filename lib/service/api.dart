import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  Future pesquisar(String pesquisa) async {
    // &channelId=$ID_CANAL => para pegar de um canal
    var url =
        await Uri.parse("http://veiculos.fipe.org.br/api/veiculos/" + pesquisa);
    var response = await http.post(url);
    print(response);
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
