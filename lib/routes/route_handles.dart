import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app_test/pages/home/page_a.dart';
import 'package:flutter_app_test/pages/main.dart';

var aHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
      return PageA();
    });



var mainHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<Object>> params) {
      return Main();
    });
