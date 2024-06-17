import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String uid;
  final String bio;
  final String username;
  final List folowers;
  final List folowing;
  final String photoUrl;

  User({
    required this.email,
    required this.uid,
    required this.bio,
    required this.username,
    required this.folowers,
    required this.folowing,
    required this.photoUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'uid': uid,
      'bio': bio,
      'username': username,
      'folowers': folowers,
      'folowing': folowing,
      'photoUrl': photoUrl,
    };
  }

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = (snap.data() as Map<String, dynamic>);
    return User(
      bio: snapshot['bio'],
      email: snapshot['email'],
      folowers: snapshot['folowers'],
      folowing: snapshot['folowing'],
      photoUrl: snapshot['photoUrl'],
      uid: snapshot['uid'],
      username: snapshot['username'],
    );
  }
}
