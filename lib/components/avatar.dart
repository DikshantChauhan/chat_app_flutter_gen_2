import 'package:flutter/material.dart';

enum Type { small, big }

class Avatar extends StatefulWidget {
  final String imageUrl;
  final Type type;

  const Avatar({super.key, required this.imageUrl, this.type = Type.big});

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  bool isWrongUrl = false;
  final String defaultImageUrl = "assets/images/default_avatar.png";

  handleOnError(Object _, StackTrace? __) {
    setState(() {
      isWrongUrl = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double radius = widget.type == Type.small ? 20.0 : 25.0;
    return CircleAvatar(
      backgroundImage: isWrongUrl
          ? AssetImage(defaultImageUrl)
          : NetworkImage(widget.imageUrl),
      onBackgroundImageError: handleOnError,
      radius: radius,
    );
  }
}
