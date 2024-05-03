import 'package:cloud_firestore/cloud_firestore.dart';

class NoteService {
  static final FirebaseFirestore _database = FirebaseFirestore.instance;
  static final CollectionReference _notesColecction =
      _database.collection('notes');

// menyimpan object  data dari collection firestre
  static Future<void> addNote(String title, String description) async {
    Map<String, dynamic> newNote = {
      'title': title,
      'description': description,
    };
    await _notesColecction.add(newNote);
  }

  // mengupdate
  static Future<void> updateNote(
      String id, String title, String description) async {
    Map<String, dynamic> updateNote = {
      'title': title,
      'description': description,
    };
    await _notesColecction.doc(id).update(updateNote);
  }

  // menghapus
  static Future<void> deleteNote(String id) async {
    await _notesColecction.doc(id).delete();
  }

// retrive
  static Future<QuerySnapshot> retriveNotes(String id) {
    return _notesColecction.get();
  }

// get notes dalam bentuk list (array)
  static Stream<List<Map<String, dynamic>>> getNotesList() {
    return _notesColecction.snapshots().map((querySnapshot) {
      return querySnapshot.docs.map((docSnaphoot) {
        final data = docSnaphoot.data() as Map<String, dynamic>;
        return {'id': docSnaphoot.id, ...data};
      }).toList();
    });
  }
}
