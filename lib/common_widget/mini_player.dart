// ignore_for_file: unused_local_variable

import 'package:audio_service/audio_service.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:harmonify1/audio_helper/page_manager.dart';
import 'package:harmonify1/audio_helper/service_locator.dart';
import 'package:harmonify1/common/colors.dart';
import 'dart:ui' as ui;

import 'package:harmonify1/common_widget/control_buttons.dart';

class MiniPlayerView extends StatefulWidget {
  static const MiniPlayerView _instance = MiniPlayerView._internal();

  factory MiniPlayerView() {
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
    final pageManager = getIt<PageManager>();
    final double screenWidth = MediaQuery.sizeOf(context).width;
    return ValueListenableBuilder<AudioProcessingState>(
      valueListenable: pageManager.playbackStatNotifier,
      builder: (context, processingState, __) {
        if (processingState == AudioProcessingState.idle) {
          return const SizedBox();
        }

        return ValueListenableBuilder<MediaItem?>(
            valueListenable: pageManager.currentSongNotifier,
            builder: (context, mediaItem, __) {
              if (mediaItem == null) {
                return const SizedBox();
              }

              return Dismissible(
                  key: const Key('mini_player'),
                  direction: DismissDirection.down,
                  onDismissed: (direction) {
                    Feedback.forLongPress(context);
                    pageManager.stop();
                  },
                  child: Dismissible(
                    key: Key(mediaItem.id),
                    confirmDismiss: (direction) {
                      if (direction == DismissDirection.startToEnd) {
                        pageManager.previous();
                      } else {
                        pageManager.next();
                      }
                      return Future.value(false);
                    },
                    child: Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 2.0, vertical: 1.0),
                      elevation: 0,
                      color: Colors.white10,
                      child: SizedBox(
                        height: 76.0,
                        child: ClipRRect(
                            child: BackdropFilter(
                          filter: ui.ImageFilter.blur(
                            sigmaX: 8.0,
                            sigmaY: 8.0,
                          ),
                          child: ShaderMask(
                            shaderCallback: (rect) {
                              return const LinearGradient(
                                  end: Alignment.topCenter,
                                  begin: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black,
                                    Colors.black,
                                    Colors.black,
                                    Colors.transparent,
                                  ]).createShader(
                                Rect.fromLTRB(0, 0, rect.width, rect.height),
                              );
                            },
                            blendMode: BlendMode.dstIn,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ValueListenableBuilder<ProgressBarState>(
                                  valueListenable: pageManager.progressNotifier,
                                  builder: (context, value, __) {
                                    final position = value.current;
                                    final totalDuration = value.total;

                                    return position == null
                                        ? const SizedBox()
                                        : (position.inSeconds.toDouble() <
                                                    0.0 ||
                                                (position.inSeconds.toDouble() >
                                                    totalDuration.inSeconds
                                                        .toDouble()))
                                            ? const SizedBox()
                                            : SliderTheme(
                                                data: SliderThemeData(
                                                  activeTrackColor:
                                                      TColor.focus,
                                                  inactiveTrackColor:
                                                      Colors.transparent,
                                                  thumbColor: TColor.focus,
                                                  trackHeight: 5,
                                                  thumbShape:
                                                      const RoundSliderOverlayShape(
                                                          overlayRadius: 2.5),
                                                  overlayColor:
                                                      Colors.transparent,
                                                  overlayShape:
                                                      const RoundSliderOverlayShape(
                                                          overlayRadius: 2.0),
                                                ),
                                                child: Center(
                                                  child: Slider(
                                                    inactiveColor:
                                                        Colors.transparent,
                                                    value: position.inSeconds
                                                        .toDouble(),
                                                    max: totalDuration.inSeconds
                                                        .toDouble(),
                                                    onChanged: (newPosition) {
                                                      pageManager.seek(Duration(
                                                          seconds: newPosition
                                                              .round()));
                                                    },
                                                  ),
                                                ),
                                              );
                                  },
                                ),
                                ListTile(
                                  dense: false,
                                  onTap: () {},
                                  title: Text(
                                    mediaItem.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  subtitle: Text(
                                    mediaItem.artist ?? '',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  leading: Hero(
                                      tag: 'currentArtwork',
                                      child: Card(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        clipBehavior: Clip.antiAlias,
                                        child: SizedBox.square(
                                          dimension: 40.0,
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                mediaItem.artUri.toString(),
                                            fit: BoxFit.cover,
                                            errorWidget: (context, url, error) {
                                              return Image.asset(
                                                'assets/images/cover.png',
                                                fit: BoxFit.cover,
                                              );
                                            },
                                            placeholder: (context, url) {
                                              return Image.asset(
                                                'assets/images/cover.png',
                                                fit: BoxFit.cover,
                                              );
                                            },
                                          ),
                                        ),
                                      )),
                                  trailing: const ControlButtons(
                                    miniPlayer: true,
                                    buttons: ['Play/Pause', 'Next'],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                      ),
                    ),
                  ));
            });
      },
    );
  }
}
