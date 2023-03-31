import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wrgap/backend/extensions/extension.text.dart';
import 'package:wrgap/backend/extensions/extension.textButton.dart';
import 'package:wrgap/backend/store/store.data.dart';
import 'package:wrgap/backend/utils/util.theme.dart';
import 'package:wrgap/backend/utils/util.widgets.dart';
import 'package:wrgap/frontend/screens/createFeed/state.createFeed.dart';

class CreateFeedView extends StatelessWidget {
  CreateFeedView({super.key});
  final controller = Get.put(CreateFeedState());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 50,
          padding: const EdgeInsets.all(5),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            backButton,
            const Spacer(),
            TextButton(
                    onPressed: () {
                      controller.onCreate();
                    },
                    child: const Text("Create!"))
                .primaryFloat
          ]),
        ),
        body: GetBuilder<CreateFeedState>(
          init: controller,
          initState: (_) {},
          builder: (_) {
            return Container(
                padding: const EdgeInsets.all(5),
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Obx(() => Column(
                        children: [
                          ...controller.creationModel.keys.map((k) {
                            if (controller.ignores.contains(k)) {
                              return Container();
                            }

                            if (controller.dropDowns.contains(k)) {
                              List<dynamic> list = [];
                              Function? update;
                              if (k == "category") {
                                list = partsCategory
                                    .map((element) => element[0])
                                    .toList();

                                update = controller.updateCategory;
                              }
                              if (k == "subCategory") {
                                var l = partsCategory.firstWhere(
                                    (element) => element.contains(
                                        controller.creationModel["category"]),
                                    orElse: () => []);
                                list = l;
                              }
                              if (k == "make") {
                                list = carsList
                                    .map((element) => element[0])
                                    .toList();

                                update = controller.updateMake;
                              }
                              if (k == "model") {
                                var l = carsList.firstWhere(
                                    (element) => element.contains(
                                        controller.creationModel["make"]),
                                    orElse: () => []);
                                list = l;
                              }

                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3.0),
                                      child: Text(k.toUpperCase()).hint,
                                    ),
                                    sizer,
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      decoration: BoxDecoration(
                                          // color: Colors.amber,

                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 1, color: Colors.grey)),
                                      child: DropdownButton<dynamic>(
                                          isExpanded: true,
                                          underline: Container(),
                                          value: controller.creationModel[k],
                                          onChanged: (e) {
                                            // controller.creationModel[k] = e;
                                            if (k == "make" ||
                                                k == "category") {
                                              update!(e);
                                            } else {
                                              controller.creationModel
                                                  .update(k, (value) => e);
                                            }
                                          },
                                          items: list.map((e) {
                                            return DropdownMenuItem<dynamic>(
                                              value: e,
                                              child: Text("$e"),
                                            );
                                          }).toList()),
                                    ),
                                  ],
                                ),
                              );
                            }

                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 3.0),
                                    child: Text(k.toUpperCase()).hint,
                                  ),
                                  sizer,
                                  Container(
                                    decoration: BoxDecoration(
                                        // color: Colors.amber,
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 1, color: Colors.grey)),
                                    child: TextFormField(
                                      onChanged: (val) {
                                        controller.creationModel
                                            .update(k, (value) => val);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                          const Text("Creating post"),
                        ],
                      )),
                ));
          },
        ),
      ),
    );
  }
}
