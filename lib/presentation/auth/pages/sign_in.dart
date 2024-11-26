import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone_app/common/widgets/appbar/app_bar.dart';
import 'package:spotify_clone_app/core/configs/assets/app_vectors.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo
        )
      ),
      body: const Column(
        children: [

        ],
      )
    );
  }
}