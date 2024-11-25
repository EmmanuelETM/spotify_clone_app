import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone_app/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone_app/core/configs/assets/app_images.dart';
import 'package:spotify_clone_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone_app/core/configs/theme/app_colors.dart';

class ChooseThemePage extends StatelessWidget {
  const ChooseThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 40,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.chooseThemeBG),
                fit: BoxFit.cover,
              )
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 40
            ),
            child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      AppVectors.logo
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Choose Theme',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const SizedBox(height: 50),
                  BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const ChooseThemePage(),
                        ),
                      );
                    }, 
                    title: 'Next Step',
                  )
                ],
              ),
          )
        ],
      ),
    );
  }
}