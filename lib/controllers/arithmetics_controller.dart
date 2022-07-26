import 'package:get/get.dart';

class ArithmeticsController extends GetxController {
  RxString operand1 = "".obs;
  RxString operand2 = "".obs;

  add() {
    double opr1 = double.parse(operand1.value);
    double opr2 = double.parse(operand2.value);
    return opr1 + opr2;
  }

  percentage() {
    double opr1 = double.parse(operand1.value);
    return (opr1 / 100).toString();
  }
}
