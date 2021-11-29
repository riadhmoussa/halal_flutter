import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animations/loading_animations.dart';


class DialogHelper{



  //show loading
  static void showLoading([String? message]) {
    Get.dialog(
      Dialog(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [LoadingBouncingGrid.square(
              backgroundColor: Colors.green,

            ),
            ],
          ),
        ),
      ),
    );
  }

  //hide loading
  static void hideLoading() {
    if (Get.isDialogOpen!) Get.back();
  }
}