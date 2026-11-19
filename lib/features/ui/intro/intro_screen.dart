import 'package:cars/core/utils/app_asset.dart';
import 'package:cars/core/utils/app_color.dart';
import 'package:cars/core/utils/app_route.dart';
import 'package:cars/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key,});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();

  final List<String> images = [
    AppAsset.car1,
    AppAsset.car2,
    AppAsset.car3,
  ];

  int currentIndex = 0;

  bool _imagesPrecached = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_imagesPrecached) {
      for (final image in images) {
        precacheImage(AssetImage(image), context);
      }
      _imagesPrecached = true;
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> whiteTitle = [
      AppLocalizations.of(context)!.yourFirstCar,
      AppLocalizations.of(context)!.compareBeforeYouChoose,
      AppLocalizations.of(context)!.thinkItThroughCarefullyBeforeYouBuy,
    ];

    final List<String> description = [
      AppLocalizations.of(context)!.compareCarsUnderstandTheirCosts,
      AppLocalizations.of(context)!.seeDifferenceBetweenCars,
      AppLocalizations.of(context)!.knowTheCostOfOwnership

    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(
            right: 24.h,
            left: 24.h,
            bottom: 50.h
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, AppRoute.homeScreen);
                  },
                  child: Text(
                    AppLocalizations.of(context)!.skip,
                    style: TextStyle(
                      color: AppColor.lightGrey,
                      fontSize: 14,
                    ),
                  ),
                ),
                ]
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: 3,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index){
                    return Column(
                      spacing: 15.h,
                      children: [
                        Container(
                            height: 350.h,
                            width: 340.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                        Text(
                            whiteTitle[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColor.white,
                                fontSize: 34,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        index == 0 ?
                        Text(
                          AppLocalizations.of(context)!.chooseItWithConfidence,
                            style: TextStyle(
                                color: AppColor.lightGreen,
                                fontSize: 27,
                                fontWeight: FontWeight.bold
                            ),
                          )
                        :
                        SizedBox(height: 1.h,),
                        Text(
                            description[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColor.lightGrey,
                              fontSize: 18,
                            ),
                          ),
                        SmoothPageIndicator(
                              controller: _pageController,  // PageController
                              count: images.length,
                              effect:  ExpandingDotsEffect(
                                  dotColor: AppColor.lightGrey,
                                  activeDotColor: AppColor.lightGreen,
                                  dotHeight: 10,
                                  dotWidth: 12,
                                  expansionFactor: 2,
                              ),
                              onDotClicked: (index){
                              }
                          )
                        ],
                      );
                    },
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                    onPressed: (){
                      if (currentIndex < images.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }else{
                        Navigator.pushNamed(context, AppRoute.homeScreen);
                      }
                }, style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.lightGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                    child: Text(
                      currentIndex < images.length - 1 ?
                      AppLocalizations.of(context)!.next:
                      AppLocalizations.of(context)!.letsGO,
                      style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
