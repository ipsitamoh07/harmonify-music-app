import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmonify1/common_widget/artist_row.dart';
import 'package:harmonify1/view/songs/artists_details.dart';
import 'package:harmonify1/view_model/artists_view.dart';

class ArtistsView extends StatefulWidget {
  const ArtistsView({super.key});

  @override
  State<ArtistsView> createState() => _ArtistsViewState();
}

class _ArtistsViewState extends State<ArtistsView> {
  final artVM = Get.put(ArtistsViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            itemCount: artVM.allList.length,
            itemBuilder: (context, index) {
              var aObj = artVM.allList[index];

              return ArtistRow(
                aObj: aObj,
                onPressed: () {
                  Get.to(() => const ArtistDetailsView());
                },
                onPressedMenuSelect: (selectIndex) {},
              );
            }),
      ),
    );
  }
}
