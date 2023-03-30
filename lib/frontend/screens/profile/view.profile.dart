import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SwitchListTile(
                value: false,
                onChanged: (val) {},
                title: const Text("Show Wanted Posts")),
            SwitchListTile(
                value: true,
                onChanged: (val) {},
                title: const Text("Show For Sale Posts")),
          ],
        ),
      ),
    );
  }
}
