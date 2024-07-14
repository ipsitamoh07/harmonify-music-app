import 'package:flutter/material.dart';
import 'package:harmonify1/audio_helper/page_manager.dart';
import 'package:harmonify1/audio_helper/service_locator.dart';

class MiniPlayerView extends StatefulWidget {
 static const MiniPlayerView _instance = MiniPlayerView._internal();

 factory MiniPlayerView(){
  return _instance;
 }

 const MiniPlayerView._internal();


  @override
  State<MiniPlayerView> createState() => _MiniPlayerViewState();
}

class _MiniPlayerViewState extends State<MiniPlayerView> {

  @override
  void initState() {
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    final pageManager= getIt<PageManager>();
    final double screenWidth = MediaQuery.sizeOf(context).width;
    return const Placeholder();
  }
}