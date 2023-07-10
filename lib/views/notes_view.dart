import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_viewBody.dart';

import 'widgets/add_note_button_sheet.dart';
class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),

            context: context, builder: (context){
          return const AddNoteButtonSheet();
        });
      },
      child: const Icon(Icons.add),),
      body:const NotesViewBody() ,
    );
  }
}

