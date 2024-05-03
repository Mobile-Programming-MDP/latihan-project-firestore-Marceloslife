import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notesapp/services/note_service.dart';

class NoteDialog extends StatelessWidget {
  final Map<String, dynamic>? note;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  NoteDialog({Key? key, this.note}) : super(key: key) {
    if (note != null) {
      _titleController.text = note!['title'];
      _descriptionController.text = note!['description'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(note == null ? 'Add Notes' : 'Update Notes'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Title',
            textAlign: TextAlign.start,
          ),
          TextField(
            controller: _titleController,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Description',
              textAlign: TextAlign.start,
            ),
          ),
          TextField(
            controller: _descriptionController,
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (note == null) {
              NoteService.addNote(
                _titleController.text,
                _descriptionController.text,
              ).whenComplete(() {
                Navigator.of(context).pop();
              });
            } else {
              NoteService.updateNote(
                note!['id'],
                _titleController.text,
                _descriptionController.text,
              ).whenComplete(() {
                Navigator.of(context).pop();
              });
            }
          },
          child: Text(note == null ? 'Add' : 'Update'),
        ),
      ],
    );
  }
}