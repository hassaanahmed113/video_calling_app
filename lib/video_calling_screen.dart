import 'dart:math';
import 'package:flutter/material.dart';
import 'package:video_calling_app/constant.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class VideoCallingScreen extends StatefulWidget {
  final String callId;
  const VideoCallingScreen({super.key, required this.callId});

  @override
  State<VideoCallingScreen> createState() => _VideoCallingScreenState();
}

class _VideoCallingScreenState extends State<VideoCallingScreen> {
  final int userId = Random().nextInt(10000);

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: Constant
          .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: Constant
          .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userId.toString(),
      userName: 'User_$userId',
      callID: widget.callId,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
