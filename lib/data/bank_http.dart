import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';


@GenerateMocks([BankHttp])

class BankHttp {
  Future<String> euroToReal() async {
    var url = Uri.http('economia.awesomeapi.com.br', '/last/EUR-BRL');
    var response = await http.get(url);
    if (response.statusCode == 200){
      var jsonResponse = jsonDecode(response.body) as Map<String,dynamic>;
      String value = jsonResponse['EURBRL']['high'];
      return value;
    } else{
      log('Could not connect to the API: ${response.statusCode}');
      return '?';
    }
  }
}
