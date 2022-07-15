import 'package:flutter/material.dart';
import 'package:zoom_clone_app/views/widgets/reuseable_icon.dart';

class MeetingScreen extends StatelessWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReuseAbleIcon(
                icon: Icons.video_call,
                text: 'New Meeting',
                onPressed: () {
                  print('New Meeting');
                },
              ),
              ReuseAbleIcon(
                icon: Icons.add_box_rounded,
                text: 'Join Meeting',
                onPressed: () {
                  print('Join Meeting');
                },
              ),
              ReuseAbleIcon(
                icon: Icons.calendar_today,
                text: 'Schedule',
                onPressed: () {
                  print('Schedule');
                },
              ),
              ReuseAbleIcon(
                icon: Icons.arrow_upward_rounded,
                text: 'Share Screen',
                onPressed: () {
                  print('Share Screen');
                },
              ),
            ],
          ),
          const Expanded(
              child: Center(
            child: Text(
              'Create/Join Meeting with a click',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
