import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import './components/body.dart';
import '../../constants.dart';
import '../../models/Product.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({this.section}) : super();

  final String section;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Body(section: section, products: sectionedProducts[section]));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              //By defaul our icon color is white
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              //By defaul our icon color is white
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          SizedBox(width: kDefaultPaddin / 2)
        ]);
  }
}
