import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/image_constant.dart';

class image_container extends StatelessWidget {
  const image_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
    fit: BoxFit.cover,
    image: NetworkImage(ImageConst.photo))
      ),
    );
  }
}



