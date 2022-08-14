import 'dart:math';

import 'package:applovin_max/applovin_max.dart';
import 'package:legs_workout_women/common/box_decoration.dart';
import 'package:legs_workout_women/screens/tips/Components/tipsWidget.dart';
import 'package:flutter/material.dart';

import '../../model/tips.dart';

class Body extends StatefulWidget {
  final tips tip;

  const Body({
    required this.tip,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final String _interstitial_ad_unit_id = "fa1b0ac9eb21dff3";
  bool isLoaded = false;
  bool isInterstitialAdLoaded = false;
  bool isBannerAdLoaded = false;

  @override
  void initState() {
    super.initState();
    initializeInterstitialAds();
  }

  var _interstitialRetryAttempt = 0;

  void initializeInterstitialAds() {
    AppLovinMAX.setInterstitialListener(InterstitialListener(
      onAdLoadedCallback: (ad) {
        // Interstitial ad is ready to be shown. AppLovinMAX.isInterstitialReady(_interstitial_ad_unit_id) will now return 'true'
        print('Interstitial ad loaded from ' + ad.networkName);
        isInterstitialAdLoaded = true;
        // Reset retry attempt
        _interstitialRetryAttempt = 0;
      },
      onAdLoadFailedCallback: (adUnitId, error) {
        // Interstitial ad failed to load
        // We recommend retrying with exponentially higher delays up to a maximum delay (in this case 64 seconds)
        _interstitialRetryAttempt = _interstitialRetryAttempt + 1;

        int retryDelay = pow(2, min(6, _interstitialRetryAttempt)).toInt();

        print('Interstitial ad failed to load with code ' +
            error.code.toString() +
            ' - retrying in ' +
            retryDelay.toString() +
            's');

        Future.delayed(Duration(milliseconds: retryDelay * 1000), () {
          AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
        });
      },
      onAdDisplayedCallback: (ad) {
        print('Interstitial onAdDisplayedCallback from ' + ad.networkName);
      },
      onAdDisplayFailedCallback: (ad, error) {
        print('Interstitial onAdDisplayFailedCallback from ' + ad.networkName);
      },
      onAdClickedCallback: (ad) {
        print('Interstitial onAdClickedCallback from ' + ad.networkName);
      },
      onAdHiddenCallback: (ad) {
        print('Interstitial onAdHiddenCallback from ' + ad.networkName);
      },
    ));

    // Load the first interstitial
    AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => TipsWidget(tipSet: widget.tip)));
        if (isInterstitialAdLoaded) {
          AppLovinMAX.showInterstitial(_interstitial_ad_unit_id);
        }
      },
      child: Container(
        // margin: EdgeInsets.all(15),
        // margin: EdgeInsets.only(top: 5),
        height: 110,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(right: 10, left: 10, bottom: 5),
        child: Card(
          shape: tips_card_border,
          color: widget.tip.color,
          elevation: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                widget.tip.title,
                style: TextStyle(
                    fontSize: 20,
                    color: widget.tip.titleColor,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset(widget.tip.image),
            ],
          ),
        ),
      ),
    );
  }
}
