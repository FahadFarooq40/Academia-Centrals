import 'package:academia_centrals/AppColors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalDetailController extends GetxController {
  var selectedTab = 0.obs;
  var selectedClass = 0.obs;
  var selectedGender = 0.obs;
  var selectedDegree = 0.obs;
  var selectedCountry = 0.obs;
  var selectedDistrict = 0.obs;
  var selectedCategory = 0.obs;

  void selectClass(int? index) {
    selectedClass.value = index ?? 0;
  }

  void selectDegree(int? index) {
    selectedDegree.value = index ?? 0;
  }

  void selectGender(int? index) {
    selectedGender.value = index ?? 0;
  }

  void selectCountry(int? index) {
    selectedCountry.value = index ?? 0;
  }

  void selectDistrict(int? index) {
    selectedDistrict.value = index ?? 0;
  }

  void selectCategory(int? index) {
    selectedCategory.value = index ?? 0;
  }

  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);

  void showCustomDatePicker(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2030),
    );

    if (pickedDate != null) {
      selectedDate.value = pickedDate;
    }
  }

  var iconColors = [
    AppColors.greyColor,
    AppColors.greyColor,
    AppColors.greyColor,
  ];

  var iconSizes = [
    30.0,
    30.0,
    30.0,
  ];
  @override
  void onInit() {
    super.onInit();
    selectedTab.value = 0;
    iconColors[selectedTab.value] = AppColors.lightTextColor;
    iconSizes[selectedTab.value] = 35.0;
  }

  void setTab(int tabIndex) {
    selectedTab.value = tabIndex;

    iconColors[selectedTab.value] = AppColors.lightTextColor;
    iconSizes[selectedTab.value] = 35.0;

    for (var i = 0; i < iconColors.length; i++) {
      if (i != selectedTab.value) {
        iconColors[i] = AppColors.greyColor;
        iconSizes[i] = 30.0;
      }
    }

    update();
  }
}
