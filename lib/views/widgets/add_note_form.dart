import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_item.dart';

import 'custom_button.dart';
import 'custom_text-field.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}
final GlobalKey<FormState> formKey=GlobalKey();
AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
class _AddNoteFormState extends State<AddNoteForm> {
  String? title;
  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children:  [
          CustomTextField(
            onSaved: (value){title=value;},
            hint: "tittle",
          ),
          CustomTextField(
            onSaved: (value){subTitle=value;},
            hint: "content",
            maxLines: 5,),
         const SizedBox(height: 15,),
        const  ColorsListView(),
          
          BlocBuilder<AddNoteCubit, AddNoteState>(
   builder: (context, state) {
    return CustomButton(
            isLoading: state is AddNoteLoading ? true : false,
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
                var currnetDate=DateTime.now();
                var FormatCurrentDate=DateFormat("dd-mm-yyyy").format(currnetDate);
                var noteModel = NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    date:FormatCurrentDate,
                    color: Colors.teal.value)
                ;

              BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              }else{
                autoValidateMode=AutovalidateMode.always;
              }
            },
          );
  },
)
        ],
      ),
    );
  }
}


