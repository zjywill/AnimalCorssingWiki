import 'dart:developer';

import 'package:animalcorssingwiki/model/pojo/Bug.dart';
import 'package:animalcorssingwiki/model/pojo/Fish.dart';

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class AnimalApi {
//  Future<http.Response> fetchForecast() {
//    return http.get(
//        'https://api.darksky.net/forecast/14ecc9a31114895968a05c70cf5be1a9/37.8267,-122.4233?exclude=minutely,alerts,flags&units=ca');
//  }
  AnimalApi();

  Future<Fish> fetchFish(pole) async {
    log('pole: $pole');
    final response =
        await http.get('http://li.zerob13.com:8080/function/ac/$pole/fish');
    log('fetchFish response $response');
    if (response.statusCode == 200) {
      log('fetchFish response 200');
      return Fish.fromJson(json.decode(response.body));
    } else {
      log('fetchFish Failed');
      throw Exception('Failed to fetch Fish');
    }
  }

  Future<Bug> fetchBug(pole) async {
    log('pole: $pole');
    final response =
    await http.get('http://li.zerob13.com:8080/function/ac/$pole/bug');
    log('fetchBug response $response');
    if (response.statusCode == 200) {
      log('fetchBug response 200');
      return Bug.fromJson(json.decode(response.body));
    } else {
      log('fetchBug Failed');
      throw Exception('Failed to fetch Bug');
    }
  }
}
