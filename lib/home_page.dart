import 'package:flutter/material.dart';
import 'package:schaffen_softwares_assignment/utils/colors.dart';
import 'package:schaffen_softwares_assignment/widgets/FeatureOptions.dart';
import 'package:schaffen_softwares_assignment/widgets/member.dart';
import 'package:schaffen_softwares_assignment/widgets/custom_bottom_sheet.dart';
import 'package:schaffen_softwares_assignment/widgets/sticky_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(isSearch ? 80 : 0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: AppBar(
              backgroundColor: AppColors.primaryColor,
              title: StickyNav(),
            ),
          ),
        ),
        body: Container(
          color: AppColors.whiteColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                isSearch
                    ? SizedBox()
                    : Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 240,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/image-1.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 16,
                                left: 16,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: AppColors.blackColor,
                                    shape: BoxShape.circle,
                                  ),
                                  padding: const EdgeInsets.all(4),
                                  child: const Icon(
                                    Icons.arrow_back_rounded,
                                    size: 26,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 16,
                                right: 16,
                                child: GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return CustomBottomSheet();
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.more_vert,
                                    size: 26,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            color: AppColors.primaryColor,
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border:
                                        Border.all(color: AppColors.whiteColor),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.share_outlined,
                                    color: AppColors.whiteColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
                  child: Column(
                    children: [
                      isSearch
                          ? SizedBox()
                          : Column(
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text:
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat nulla efficitur sit amet. Proin eu lorem libero. Sed id enim in urna tincidunt sodales. Vivamus vel semper ame...",
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' Read more',
                                        style: TextStyle(
                                          color: AppColors.secoundryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                // Adding horizontal ListView with scrollbar
                                SizedBox(
                                  height: 25,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (context, index) => Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 2),
                                      margin: const EdgeInsets.only(right: 6),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: AppColors.secoundryColor,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        index == 4 ? "+1" : "Outdoor",
                                        style: const TextStyle(
                                          color: AppColors.secoundryColor,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 20,
                                ),

                                Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Media, docs, and liks",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    SizedBox(
                                      height: 100,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 5,
                                        itemBuilder: (context, index) =>
                                            Container(
                                          margin:
                                              const EdgeInsets.only(right: 6),
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                "assets/image-1.png",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Mute Notification",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Icon(
                                          Icons.toggle_off,
                                          size: 45,
                                          color: AppColors.customDarkGray,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Featureoptions(
                                      text: "Clear chat",
                                      icon: Icons.delete_outline,
                                      color: AppColors.blackColor,
                                    ),
                                    const Featureoptions(
                                      text: "Encryption",
                                      icon: Icons.lock_outlined,
                                      color: AppColors.blackColor,
                                    ),
                                    const Featureoptions(
                                      text: "Exit community",
                                      icon: Icons.exit_to_app_outlined,
                                      color: AppColors.secoundryColor,
                                    ),
                                    const Featureoptions(
                                      text: "Report",
                                      icon: Icons.report,
                                      color: AppColors.secoundryColor,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              isSearch
                                  ? Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          right: 20,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 14, vertical: 12),
                                        decoration: BoxDecoration(
                                          color: AppColors.customLightGray,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Text(
                                          "Search member",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 61, 61, 61),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  : const Text(
                                      "Members",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSearch = !isSearch;
                                  });
                                },
                                child: SizedBox(
                                  child: isSearch
                                      ? const Text(
                                          "Cancel",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      : Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: AppColors.customLightGray,
                                          ),
                                          child: const Icon(
                                            Icons.search_rounded,
                                            size: 30,
                                          ),
                                        ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          const Member(
                            isFollowing: true,
                          ),
                          for (int i = 0; i <= 20; i++)
                            const Member(
                              isFollowing: false,
                            ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
