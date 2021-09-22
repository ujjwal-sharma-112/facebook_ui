import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/models/models.dart';
import 'package:facebook_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?'),
                  cursorHeight: 25,
                ),
              ),
            ],
          ),
          Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () => print('Live'),
                  icon: Icon(Icons.videocam, color: Colors.red),
                  label: Text('Live'),
                ),
                VerticalDivider(width: 8.0),
                TextButton.icon(
                  onPressed: () => print('photo'),
                  icon: Icon(Icons.photo_library, color: Colors.green),
                  label: Text('photo'),
                ),
                VerticalDivider(width: 8.0),
                TextButton.icon(
                  onPressed: () => print('Room'),
                  icon: Icon(Icons.video_call, color: Colors.purpleAccent),
                  label: Text('Room'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
