import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/features/search/widget/serch_item_widget.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText.labelMedium(
          'Search Result',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SerchItemWidget(),
        ],
      ),
    );
  }
}
