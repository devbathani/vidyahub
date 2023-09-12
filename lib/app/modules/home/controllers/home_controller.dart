import 'package:get/get.dart';
import 'package:vidhya_hub/app/modules/bottomview/views/helper.dart';
import 'package:vidhya_hub/app/modules/home/views/model/homeview_model.dart';

class HomeController extends GetxController {
  final List<HomeViewModel> model = [
    HomeViewModel(
      image: '${Helper.homeview}1.svg',
      pages: 'Live Lectures',
    ),
    HomeViewModel(
      image: '${Helper.homeview}2.svg',
      pages: 'Preparatory Tests',
    ),
    HomeViewModel(
      image: '${Helper.homeview}3.svg',
      pages: 'Recorded Lectures',
    ),
    HomeViewModel(
      image: '${Helper.homeview}4.svg',
      pages: 'Test Series',
    ),
    HomeViewModel(
      image: '${Helper.homeview}5.svg',
      pages: 'Results',
    ),
    HomeViewModel(
      image: '${Helper.homeview}6.svg',
      pages: 'Analytics',
    ),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
