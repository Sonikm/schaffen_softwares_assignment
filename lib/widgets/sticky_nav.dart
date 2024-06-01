import 'package:flutter/material.dart';
import 'package:schaffen_softwares_assignment/utils/colors.dart';
import 'package:schaffen_softwares_assignment/widgets/custom_bottom_sheet.dart';

class StickyNav extends StatelessWidget {
  const StickyNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(132, 146, 40, 50),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(4),
                child: const Icon(
                  Icons.arrow_back_rounded,
                  size: 26,
                  color: AppColors.whiteColor,
                ),
              ),
              const SizedBox(
                  width: 10), // Add some spacing between the icon and the image
              Container(
                margin: const EdgeInsets.only(right: 6),
                width: 40, // Add width to the image container
                height: 40, // Add height to the image container
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/image-1.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                  width: 10), // Add some spacing between the image and the text
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The weekend",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Community. +11K Members",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return CustomBottomSheet();
                },
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(132, 146, 40, 50),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(4),
              child: const Icon(
                Icons.more_vert,
                size: 26,
                color: AppColors.whiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
