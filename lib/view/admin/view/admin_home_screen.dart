import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fyuge_task/utils/colors/colos.dart';
import 'package:fyuge_task/utils/constants/constants.dart';
import 'package:fyuge_task/view/admin/view/admin_store_lists.dart';
import 'package:fyuge_task/view/admin/view/sales_man_add_screen.dart';
import 'package:fyuge_task/view/admin/widgets/admin_widgets.dart';
import 'package:get/get.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        title: primarytxt('Dairy Home', 18),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: kblack,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            primarytxt('Stores', 18),
            sHBox,
            GestureDetector(
              onTap: () {
                Get.to(() => const StoresList());
                log("message");
              },
              child: feedContainer(
                context: context,
                url: 'assets/images/Dairy-1.jpg',
              ),
            ),
            sHBox,
            primarytxt('Delivery Teams', 18),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const SalesManAddScreen());
        },
        tooltip: 'Add Delivery Boy',
        child: const Icon(Icons.add),
      ),
    );
  }
}
