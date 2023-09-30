// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:newbookapp/constant.dart';
import 'package:newbookapp/cubitApp/cubit/fetchur_deatals_book_cubit.dart';
import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';
import 'package:newbookapp/presantion/screens/homescreen/widgetshomescreen/best_saller_vew.dart';
import 'package:newbookapp/presantion/screens/homescreen/widgetshomescreen/list_item_vew.dart';

import 'widgetshomescreen/appbar_wadget.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
    
  }
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Castumappbar(),
                  listviwebulder(
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "    Best Saller",
                      style: style.textstyle20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Bestsallerlistviewbulder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

