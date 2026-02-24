import 'package:flutter/material.dart';

void showBuyNotification(BuildContext context, String productName) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'Purchased $productName',
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      backgroundColor: const Color(0xFF1C1C1C),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(0),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      duration: const Duration(seconds: 2),
    ),
  );
}
