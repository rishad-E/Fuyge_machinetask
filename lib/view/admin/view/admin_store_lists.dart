import 'package:flutter/material.dart';
import 'package:fyuge_task/utils/colors/colos.dart';
import 'package:fyuge_task/utils/constants/constants.dart';
import 'package:fyuge_task/view/admin/widgets/admin_widgets.dart';
import 'package:fyuge_task/view/admin/widgets/constants/store_data.dart';
import 'package:get/get.dart';

class StoresList extends StatelessWidget {
  const StoresList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        title: primarytxt('Store Lists', 16),
        centerTitle: true,
        backgroundColor: kblack,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
          lWBox
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 170,
                  width: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      primarytxt(store[index].storeName, 18),
                      Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                            // color: boxcolor1,
                            image: DecorationImage(
                                image: AssetImage(store[index].storeImages),
                                fit: BoxFit.cover),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => sHBox,
              itemCount: store.length),
        ),
      ),
    );
  }
}
