import 'package:get/get.dart';
import 'package:nov23/services/auth_services.dart';

class HomeController extends GetxController {
  int count = 0;

  increment() {
    AuthServices().
    count = count + 1;
    update();
  }
}
