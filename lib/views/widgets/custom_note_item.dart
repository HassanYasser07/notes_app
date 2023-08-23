import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({Key? key, required this.note}) : super(key: key);
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context){
          return  EditNoteVew(
            note: note,
          );
        } ));
      },

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color:  Color(note.color),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:  Text(note.title,
                  style: const TextStyle(
                      fontSize: 26,
                      color: Colors.black
                  ),),
                subtitle:  Padding(
                  padding: const EdgeInsets.only(top: 16,bottom: 16),
                  child: Text(note.subTitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontSize: 20),),
                ),

                trailing: IconButton(
                  onPressed: (){
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },icon: const Icon(Icons.delete,
                  color: Colors.black,
                  size: 30,),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24,),
                child: Text(note.date,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.4),
                  ),),
              ),
            ],
          ),

        ),

      ),
    );
  }
}
