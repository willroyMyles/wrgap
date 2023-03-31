import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wrgap/backend/extensions/extension.textButton.dart';
import 'package:wrgap/backend/utils/util.theme.dart';
import 'package:wrgap/frontend/screens/createFeed/view.createFeed.dart';
import 'package:wrgap/frontend/screens/feed/details/view.feedDetails.dart';
import 'package:wrgap/frontend/screens/feed/state.feeds.dart';

class FeedsView extends StatelessWidget {
  FeedsView({super.key});
  final controller = Get.put(FeedState());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(() {
            return Container(
              child: Row(children: [
                ...controller.options.map((e) {
                  var idx = controller.options.indexOf(e);
                  var isSelected = controller.selectedIcon.value == idx;
                  return InkWell(
                    onTap: () {
                      controller.selectedIcon.value = idx;
                    },
                    child: AnimatedContainer(
                      height: 40,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: isSelected ? 2 : 0,
                                color: isSelected
                                    ? Theme.of(context).primaryColor
                                    : Colors.transparent)),
                        color: Theme.of(context)
                            .primaryColor
                            .withOpacity(isSelected ? .0 : 0),
                        // borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(e.capitalize!),
                    ),
                  );
                }),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ]),
            );
          }),
          Expanded(
            child: ListView.builder(
              itemCount: controller.feeds.length,
              itemBuilder: (context, index) {
                var model = controller.feeds.elementAt(index);
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 6,
                          // offset: const Offset(3, 3),
                        )
                      ]),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => FeedDetails(model: model));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(model.section.name),
                            Text(model.status.name),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(model.title),
                        const SizedBox(height: 4),
                        Text(model.body),
                        const Divider(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                  // color: Colors.red,
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                          onPressed: () {
                            Get.to(() => CreateFeedView());
                          },
                          child: const Text("Create Post"))
                      .primary,
                  sizer
                ],
              ))
        ],
      ),
    );
  }
}
