import 'dart:developer';
import 'dart:io';
import 'package:animalcorssingwiki/model/pojo/Bug.dart';
import 'package:animalcorssingwiki/model/pojo/Fish.dart';

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class AnimalApi {
//  Future<http.Response> fetchForecast() {
//    return http.get(
//        'https://api.darksky.net/forecast/14ecc9a31114895968a05c70cf5be1a9/37.8267,-122.4233?exclude=minutely,alerts,flags&units=ca');
//  }
  AnimalApi();

  Future<Fish> fetchFish(pole) async {
    log('pole: $pole');
    String contents = "";
    String cacheName = "fish$pole";
    if (Platform.isAndroid || Platform.isIOS) {
      contents = await readCache(cacheName);
    }
    if (contents.isNotEmpty) {
      return Fish.fromJson(json.decode(contents));
    }
    final response =
        await http.get('http://li.zerob13.com:8080/function/ac/$pole/fish');
    log('fetchFish response $response');
    if (response.statusCode == 200) {
      log('fetchFish response 200');
      if (Platform.isAndroid || Platform.isIOS) {
        await writeCache(cacheName, response.body);
      }
      return Fish.fromJson(json.decode(response.body));
    } else {
      log('fetchFish Failed');
      throw Exception('Failed to fetch Fish');
    }
  }

  Future<Bug> fetchBug(pole) async {
    log('pole: $pole');
    String cacheName = "bugs$pole";
    String contents = "";
    if (Platform.isAndroid || Platform.isIOS) {
      contents = await readCache(cacheName);
    }
    if (contents.isNotEmpty) {
      return Bug.fromJson(json.decode(contents));
    }
    final response =
        await http.get('http://li.zerob13.com:8080/function/ac/$pole/bug');
    log('fetchBug response $response');
    if (response.statusCode == 200) {
      log('fetchBug response 200');
      if (Platform.isAndroid || Platform.isIOS) {
        await writeCache(cacheName, response.body);
      }
      return Bug.fromJson(json.decode(response.body));
    } else {
      log('fetchBug Failed');
      throw Exception('Failed to fetch Bug');
    }
  }

  Future<File> writeCache(String name, String content) async {
    final file = await _localFile(name);
    return file.writeAsString(content);
  }

  Future<String> readCache(String name) async {
    try {
      final file = await _localFile(name);
      String contents = await file.readAsString();
      return contents;
    } catch (e) {
      return "";
    }
  }

  Future<String> get _localPath async {
    final directory = await getTemporaryDirectory();
    return directory.path;
  }

  Future<File> _localFile(String name) async {
    final path = await _localPath;
    return File('$path/$name.cache');
  }
}
