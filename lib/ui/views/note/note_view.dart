import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab42/ui/views/note/note_viewmodel.dart';
import 'package:stacked/stacked.dart';

class NoteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NoteViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text(model.title),
        ),
        body: Center(
          child: Text("Hello My"),
        ),
      ),
      viewModelBuilder: () => NoteViewModel(),
    );
  }
}
