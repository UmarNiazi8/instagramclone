import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String username;
  final String bio;
  final dynamic followers;
  final dynamic following;

  const User({
    required this.email,
    required this.uid,
    required this.bio,
    required this.followers,
    required this.following,
    required this.photoUrl,
    required this.username,
  });

  Map<String, dynamic> toJson() => {
        "email": email,
        "uid": uid,
        "bio": bio,
        "username": username,
        "followers": [],
        "following": [],
        'photoUrl': photoUrl,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
        email: snapshot["email"],
        uid: snapshot["uid"],
        bio: snapshot["bio"],
        followers: snapshot["followers"],
        following: snapshot["following"],
        photoUrl: snapshot['photoUrl'],
        username: snapshot["username"]);
  }
}
