import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/screens/add_post_screen.dart';
import 'package:instagramclone/screens/feed_screen.dart';
import 'package:instagramclone/screens/profile_screen.dart';
import 'package:instagramclone/screens/search_screen.dart';

const webScreenSize = 600;

var homeScreenItem = [
  FeedScreen(),
  SearchScreen(),
  AddPostScreen(),
  Text("notification"),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
