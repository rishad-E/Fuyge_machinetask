import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fyuge_task/model/store_model.dart';
import 'package:fyuge_task/utils/colors/colos.dart';
import 'package:fyuge_task/utils/constants/constants.dart';
import 'package:fyuge_task/view/admin/widgets/admin_widgets.dart';
import 'package:fyuge_task/view/admin/widgets/constants/store_data.dart';
import 'package:get/get.dart';

class SalesManAddScreen extends StatefulWidget {
  const SalesManAddScreen({super.key});

  @override
  State<SalesManAddScreen> createState() => _SalesManAddScreenState();
}

class _SalesManAddScreenState extends State<SalesManAddScreen> {
  final TextEditingController controller = TextEditingController();
  StoreModel? selectedStore;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: primarytxt('Delivery Boy Add Screen', 18),
        centerTitle: true,
        toolbarHeight: 70,
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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            CircleAvatar(
              radius: 55,
              child: Image.asset('assets/images/profile.png'),
            ),
            lHBox,
            salesmanaddTF("User name", false, controller),
            sHBox,
            salesmanaddTF("Name", false, controller),
            sHBox,
            salesmanaddTF("Email", false, controller),
            sHBox,
            salesmanaddTF("Password", false, controller),
            sHBox,
            salesmanaddTF("Phone number", false, controller),
            sHBox,
            salesmanaddTF("address", false, controller),
            sHBox,
            SizedBox(
              height: 70,
              // width: Null,
              child: DropdownButtonFormField<StoreModel>(
                dropdownColor: Colors.black,
                hint: const Text(
                  'Select Store',
                  style: TextStyle(color: Colors.white70),
                ),
                value: selectedStore,
                items: store.map((StoreModel store) {
                  return DropdownMenuItem<StoreModel>(
                    value: store,
                    child: Text(
                      store.storeName,
                      style: const TextStyle(color: Colors.white70),
                    ),
                  );
                }).toList(),
                onChanged: (StoreModel? value) {
                  // Handle the selected store
                  if (value != null) {
                    setState(() {
                      selectedStore = value;
                    });
                    log('Selected Store: ${value.storeName}');
                  }
                },
              ),
            ),
            sHBox,
            Align(
              alignment: Alignment.topRight,
              child: addButton(
                context,
                () {
                  log('adding button');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
