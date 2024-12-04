import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/util/app_data/icons/icons.dart';
import 'package:hugeicons/hugeicons.dart';

Container slider_item(Map<String, dynamic> item) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Stack(
      children: [
        // Image
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            item['image'],
            width: double.infinity,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return const Center(
                child: Icon(Icons.error, size: 50, color: Colors.red),
              );
            },
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: 0,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Icon(
              HugeIcons.strokeRoundedPlayCircle,
              color: Colors.white,
              size: 38,
            )),
        // Title overlay
        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: Text(
            item['title'],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
