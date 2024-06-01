import 'package:flutter/material.dart';
import 'package:schaffen_softwares_assignment/utils/colors.dart';

class Member extends StatelessWidget {
  final bool isFollowing;

  const Member({super.key, required this.isFollowing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/image-2.png",
                  )),
              const SizedBox(
                width: 8,
              ),
              const Column(
                children: [
                  Text(
                    "Yashika",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "29, India",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
                color: isFollowing
                    ? AppColors.customDarkGray
                    : AppColors.secoundryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                isFollowing ? "Following" : "Add",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
