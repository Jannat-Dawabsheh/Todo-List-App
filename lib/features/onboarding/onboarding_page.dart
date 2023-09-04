import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_list_app/Quran_app_theme/app_theme.dart';
import 'package:to_do_list_app/core_presintation/constants/app_color.dart';
import 'package:to_do_list_app/core_presintation/services/app_navigator.dart';
import 'package:to_do_list_app/core_presintation/widgets/app_button.dart';
import 'package:to_do_list_app/features/auth/auth_page.dart';
import 'package:to_do_list_app/features/onboarding/models/onbourding_models.dart';

import '../../core_presintation/constants/theme.dart';
import '../../generated/l10n.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final List<OnBourdimgModel>_OnBordingList=OnBourdimgModel.list;
  final PageController _pageController=PageController();
  int _currentIndex=0;
  bool _isLastPage=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                children: [
                  Opacity(
                    opacity: _isLastPage?0:1,
                    child: TextButton(
                      onPressed: (){
                            _pageController.animateToPage(
                              _OnBordingList.length-1, 
                              duration:const Duration(milliseconds: 400),
                               curve: Curves.fastOutSlowIn,
                               );
                        
                      },
                       child: Text(
                        "skip".toUpperCase(),
                         style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.white.withOpacity(0.5)),)),
                  )
                ],
              ),
              const SizedBox(height: 2,),
              Expanded(
                 flex: 4,
                child: PageView.builder(
                   controller:_pageController,
                  itemCount: _OnBordingList.length,
                  itemBuilder:(context,index)=>SvgPicture.asset(_OnBordingList[index].image) ,
                  onPageChanged: (index){
                    setState(() {
                      _currentIndex=index;
                      _isLastPage=_currentIndex==(_OnBordingList.length-1);
                    });
                  },
                  ),
              ),
              const SizedBox(height: 50,),
              SmoothPageIndicator(
                  controller:_pageController,
                  count:_OnBordingList.length, 
                  effect: const JumpingDotEffect(
                    dotWidth: 26,
                    dotHeight: 4,
                    dotColor: appColor.greyColor,
                    activeDotColor: Colors.white,

                  ),
              ),
              const SizedBox(height: 50,),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Text(
                      _OnBordingList[_currentIndex].title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Text(
                      _OnBordingList[_currentIndex].description,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.white.withOpacity(0.87)),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: (){

                      if(_currentIndex>0){
                            _currentIndex--;
                            _pageController.animateToPage(
                              _currentIndex, 
                              duration:const Duration(milliseconds: 400),
                               curve: Curves.fastOutSlowIn,
                               );
                         }
                    },
                     child: Text(
                      "back".toUpperCase(),
                       style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.white.withOpacity(0.5)),)
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 48,
                    child: AppButton(
                      title: _isLastPage?"Get Started":"Next".toUpperCase(),
                       onPressed: (){
                         if(!_isLastPage){
                            _currentIndex++;
                            _pageController.animateToPage(
                              _currentIndex, 
                              duration:const Duration(milliseconds: 400),
                               curve: Curves.fastOutSlowIn,
                               );
                         }else{
                            AppNavigator.navigateTo(context,const AuthenticationPage());
                         }
                       }
                       ),
                  )
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
