import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance=>Get.find();
  ///variables
  final pageController=PageController();
Rx<int>  currentPageIndex=0.obs;//observer which is used to change design without state full design
///update current current when current index is closed
void updatePageIndicator(index) => currentPageIndex.value =index;

  ///
///jump to the specific dot selected page
void dotNavigatorClick(index){
  currentPageIndex.value=index;
  pageController.jumpTo(index);

}
  /// update current index and jump to the index
void nextPage(){
  if(currentPageIndex.value ==2){
    Get.to(const LoginScreen());
  }
  else{
    int page =currentPageIndex.value +1;
    pageController.jumpToPage(page);
  }
}
  void skipPage(){
  currentPageIndex.value=2;
  pageController.jumpToPage(2);
  }
}