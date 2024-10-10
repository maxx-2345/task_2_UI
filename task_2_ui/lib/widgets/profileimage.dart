import "package:flutter/material.dart";

class ProfileImage extends StatefulWidget {
  final double? width;
  const ProfileImage({super.key, this.width = 50});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: ClipOval(
        child: Image.network(
          "https://www.dexerto.com/cdn-cgi/image/width=3840,quality=60,format=auto/https://editors.dexerto.com/wp-content/uploads/2023/11/02/jujutsu-kaisen-toji.jpeg",
          fit: BoxFit.cover,
          width: widget.width,
          height: widget.width,
        ),
      ),
    );
  }
}
