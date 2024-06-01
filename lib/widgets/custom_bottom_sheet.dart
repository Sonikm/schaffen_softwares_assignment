import 'package:flutter/material.dart';
import 'package:schaffen_softwares_assignment/utils/colors.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 36,
      ),
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(
                Icons.link_rounded,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Invite",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.person_add_alt,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Add member",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.groups_3,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Add Group",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
