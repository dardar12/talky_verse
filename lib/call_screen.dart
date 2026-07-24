import 'dart:math';

import 'package:flutter/material.dart';
import 'package:talky_verse/secret.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';



class CallScreen extends StatefulWidget {
  const CallScreen({super.key, required this.callID});
  final String callID;

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  final userID = Random().nextInt(1000).toString();
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: Secret.appID,
      appSign: Secret.appSign,
      userID: userID,
      userName: 'User_$userID',
      callID: widget.callID,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
      events: ZegoUIKitPrebuiltCallEvents(
        onCallEnd: (ZegoCallEndEvent event, VoidCallback defaultAction) {
          defaultAction.call();
        },
      ),
    );
  }
}
