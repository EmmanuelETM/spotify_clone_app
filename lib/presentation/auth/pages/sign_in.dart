import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone_app/common/widgets/appbar/app_bar.dart';
import 'package:spotify_clone_app/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone_app/core/configs/assets/app_vectors.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signupText(context),
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50, 
          horizontal: 30
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signinText(),
            const SizedBox(height: 50),
            _emailField(context),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            BasicAppButton(
              onPressed: () {

              }, 
              title: 'Create Account'
            ),
           const SizedBox(height: 20),
          ],
        ),
      )
    );
  }

  Widget _signinText() {
    return const Text(
      'Sign In',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Enter email',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      )
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Password',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      )
    );
  }

  Widget _signupText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30 
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Not a Memeber yet?',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),
          ),
          TextButton(
            onPressed: (){}, 
            child: const Text(
              'Create an Account',
              style: TextStyle(
                color: Color(0xff1db954),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 1:46:42
