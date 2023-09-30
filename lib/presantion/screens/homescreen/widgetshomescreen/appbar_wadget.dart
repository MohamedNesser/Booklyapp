import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Castumappbar extends StatelessWidget {
  const Castumappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/logo-.png",
            height: 40,
          ),
          IconButton(icon: Icon(FontAwesomeIcons.search), onPressed: () {
            GoRouter.of(context).push('/seachscreenbody');
          })
        ],
      ),
    );
  }
}
