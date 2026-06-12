// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'project.dart';

// Reproduction case from
// https://github.com/flutter/flutter/issues/161466#issuecomment-2743309718.
class HotRestartWithPausedChildIsolateProject extends Project {
  @override
<<<<<<< HEAD
  final pubspec = '''
=======
  final String pubspec = '''
>>>>>>> ea121f8859e4b13e47a8f845e4586164519588bc
  name: test
  environment:
    sdk: ^3.7.0-0

  dependencies:
    flutter:
      sdk: flutter
  ''';

  @override
<<<<<<< HEAD
  final main = r'''
=======
  final String main = r'''
>>>>>>> ea121f8859e4b13e47a8f845e4586164519588bc
  import 'dart:async';
  import 'dart:developer';
  import 'dart:isolate';

  import 'package:flutter/material.dart';

  void main() {
    WidgetsFlutterBinding.ensureInitialized().platformDispatcher.onError = (Object error, StackTrace? stack) {
      print('HERE');
      return true;
    };
    runApp(
      const Center(
        child: Text(
          'Hello, world!',
          key: Key('title'),
          textDirection: TextDirection.ltr,
        ),
      ),
    );

    Isolate.run(() {
      print('COMPUTING');
      debugger();
    });
  }
  ''';
}
