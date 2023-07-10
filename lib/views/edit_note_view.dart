import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text-field.dart';
class EditNoteVew extends StatelessWidget {
  const EditNoteVew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            SizedBox(height: 50,),
            CustomAppBar(
              title: "Edit Note",
              icon: Icons.check,
            ),
            CustomTextField(hint: "tittle"),
            CustomTextField(hint: "content",maxLines: 5,),

          ],
        ),
      ),
    );



  }
}
