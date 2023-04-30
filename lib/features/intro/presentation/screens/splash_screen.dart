import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_simple_architecture/common/utils/custom_snackbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    goToHome();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: width,
        child: Column(
          children: [
            //todo: for app logo in splash screen
            Expanded(
              child: DelayedWidget(
                delayDuration: Duration(milliseconds: 200),
                animationDuration: Duration(milliseconds: 1000),
                child: Icon(
                  Icons.shop_2,
                  size: 80,
                ),
              ),
            ),
            //todo: text shown when there is no internet connection
            Text('no internet connection'),
          ],
        ),
      ),
    );
  }

  Future<void> goToHome() {
    return Future.delayed(
      Duration(seconds: 3),
      () {
        CustomSnackBar.showSnack(context, 'welcome', Colors.green);
      },
    );
  }
}
