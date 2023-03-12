import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  var _isLoading = false.obs;
  var _items = <String>[].obs;
  ScrollController scrollController = ScrollController();
  List<String> get items => _items;
  @override
  void onInit() {
    print('on init called');
    scrollController.addListener(() async {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        page = page + 1;
        fetchApi(page.toString());
        // getTodaysMathesApi(page.toString());
      }
    });
    // TODO: implement onInit

    super.onInit();
  }

  bool isDark = false;
  RxList images = [].obs;
  var page = 1;

  void fetchApi(String page) async {
    var headers = {
      'Authorization':
          'AvKIm9qvQfTwCEIHTPBD1mHmUUPJJiBllcD0ZiyJKOK7kwecnQRgtQt0',
      'Cookie':
          '__cf_bm=oQ9u5ky5A70urN1A9lzRIQsjp7OAlh.IR2pcjsCKqcI-1677907501-0-ARJqyOGeMPXV2GaarCO0XIZIQoVTIigZ7yRbay97aKEP68gIKcF3Oei3lAE+LNj0XQk/SvSii4VmmSNI1szsMQU='
    };
    var request = http.Request('GET',
        Uri.parse('https://api.pexels.com/v1/curated?per_page=80&page=$page'));

    request.headers.addAll(headers);

    http.StreamedResponse streamresponse = await request.send();
    var response = await http.Response.fromStream(streamresponse);
    var body = jsonDecode(response.body);
    images.addAll(body['photos']);
    log((images[0]['src']['medium']));
  }
}






























// var images;

// void fetchapi() async {
//   await http.get(
//       Uri.parse('https://api.pexels.com/v1/curated?per_page=80&page=1'),
//       headers: {
//         'Authorization':
//             'AvKIm9qvQfTwCEIHTPBD1mHmUUPJJiBllcD0ZiyJKOK7kwecnQRgtQt0'
//       }).then((value) {
//     Map result = jsonDecode(value.body);
//     setState(() {
//       images = result['photos'];
//     });
//     // var images;
//     print(images[0]);
//   });
// }

// void setState(Null Function() param0) {}
