import 'package:flutter/material.dart';
import 'package:get/get.dart';


/*enum ToastTypes {
  success,
  warning,
  error,
}
Future<void> showCustomToast({
  int showAfterInMilliseconds = 0,
  ToastTypes toastType = ToastTypes.success,
  required String contentText,
  double padding = 40,
  bool onTheTop = true,
  int duration = 3,
  bool blurEffectEnabled = false,
}) async {
  await Future.delayed(Duration(milliseconds: showAfterInMilliseconds));

  Get.snackbar(
    '',
    '',
    snackPosition: onTheTop ? SnackPosition.TOP : SnackPosition.BOTTOM,
    margin: EdgeInsets.only(
      left: 20,
      right: 20,
      top: onTheTop ? padding : 0,
      bottom: onTheTop ? 0 : padding,
    ),
    overlayBlur: blurEffectEnabled ? 3 : 0,
    backgroundColor: Colors.white,
    borderColor: toastType == ToastTypes.success
        ? Colors.green
        : toastType == ToastTypes.error
        ? Colors.red
        : Colors.orange,
    borderWidth: 0.6,
    boxShadows: <BoxShadow>[
      BoxShadow(
        color: toastType == ToastTypes.success
            ? Colors.green.withOpacity(0.1)
            : toastType == ToastTypes.error
            ? Colors.red.withOpacity(0.1)
            : Colors.orange.withOpacity(0.1),
        spreadRadius: 4,
        blurRadius: 4,
      )
    ],
    onTap: (GetBar<Object> _) {
      Get.back();
    },
    borderRadius: 20,
    animationDuration: const Duration(milliseconds: 200),
    duration: Duration(seconds: duration),
    padding: const EdgeInsets.only(top: 10, bottom: 7),
    titleText: Row(
      children: [
        const SizedBox(
          width: 12,
        ),
        Icon(
          toastType == ToastTypes.success
              ? Icons.check
              : toastType == ToastTypes.error
              ? Icons.close
              : Icons.warning,
          size: 28,
          color: toastType == ToastTypes.success
              ? Colors.green
              : toastType == ToastTypes.error
              ? Colors.red
              : Colors.orange,
        ),
        const SizedBox(
          width: 12,
        ),
        Flexible(
          child: Text(
            contentText,
            maxLines: 10,
            style: TextStyle(
                color:
                toastType == ToastTypes.success ? Colors.green : Colors.red,
                fontSize: 15),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    ),
    messageText: const SizedBox(
      height: 0,
      width: 0,
    ),
  );
  await duration.delay();
  await Future.delayed(const Duration(milliseconds: 300));
  return;
}*/
