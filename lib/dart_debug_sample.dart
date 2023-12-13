import 'package:intl/intl.dart';

class YukymController {
  // DateTime.parse(_userData.value!.selectDate)
  String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  late String nowTime;

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() => '경오 ${(int.parse(nowDate.substring(5, 7)) / 2).ceil()}국';

  String getTyB() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(nowDate);
    String result = timeDataOne.first.ty12;

    final nowTime = DateTime.now();
    if (nowTime.hour >= 0 && nowTime.hour < 2) {
      return timeDataOne.first.ty1;
    } else if (nowTime.hour >= 2 && nowTime.hour < 4) {
      return timeDataOne.first.ty2;
    } else if (nowTime.hour >= 4 && nowTime.hour < 6) {
      return timeDataOne.first.ty3;
    } else if (nowTime.hour >= 6 && nowTime.hour < 8) {
      return timeDataOne.first.ty4;
    } else if (nowTime.hour >= 8 && nowTime.hour < 10) {
      return timeDataOne.first.ty5;
    } else if (nowTime.hour >= 10 && nowTime.hour < 12) {
      return timeDataOne.first.ty6;
    } else if (nowTime.hour >= 12 && nowTime.hour < 14) {
      return timeDataOne.first.ty7;
    } else if (nowTime.hour >= 14 && nowTime.hour < 16) {
      return timeDataOne.first.ty8;
    } else if (nowTime.hour >= 16 && nowTime.hour < 18) {
      return timeDataOne.first.ty9;
    } else if (nowTime.hour >= 18 && nowTime.hour < 20) {
      return timeDataOne.first.ty10;
    } else if (nowTime.hour >= 20 && nowTime.hour < 22) {
      return timeDataOne.first.ty11;
    } else if (nowTime.hour >= 22 && nowTime.hour < 24) {
      return timeDataOne.first.ty12;
    }

    return result;
  }

  List<YukymTimeModel> _getTimeDataOne(String nowDate) {
    List<YukymTimeModel> timeDataOne = [];
    for (int i = 0; i < 24; i++) {
      timeDataOne.add(YukymTimeModel());
    }
    return timeDataOne;
  }
}

class YukymTimeModel {
  String ty1 = '갑자1국';
  String ty2 = '갑자2국';
  String ty3 = '갑자3국';
  String ty4 = '갑자4국';
  String ty5 = '갑자5국';
  String ty6 = '갑자6국';
  String ty7 = '갑자7국';
  String ty8 = '갑자8국';
  String ty9 = '갑자9국';
  String ty10 = '갑자10국';
  String ty11 = '갑자11국';
  String ty12 = '갑자12국';
}
