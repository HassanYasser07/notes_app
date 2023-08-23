import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text-field.dart';
class EditNoteVew extends StatefulWidget {
  const EditNoteVew({Key? key, required this.note}) : super(key: key);
final NoteModel note;

  @override
  State<EditNoteVew> createState() => _EditNoteVewState();
}

class _EditNoteVewState extends State<EditNoteVew> {
  String? title;
  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:  [
            const SizedBox(height: 50,),
             CustomAppBar(
              onPressed: (){
                if(title!=Null){
                  widget.note.title= title!;
                }
                if(subTitle!=Null){
                  widget.note.subTitle= subTitle!;
                }
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);

              },
              title: "Edit Note",
              icon: Icons.check,
            ),
            CustomTextField(
              onChanged: (value){
                title=value;
              },
                hint: widget.note.title,
            ),
             CustomTextField(
              onChanged: (value){
                subTitle=value;
              },
              hint: widget.note.subTitle,
              maxLines: 5,

            ),

          ],
        ),
      ),
    );



  }
}
