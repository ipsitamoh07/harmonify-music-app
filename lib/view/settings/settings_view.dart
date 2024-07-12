import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:harmonify1/common/colors.dart';
import 'package:harmonify1/common_widget/icon_text_row.dart';
import 'package:harmonify1/view_model/splash_view_model.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
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
        title: Text(
          "Settings",
          style: TextStyle(
              color: TColor.primaryText80,
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: [
          IconTextRow(
            title: "Display",
            icon: "assets/images/s_display.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Audio",
            icon: "assets/images/s_audio.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Headset",
            icon: "assets/images/s_headset.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Lock Screen",
            icon: "assets/images/s_lock_screen.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Advanced",
            icon: "assets/images/s_menu.png",
            onTap: () {},
          ),

          IconTextRow(
            title: "Other",
            icon: "assets/images/s_other.png",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}