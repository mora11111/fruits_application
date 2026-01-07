import 'package:flutter/material.dart';
import 'package:fruits_application/features/splash/presentation/views/widgets/splash_view_body.dart' show SplashViewBody;

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const routeName = 'splash';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SplashViewBody()),
    );
  }
}
