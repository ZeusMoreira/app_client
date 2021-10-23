// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:app_client/TelaHome/telahome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(TelaHome());

}


