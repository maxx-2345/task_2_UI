import "package:flutter/material.dart";
import "package:task_2_ui/widgets/profileImage.dart";

class RoundedImage extends StatefulWidget {
  const RoundedImage({super.key});

  @override
  State<RoundedImage> createState() => _RoundedImageState();
}

class _RoundedImageState extends State<RoundedImage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned(
              left: 110,
              top: 0,
              child: ProfileImage(
                width: 40,
              )),
          const Positioned(
              left: 140,
              top: 0,
              child: ProfileImage(
                width: 40,
              )),
          Positioned(
            top: 0,
            left: 170,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 210, 53, 42),
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
