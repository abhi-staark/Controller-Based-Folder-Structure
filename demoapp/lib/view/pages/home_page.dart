import 'package:demoapp/controllers/home/home_controller.dart';
import 'package:demoapp/view/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// This file defines the Home page UI. It uses HomeController to fetch and manage
/// the home screen data. Displays a list of cards using the ReusableCard widget.

class HomePage extends StatelessWidget {
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Obx(() {
        return _homeController.items.isEmpty
            ? Center(child: Text('No items available.'))
            : ListView.builder(
                itemCount: _homeController.items.length,
                itemBuilder: (context, index) {
                  final item = _homeController.items[index];
                  return ReusableCard(
                    title: item['title'],
                    description: item['description'],
                    imageUrl: item['imageUrl'],
                  );
                },
              );
      }),
    );
  }
}
