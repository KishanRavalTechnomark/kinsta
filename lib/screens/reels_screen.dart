import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/reels_controller.dart';

class ReelsScreen extends StatelessWidget {
  final ReelsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reels'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              'Reel Data: ${controller.reelData}',
              style: TextStyle(fontSize: 24),
            )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.fetchReels(); // Example of fetching reel data
              },
              child: Text('Fetch Reels'),
            ),
          ],
        ),
      ),
    );
  }
}
