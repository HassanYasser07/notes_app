import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

import 'custom_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children:
        const [
          SizedBox(height: 50),
          CustomAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          Expanded(child: CustomListView()),
        ],
      ),
    );
  }
}


