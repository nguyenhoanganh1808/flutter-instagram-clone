import 'package:flutter/material.dart';
import 'package:flutter_instagram/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_instagram/models/user.dart' as model;

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    model.User currentUser = Provider.of<UserProvider>(context).getUser;

    return Scaffold(
      body: Center(
        child: Text(currentUser.bio),
      ),
    );
  }
}
