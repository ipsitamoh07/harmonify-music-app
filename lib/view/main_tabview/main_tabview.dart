import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmonify1/common/colors.dart';
import 'package:harmonify1/common_widget/icon_text_row.dart';
import 'package:harmonify1/common_widget/mini_player.dart';
import 'package:harmonify1/view/settings/settings_view.dart';
import 'package:harmonify1/view/songs/songs_view.dart';
import 'package:harmonify1/view_model/splash_view_model.dart';

import '../home/home_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);

    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    var splashVM = Get.find<SplashViewModel>();

    return Scaffold(
      key: splashVM.scaffoldKey,
      drawer: Drawer(
          backgroundColor: const Color(0xff10121D),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 240,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: TColor.primaryText.withOpacity(0.03),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/app_logo.png",
                        width: media.width * 0.45,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "328\nSongs",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffC1C0C0), fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "52\nAlbums",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffC1C0C0), fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "87\nartist",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffC1C0C0), fontSize: 12),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              IconTextRow(
            title: "Display",
            icon: "assets/images/s_display.png",
            onTap: () {},
          ),
              IconTextRow(
                title: "Themes",
                icon: "assets/images/m_theme.png",
                onTap: () {},
              ),
              IconTextRow(
                title: "Ringtone Cutter",
                icon: "assets/images/m_ring_cut.png",
                onTap: () {},
              ),

              IconTextRow(
                title: "Sleep Timer",
                icon: "assets/images/m_sleep_timer.png",
                onTap: () {},
              ),
              IconTextRow(
                title: "Equalizer",
                icon: "assets/images/m_eq.png",
                onTap: () {},
              ),
              IconTextRow(
                title: "Driver Mode",
                icon: "assets/images/m_driver_mode.png",
                onTap: () {},
              ),

              IconTextRow(
                title: "Hidden Folders",
                icon: "assets/images/m_hidden_folder.png",
                onTap: () {},
              ),
              IconTextRow(
                title: "Scan Media",
                icon: "assets/images/m_scan_media.png",
                onTap: () {},
              ),
            ],
          )),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          TabBarView(
            controller: controller,
            children: const [
              HomeView(),
             SongsView(),  
              SettingsView(),
            ],
          ),

          MiniPlayerView(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: TColor.bg, boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 5,
            offset: Offset(0, -3),
          )
        ]),
        child: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: TabBar(
              controller: controller,
              indicatorColor: Colors.transparent,
              indicatorWeight: 1,
              labelColor: TColor.primary,
              labelStyle: const TextStyle(fontSize: 10),
              unselectedLabelColor: TColor.primaryText28,
              unselectedLabelStyle: const TextStyle(fontSize: 10),
              tabs: [
                Tab(
                  text: "Home",
                  icon: Image.asset(
                    selectTab == 0
                        ? "assets/images/home_tab.png"
                        : "assets/images/home_tab_un.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                Tab(
                  text: "Songs",
                  icon: Image.asset(
                    selectTab == 1
                        ? "assets/images/songs_tab.png"
                        : "assets/images/songs_tab_un.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                Tab(
                  text: "Settings",
                  icon: Image.asset(
                    selectTab == 2
                        ? "assets/images/setting_tab.png"
                        : "assets/images/setting_tab_un.png",
                    width: 20,
                    height: 20,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
