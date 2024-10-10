import "package:flutter/material.dart";
import "package:task_2_ui/widgets/profileimage.dart";

class BottomRoundedImage extends StatefulWidget {
  const BottomRoundedImage({super.key});

  @override
  State<BottomRoundedImage> createState() => _BottomRoundedImageState();
}

class _BottomRoundedImageState extends State<BottomRoundedImage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned(
              left: -60,
              top: 0,
              child: ProfileImage(
                width: 50,
              )),
          const Positioned(
              left: -20,
              top: 0,
              child: ProfileImage(
                width: 50,
              )),
          const Positioned(
              left: 20,
              top: 0,
              child: ProfileImage(
                width: 50,
              )),
          Positioned(
            top: 0,
            left: 60,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  )),
              child: const Center(
                child: Text("+7"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
