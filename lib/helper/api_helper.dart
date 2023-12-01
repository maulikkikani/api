import 'dart:convert';

import 'package:api_test/model/api_model_page.dart';
import 'package:http/http.dart' as http;

class api_helper{
  api_helper._();

  static final api_helper api = api_helper._();

  void get_api(){
    String api = "https://dummyjson.com/products";

    http.Response res = http.get(Uri.parse(api)) as http.Response;

    Map products = jsonDecode(res as String);

    List data = products['products'];

    data.map((e) => api_model.api_model(e));
  }
}