import 'package:flutter/material.dart';
import 'package:harmonify1/audio_helper/page_manager.dart';
import 'package:harmonify1/audio_helper/service_locator.dart';
import 'package:harmonify1/common/colors.dart';

class ControlButtons extends StatefulWidget {
  final bool shuffle;
  final bool miniPlayer;
  final List<String> buttons;
  const ControlButtons(
      {super.key,
      this.shuffle = false,
      this.miniPlayer = false,
      this.buttons = const ['Previous', 'Play/Pause', 'Next']});

  @override
  State<ControlButtons> createState() => _ControlButtonsState();
}

class _ControlButtonsState extends State<ControlButtons> {
  @override
  Widget build(BuildContext context) {
    final pageManager = getIt<PageManager>();
    final mediaItem = pageManager.currentSongNotifier.value!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: widget.buttons.map((e) {
        switch (e) {
          case "Previous":
            return ValueListenableBuilder<bool>(
                valueListenable: pageManager.isFirstSongNotifier,
                builder: (context, isFirst, __) {
                  return IconButton(
                      onPressed: isFirst ? null : pageManager.previous,
                      icon: Image.asset(
                        "assets/images/previous_song.png",
                        width: widget.miniPlayer ? 20 : 50,
                        height: widget.miniPlayer ? 20 : 50,
                      ));
                });
          case "Play/Pause":
            return SizedBox(
              width: widget.miniPlayer ? 40 : 70,
              height: widget.miniPlayer ? 40 : 70,
              child: ValueListenableBuilder<ButtonState>(
                  valueListenable: pageManager.playButtonNotifier,
                  builder: (context, value, __) {
                    return Stack(
                      children: [
                        if (value == ButtonState.loading)
                          Center(
                            child: SizedBox(
                              width: widget.miniPlayer ? 40 : 70,
                              height: widget.miniPlayer ? 40 : 70,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    TColor.primaryText),
                              ),
                            ),
                          ),
                        Center(
                          child: value == ButtonState.playing
                              ? IconButton(
                                  onPressed: pageManager.pause,
                                  icon: Icon(
                                    Icons.pause_rounded,
                                    color: TColor.primaryText,
                                    size: widget.miniPlayer ? 20 : 50,
                                  ))
                              : IconButton(
                                  onPressed: pageManager.play,
                                  icon: Image.asset(
                                    "assets/images/play.png",
                                    width: widget.miniPlayer ? 20 : 50,
                                    height: widget.miniPlayer ? 20 : 50,
                                  )),
                        ),
                      ],
                    );
                  }),
            );
          case "Next":
            return ValueListenableBuilder<bool>(
                valueListenable: pageManager.isLastSongNotifier,
                builder: (context, isLast, __) {
                  return IconButton(
                      onPressed: isLast ? null : pageManager.next,
                      icon: Image.asset(
                        "assets/images/next_song.png",
                        width: widget.miniPlayer ? 20 : 50,
                        height: widget.miniPlayer ? 20 : 50,
                      ));
                });
          default:
            return Container();
        }
      }).toList(),
    );
  }
}
