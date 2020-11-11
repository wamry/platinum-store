import 'package:firstapp/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import './categories.dart';
import './item_card.dart';
import '../../../models/Product.dart';

class Body extends StatelessWidget {
  Body({Key key, this.section, this.products}) : super(key: key);

  final String section;
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(section,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsScren(product: products[index]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
