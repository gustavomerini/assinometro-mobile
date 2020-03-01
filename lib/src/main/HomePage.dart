import 'package:assinometro/src/login/LoginPage.dart';
import 'package:assinometro/src/login/LoginPresenter.dart';
import 'package:flutter/material.dart';

import 'HomePresenter.dart';

class HomePage extends StatefulWidget {
  final HomePresenter presenter;

  HomePage(this.presenter, {Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements HomeView {

  @override
  void initState() {
    this.widget.presenter.view = this;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Assinometro"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          this.widget.presenter.onLoginClick(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  void navigateToSubPage(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage(LoginPresenterImpl())));
  }
}

class HomeView {
  void navigateToSubPage(context) {}
}
