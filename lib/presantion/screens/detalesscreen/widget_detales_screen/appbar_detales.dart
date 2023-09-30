import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class appbardetales extends StatelessWidget {
  const appbardetales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.close),
            color: Colors.white,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined),
              color: Colors.white)
        ],
      ),
    );
  }
}
