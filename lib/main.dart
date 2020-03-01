import 'package:assinometro/src/main/HomePage.dart';
import 'package:assinometro/src/main/HomePresenter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Assinometro',
    home: new HomePage(new HomePresenterImpl()),
    theme: ThemeData(
      primaryColor: Color(0xFF4257B2)
    ),
  ));
}