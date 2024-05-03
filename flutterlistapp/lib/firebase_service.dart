import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterlistapp/userdata.dart';

class FirebaseService {
  static final COLLECTION_REF = 'user';

  final firestore = FirebaseFirestore.instance;
  late final CollectionReference userRef;

  FirebaseService() {
    userRef = firestore.collection(COLLECTION_REF);
  }

  Stream<QuerySnapshot<Object?>> ambildata() {
    return userRef.snapshots();
  }

  void tambah(UserData userData) {
    DocumentReference documentReference = userRef.doc(userData.nama);
    documentReference.set(userData.toJson());
  }
}
