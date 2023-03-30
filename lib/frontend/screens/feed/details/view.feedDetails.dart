import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wrgap/backend/models/model.feed.dart';

class FeedDetails extends StatelessWidget {
  final FeedModel model;
  const FeedDetails({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.amber,
          bottomNavigationBar: Container(
              margin: const EdgeInsets.symmetric(horizontal: 0),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.0),
                        blurRadius: 8,
                        offset: const Offset(0, 0))
                  ]),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Row(
                        children: [Icon(Icons.chevron_left), Text("Back")],
                      )),
                  const Spacer()
                ],
              )),
          body: Column(children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.05),
                        blurRadius: 8,
                        offset: const Offset(0, 5))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(model.title),
                  const Divider(),
                  Text(model.body),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(model.section.name),
                      Text(model.status.name)
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
