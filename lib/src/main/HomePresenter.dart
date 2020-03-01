import 'HomePage.dart';

class HomePresenter {
  HomeView view;

  Future onLoginClick(context) async {}
}

class HomePresenterImpl implements HomePresenter {
  @override
  HomeView view;

  HomePresenterImpl();

  @override
  Future onLoginClick(context) async {
    view.navigateToSubPage(context);
  }
}
