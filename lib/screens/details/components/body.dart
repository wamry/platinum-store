import 'package:firstapp/constants.dart';
import 'package:flutter/material.dart';
import '../../../models/Product.dart';
import './color_and_size.dart';
import './product_title_with_image.dart';
import './description.dart';
import './counter_with_fav_btn.dart';
import './add_to_cart.dart';

class Body extends StatelessWidget {
  final Product product;
  @override
  const Body({Key key, this.product}) : super(key: key);
  Widget build(BuildContext context) {
    // It provide us total height and width of screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  //height: size.height * 0.7 - 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
