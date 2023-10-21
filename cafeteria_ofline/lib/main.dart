import 'dart:io';

import 'package:cafeteria_ofline/pag/home.dart';
import 'package:flutter/material.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized

  if (Platform.isWindows || Platform.isLinux) {
    // Initialize FFI~
    sqfliteFfiInit();
  }

//====================================================
//
//====================================================

  databaseFactory = databaseFactoryFfi;
  runApp(const homestart());
}

class homestart extends StatelessWidget {
  const homestart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'Home': (context) => Home(),
      },
      initialRoute: '',
      debugShowCheckedModeBanner: false,
    );
  }
}
