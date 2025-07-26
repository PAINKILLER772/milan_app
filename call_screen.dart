
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  bool isVideo = false;
  bool inCall = true;

  void _toggleCallType() {
    setState(() {
      isVideo = !isVideo;
    });
  }

  void _endCall() {
    setState(() {
      inCall = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Milan Call"), backgroundColor: Colors.pink),
      body: inCall
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(isVideo ? Icons.videocam : Icons.call, size: 100, color: Colors.white),
                SizedBox(height: 20),
                Text(
                  isVideo ? "Video Call" : "Voice Call",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.switch_video, color: Colors.white),
                      onPressed: _toggleCallType,
                      iconSize: 40,
                    ),
                    SizedBox(width: 30),
                    IconButton(
                      icon: Icon(Icons.call_end, color: Colors.red),
                      onPressed: _endCall,
                      iconSize: 40,
                    ),
                  ],
                )
              ],
            )
          : Center(
              child: Text("Call Ended", style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
    );
  }
}
