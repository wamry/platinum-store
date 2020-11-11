import 'package:firstapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../models/Product.dart';
import './components/body.dart';

class DetailsScren extends StatelessWidget {
  final Product product;

  const DetailsScren({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg', color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/cart.svg'),
            onPressed: () {},
          ),
          SizedBox(width: kDefaultPaddin / 2)
        ],
      ),
      body: Body(product: product),
    );
  }
}
