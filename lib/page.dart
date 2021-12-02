import 'package:flutter/material.dart';

final pages = [
  new PageViewModel(
      const Color(0xFFFFFFFF),
      'assets/images/hotels.png',
      'Hotels',
      'All hotels and hotels are sorted by hospitality rating',
      'assets/images/key.png'),
  new PageViewModel(
      const Color(0xFF65B0B4),
      'assets/images/banks.png',
      'Bank',
      'We carefully verify all banks before adding them into the app',
      'assets/images/wallet.png'),
  new PageViewModel(
      const Color(0xFF9B90BC),
      'assets/images/stores.png',
      'Store',
      'All local stores are categorized for your convenience',
      'assets/images/shopping_cart.png'),
];

class Page extends StatelessWidget {
  final PageViewModel viewModel;
  final double parcentVisible;

  Page({
    this.viewModel,
    this.parcentVisible = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      color: viewModel.colors,
      child: new Opacity(
        opacity: parcentVisible,
        child:
            new Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          new Transform(
            transform: new Matrix4.translationValues(0.0,50.0 * (1.0 - parcentVisible),0.0),
            child: new Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: new Image.asset(viewModel.heroAssetPath,
                  width: 200.0, height: 200.0),
            ),
          ),
          new Transform(
            transform: new Matrix4.translationValues(0.0,30.0 * (1.0 - parcentVisible),0.0),
            child: new Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: new Text(
                viewModel.title,
                style: new TextStyle(
                    color: Colors.white,
                    fontFamily: 'FlamanteRoma',
                    fontSize: 34.0),
              ),
            ),
          ),
          new Transform(
            transform: new Matrix4.translationValues(0.0,30.0 * (1.0 - parcentVisible),0.0),
            child: new Padding(
              padding: const EdgeInsets.only(bottom: 75.0),
              child: new Text(
                viewModel.body,
                textAlign: TextAlign.center,
                style: new TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class PageViewModel {
  final Color colors;
  final String heroAssetPath;
  final String title;
  final String body;
  final String iconAssetIcon;

  PageViewModel(this.colors, this.heroAssetPath, this.title, this.body,
      this.iconAssetIcon);
}
