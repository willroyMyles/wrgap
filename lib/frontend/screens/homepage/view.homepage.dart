import 'package:flutter/material.dart';
import 'package:wrgap/frontend/screens/feed/view.feeds.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(5),
        margin: EdgeInsets.zero,
        color: Colors.white,
        child: SafeArea(
          child: Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildButton(IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ))),
                buildButton(
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.beach_access,
                        color: Colors.white,
                      )),
                ),
              ]),
        ),
      ),
      body: SafeArea(
        child: PageView(
          children: [
            FeedsView(),
          ],
        ),
      ),
    );
  }

  Widget buildButton(Widget button) {
    return ShaderMask(
      shaderCallback: (bounds) {
        print(bounds);
        return const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 54, 54, 54),
              Color.fromARGB(255, 86, 174, 250),
              Color.fromARGB(255, 107, 255, 114)
            ]).createShader(bounds);
      },
      child: button,
    );
  }
}
