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
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: viewportConstraints.maxWidth),
              child: Column(
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {
                      widget.presenter.onLoginClick(context);
                    },
                  ),
                  Container(
                    color: Color(0xFFFFFFFF),
                    height: 500,
                  ),
                  Container(
                    color: Color(0xFF4257B2),
                    height: 120,
                  )
                ],
              ),
            ),
          );
        });
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
