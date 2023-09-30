import 'package:flutter/material.dart';
import 'package:newbookapp/presantion/screens/search_sceen/widgets/text_button_search.dart';

class seachscreenbody extends StatelessWidget {
  const seachscreenbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child:Column(
        children: [
          textbuttomsearch(),
           SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: TextStyle(
              fontSize: 16
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ) ),
    );
  }

}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: BookListViewItem(),
          //child:downitiemvewbulder(),
          child:Text("data")
        );
      },
    );
  }
}