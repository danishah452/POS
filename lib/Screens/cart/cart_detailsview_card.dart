import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/home/details_screen.dart';

import '../../../constants.dart';
import 'cart_model.dart';

class CartDetailsViewCard extends StatelessWidget {
  const CartDetailsViewCard({
    Key key,
     this.productItem,
  }) : super(key: key);

  final Product productItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(productItem.imgUrl),
      ),
      title: Text(
        productItem.title,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            .copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: FittedBox(
        child: Row(
          children: [

            Text(
              "  x ${productItem.qty}",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
