import 'package:flutter/material.dart';

import 'package:agora_uikit/src/enums.dart';

/// Displays the camera and microphone state of local and remote user. Currently, this mode is only available in the [Layout.floating].
class UserAVStateWidget extends StatefulWidget {
  final bool videoDisabled;
  final bool muted;
  final Color primaryColor;
  final Color iconColor;

  const UserAVStateWidget({
    super.key,
    required this.videoDisabled,
    required this.muted,
    required this.primaryColor,
    required this.iconColor,
  });

  @override
  State<UserAVStateWidget> createState() => _UserAVStateWidgetState();
}

class _UserAVStateWidgetState extends State<UserAVStateWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: widget.videoDisabled
                      ? widget.primaryColor
                      : widget.iconColor,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: widget.videoDisabled
                      ? Icon(
                          Icons.videocam_off,
                          color: widget.iconColor,
                          size: 15,
                        )
                      : Icon(
                          Icons.videocam,
                          color: widget.primaryColor,
                          size: 15,
                        ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  color: widget.muted ? widget.primaryColor : widget.iconColor,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: widget.muted
                      ? Icon(
                          Icons.mic_off,
                          color: widget.iconColor,
                          size: 15,
                        )
                      : Icon(
                          Icons.mic,
                          color: widget.primaryColor,
                          size: 15,
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
