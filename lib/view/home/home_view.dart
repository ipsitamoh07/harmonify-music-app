import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmonify1/common/colors.dart';
import 'package:harmonify1/common_widget/playlist_cell.dart';
import 'package:harmonify1/common_widget/recommended.dart';
import 'package:harmonify1/common_widget/title_section.dart';
import 'package:harmonify1/common_widget/view_all_section.dart';
import 'package:harmonify1/view_model/homeview_model.dart';
import 'package:harmonify1/view_model/songs_row.dart';
import 'package:harmonify1/view_model/splash_view_model.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeVM = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.find<SplashViewModel>().openDrawer();
          },
          icon: Image.asset(
            "assets/images/menu.png",
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: Color(0xff292E4B),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: TextField(
                  controller: homeVM.txtSearch.value,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 20,
                    ),
                    prefixIcon: Container(
                      margin: const EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      width: 20,
                      child: Image.asset(
                        "assets/images/search.png",
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                        color: TColor.primaryText28,
                      ),
                    ),
                    hintText: "Search Album Songs",
                    hintStyle: TextStyle(
                        color: TColor.primaryText28,
                        fontSize: 13,
                        wordSpacing: 2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleSection(title: "Hot Recommended"),
            SizedBox(
              height: 191,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: homeVM.hostRecommendedArr.length,
                  itemBuilder: (context, index) {
                    var mObj = homeVM.hostRecommendedArr[index];
                    return RecommendedCell(mObj: mObj);
                  }),
            ),
            Divider(
              color: Colors.white.withOpacity(0.07),
              indent: 20,
              endIndent: 20,
            ),
            ViewAllSection(
              title: "Playlist",
              onPressed: () {},
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 0,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: homeVM.playListArr.length,
                  itemBuilder: (context, index) {
                    var mObj = homeVM.playListArr[index];
                    return PlaylistCell(mObj: mObj);
                  }),
            ),
            Divider(
              color: Colors.white.withOpacity(0.07),
              indent: 20,
              endIndent: 20,
            ),
            ViewAllSection(
              title: "Recently Played",
              onPressed: () {},
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                itemCount: homeVM.recentlyPlayedArr.length,
                itemBuilder: (context, index) {
                  var sObj = homeVM.recentlyPlayedArr[index];
                  return AllSongRow(
                    sObj: sObj,
                    onPressedPlay: () {},
                    onPressed: () {}, isWeb: true ,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
