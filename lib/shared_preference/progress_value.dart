import 'package:hive/hive.dart';

part 'progress_value.g.dart';

@HiveType(typeId: 1)
class ProgressValue {
  ProgressValue({
    required this.Day1,
    required this.Day2,
    required this.Day3,
    required this.Day4,
    required this.Day5,
    required this.Day6,
    required this.Day7,
    required this.Day8,
    required this.Day9,
    required this.Day10,
    required this.Day11,
    required this.Day12,
    required this.Day13,
    required this.Day14,
    required this.Day15,
    required this.Day16,
    required this.Day17,
    required this.Day18,
    required this.Day19,
    required this.Day20,
    required this.Day21,
    required this.Day22,
    required this.Day23,
    required this.Day24,
    required this.Day25,
    required this.Day26,
    required this.Day27,
    required this.Day28,
    required this.Day29,
    required this.Day30,
  });

  @HiveField(0)
  final double Day1;

  @HiveField(1)
  final double Day2;

  @HiveField(2)
  final double Day3;

  @HiveField(3)
  final double Day4;

  @HiveField(4)
  final double Day5;

  @HiveField(5)
  final double Day6;

  @HiveField(6)
  final double Day7;

  @HiveField(7)
  final double Day8;

  @HiveField(8)
  final double Day9;

  @HiveField(9)
  final double Day10;

  @HiveField(10)
  final double Day11;

  @HiveField(11)
  final double Day12;

  @HiveField(12)
  final double Day13;

  @HiveField(13)
  final double Day14;

  @HiveField(14)
  final double Day15;

  @HiveField(15)
  final double Day16;

  @HiveField(16)
  final double Day17;

  @HiveField(17)
  final double Day18;

  @HiveField(18)
  final double Day19;

  @HiveField(19)
  final double Day20;

  @HiveField(20)
  final double Day21;

  @HiveField(21)
  final double Day22;

  @HiveField(22)
  final double Day23;

  @HiveField(23)
  final double Day24;

  @HiveField(24)
  final double Day25;

  @HiveField(25)
  final double Day26;

  @HiveField(26)
  final double Day27;

  @HiveField(27)
  final double Day28;

  @HiveField(28)
  final double Day29;

  @HiveField(29)
  final double Day30;
}

@HiveType(typeId: 2)
class waterTracker extends HiveObject {
  waterTracker(
      {required this.monday,
      required this.tuesday,
      required this.wednesday,
      required this.thursday,
      required this.friday1,
      required this.saturday,
      required this.totalWater,
      required this.waterIntake,
      required this.waterTakenDaily,
      required this.waterIndicatorValue,
      required this.date,
      required this.waterNotification,
      required this.loginScreen,
      required this.CalorieBurnDaily,
      required this.CalorieIndicatorValue});

  @HiveField(0)
  final double monday;

  @HiveField(1)
  final double tuesday;

  @HiveField(2)
  final double wednesday;

  @HiveField(3)
  final double thursday;

  @HiveField(4)
  final double friday1;

  @HiveField(5)
  final double saturday;

  @HiveField(6)
  final String totalWater;

  @HiveField(7)
  final String waterIntake;

  @HiveField(8)
  final int waterTakenDaily;

  @HiveField(9)
  final double waterIndicatorValue;

  @HiveField(10)
  final int date;

  @HiveField(11)
  final bool waterNotification;

  @HiveField(12)
  final bool loginScreen;

  @HiveField(13)
  final double CalorieBurnDaily;

  @HiveField(14)
  final double CalorieIndicatorValue;
}

@HiveType(typeId: 3)
class waterDayTracker extends HiveObject {
  waterDayTracker({
    required this.Day30,
    required this.Day29,
    required this.Day28,
    required this.Day27,
    required this.Day26,
    required this.Day25,
    required this.Day24,
    required this.Day23,
    required this.Day22,
    required this.Day21,
    required this.Day20,
    required this.Day19,
    required this.Day18,
    required this.Day17,
    required this.Day16,
    required this.Day15,
    required this.Day14,
    required this.Day13,
    required this.Day12,
    required this.Day11,
    required this.Day10,
    required this.Day9,
    required this.Day8,
    required this.Day7,
    required this.Day6,
    required this.Day5,
    required this.Day4,
    required this.Day3,
    required this.Day2,
    required this.Day1,
    required this.Day0,
  });

  @HiveField(0)
  final double Day0;
  @HiveField(1)
  final double Day1;
  @HiveField(2)
  final double Day2;
  @HiveField(3)
  final double Day3;
  @HiveField(4)
  final double Day4;
  @HiveField(5)
  final double Day5;
  @HiveField(6)
  final double Day6;
  @HiveField(7)
  final double Day7;
  @HiveField(8)
  final double Day8;
  @HiveField(9)
  final double Day9;
  @HiveField(10)
  final double Day10;
  @HiveField(11)
  final double Day11;
  @HiveField(12)
  final double Day12;
  @HiveField(13)
  final double Day13;
  @HiveField(14)
  final double Day14;
  @HiveField(15)
  final double Day15;
  @HiveField(16)
  final double Day16;
  @HiveField(17)
  final double Day17;
  @HiveField(18)
  final double Day18;
  @HiveField(19)
  final double Day19;
  @HiveField(20)
  final double Day20;
  @HiveField(21)
  final double Day21;
  @HiveField(22)
  final double Day22;
  @HiveField(23)
  final double Day23;
  @HiveField(24)
  final double Day24;
  @HiveField(25)
  final double Day25;
  @HiveField(26)
  final double Day26;
  @HiveField(27)
  final double Day27;
  @HiveField(28)
  final double Day28;
  @HiveField(29)
  final double Day29;
  @HiveField(30)
  final double Day30;
}

@HiveType(typeId: 4)
class CalorieDayTracker extends HiveObject {
  CalorieDayTracker({
    required this.CalorieDay30,
    required this.CalorieDay29,
    required this.CalorieDay28,
    required this.CalorieDay27,
    required this.CalorieDay26,
    required this.CalorieDay25,
    required this.CalorieDay24,
    required this.CalorieDay23,
    required this.CalorieDay22,
    required this.CalorieDay21,
    required this.CalorieDay20,
    required this.CalorieDay19,
    required this.CalorieDay18,
    required this.CalorieDay17,
    required this.CalorieDay16,
    required this.CalorieDay15,
    required this.CalorieDay14,
    required this.CalorieDay13,
    required this.CalorieDay12,
    required this.CalorieDay11,
    required this.CalorieDay10,
    required this.CalorieDay9,
    required this.CalorieDay8,
    required this.CalorieDay7,
    required this.CalorieDay6,
    required this.CalorieDay5,
    required this.CalorieDay4,
    required this.CalorieDay3,
    required this.CalorieDay2,
    required this.CalorieDay1,
    required this.CalorieDay0,
  });

  @HiveField(0)
  final double CalorieDay0;
  @HiveField(1)
  final double CalorieDay1;
  @HiveField(2)
  final double CalorieDay2;
  @HiveField(3)
  final double CalorieDay3;
  @HiveField(4)
  final double CalorieDay4;
  @HiveField(5)
  final double CalorieDay5;
  @HiveField(6)
  final double CalorieDay6;
  @HiveField(7)
  final double CalorieDay7;
  @HiveField(8)
  final double CalorieDay8;
  @HiveField(9)
  final double CalorieDay9;
  @HiveField(10)
  final double CalorieDay10;
  @HiveField(11)
  final double CalorieDay11;
  @HiveField(12)
  final double CalorieDay12;
  @HiveField(13)
  final double CalorieDay13;
  @HiveField(14)
  final double CalorieDay14;
  @HiveField(15)
  final double CalorieDay15;
  @HiveField(16)
  final double CalorieDay16;
  @HiveField(17)
  final double CalorieDay17;
  @HiveField(18)
  final double CalorieDay18;
  @HiveField(19)
  final double CalorieDay19;
  @HiveField(20)
  final double CalorieDay20;
  @HiveField(21)
  final double CalorieDay21;
  @HiveField(22)
  final double CalorieDay22;
  @HiveField(23)
  final double CalorieDay23;
  @HiveField(24)
  final double CalorieDay24;
  @HiveField(25)
  final double CalorieDay25;
  @HiveField(26)
  final double CalorieDay26;
  @HiveField(27)
  final double CalorieDay27;
  @HiveField(28)
  final double CalorieDay28;
  @HiveField(29)
  final double CalorieDay29;
  @HiveField(30)
  final double CalorieDay30;
}

@HiveType(typeId: 5)
class ProgressValue1 {
  ProgressValue1({
    required this.EasyDay1,
    required this.EasyDay2,
    required this.EasyDay3,
    required this.EasyDay4,
    required this.EasyDay5,
    required this.EasyDay6,
    required this.EasyDay7,
    required this.EasyDay8,
    required this.EasyDay9,
    required this.EasyDay10,
    required this.EasyDay11,
    required this.EasyDay12,
    required this.EasyDay13,
    required this.EasyDay14,
    required this.EasyDay15,
    required this.EasyDay16,
    required this.EasyDay17,
    required this.EasyDay18,
    required this.EasyDay19,
    required this.EasyDay20,
    required this.EasyDay21,
    required this.EasyDay22,
    required this.EasyDay23,
    required this.EasyDay24,
    required this.EasyDay25,
    required this.EasyDay26,
    required this.EasyDay27,
    required this.EasyDay28,
    required this.EasyDay29,
    required this.EasyDay30,
    required this.IntermediateDay1,
    required this.IntermediateDay2,
    required this.IntermediateDay3,
    required this.IntermediateDay4,
    required this.IntermediateDay5,
    required this.IntermediateDay6,
    required this.IntermediateDay7,
    required this.IntermediateDay8,
    required this.IntermediateDay9,
    required this.IntermediateDay10,
    required this.IntermediateDay11,
    required this.IntermediateDay12,
    required this.IntermediateDay13,
    required this.IntermediateDay14,
    required this.IntermediateDay15,
    required this.IntermediateDay16,
    required this.IntermediateDay17,
    required this.IntermediateDay18,
    required this.IntermediateDay19,
    required this.IntermediateDay20,
    required this.IntermediateDay21,
    required this.IntermediateDay22,
    required this.IntermediateDay23,
    required this.IntermediateDay24,
    required this.IntermediateDay25,
    required this.IntermediateDay26,
    required this.IntermediateDay27,
    required this.IntermediateDay28,
    required this.IntermediateDay29,
    required this.IntermediateDay30,
    required this.HardDay1,
    required this.HardDay2,
    required this.HardDay3,
    required this.HardDay4,
    required this.HardDay5,
    required this.HardDay6,
    required this.HardDay7,
    required this.HardDay8,
    required this.HardDay9,
    required this.HardDay10,
    required this.HardDay11,
    required this.HardDay12,
    required this.HardDay13,
    required this.HardDay14,
    required this.HardDay15,
    required this.HardDay16,
    required this.HardDay17,
    required this.HardDay18,
    required this.HardDay19,
    required this.HardDay20,
    required this.HardDay21,
    required this.HardDay22,
    required this.HardDay23,
    required this.HardDay24,
    required this.HardDay25,
    required this.HardDay26,
    required this.HardDay27,
    required this.HardDay28,
    required this.HardDay29,
    required this.HardDay30,
  });

  @HiveField(0)
  final double EasyDay1;

  @HiveField(1)
  final double EasyDay2;

  @HiveField(2)
  final double EasyDay3;

  @HiveField(3)
  final double EasyDay4;

  @HiveField(4)
  final double EasyDay5;

  @HiveField(5)
  final double EasyDay6;

  @HiveField(6)
  final double EasyDay7;

  @HiveField(7)
  final double EasyDay8;

  @HiveField(8)
  final double EasyDay9;

  @HiveField(9)
  final double EasyDay10;

  @HiveField(10)
  final double EasyDay11;

  @HiveField(11)
  final double EasyDay12;

  @HiveField(12)
  final double EasyDay13;

  @HiveField(13)
  final double EasyDay14;

  @HiveField(14)
  final double EasyDay15;

  @HiveField(15)
  final double EasyDay16;

  @HiveField(16)
  final double EasyDay17;

  @HiveField(17)
  final double EasyDay18;

  @HiveField(18)
  final double EasyDay19;

  @HiveField(19)
  final double EasyDay20;

  @HiveField(20)
  final double EasyDay21;

  @HiveField(21)
  final double EasyDay22;

  @HiveField(22)
  final double EasyDay23;

  @HiveField(23)
  final double EasyDay24;

  @HiveField(24)
  final double EasyDay25;

  @HiveField(25)
  final double EasyDay26;

  @HiveField(26)
  final double EasyDay27;

  @HiveField(27)
  final double EasyDay28;

  @HiveField(28)
  final double EasyDay29;

  @HiveField(29)
  final double EasyDay30;

  @HiveField(30)
  final double IntermediateDay1;

  @HiveField(31)
  final double IntermediateDay2;

  @HiveField(32)
  final double IntermediateDay3;

  @HiveField(33)
  final double IntermediateDay4;

  @HiveField(34)
  final double IntermediateDay5;

  @HiveField(35)
  final double IntermediateDay6;

  @HiveField(36)
  final double IntermediateDay7;

  @HiveField(37)
  final double IntermediateDay8;

  @HiveField(38)
  final double IntermediateDay9;

  @HiveField(39)
  final double IntermediateDay10;

  @HiveField(40)
  final double IntermediateDay11;

  @HiveField(41)
  final double IntermediateDay12;

  @HiveField(42)
  final double IntermediateDay13;

  @HiveField(43)
  final double IntermediateDay14;

  @HiveField(44)
  final double IntermediateDay15;

  @HiveField(45)
  final double IntermediateDay16;

  @HiveField(46)
  final double IntermediateDay17;

  @HiveField(47)
  final double IntermediateDay18;

  @HiveField(48)
  final double IntermediateDay19;

  @HiveField(49)
  final double IntermediateDay20;

  @HiveField(50)
  final double IntermediateDay21;

  @HiveField(51)
  final double IntermediateDay22;

  @HiveField(52)
  final double IntermediateDay23;

  @HiveField(53)
  final double IntermediateDay24;

  @HiveField(54)
  final double IntermediateDay25;

  @HiveField(55)
  final double IntermediateDay26;

  @HiveField(56)
  final double IntermediateDay27;

  @HiveField(57)
  final double IntermediateDay28;

  @HiveField(58)
  final double IntermediateDay29;

  @HiveField(59)
  final double IntermediateDay30;

  @HiveField(60)
  final double HardDay1;

  @HiveField(61)
  final double HardDay2;

  @HiveField(62)
  final double HardDay3;

  @HiveField(63)
  final double HardDay4;

  @HiveField(64)
  final double HardDay5;

  @HiveField(65)
  final double HardDay6;

  @HiveField(66)
  final double HardDay7;

  @HiveField(67)
  final double HardDay8;

  @HiveField(68)
  final double HardDay9;

  @HiveField(69)
  final double HardDay10;

  @HiveField(70)
  final double HardDay11;

  @HiveField(71)
  final double HardDay12;

  @HiveField(72)
  final double HardDay13;

  @HiveField(73)
  final double HardDay14;

  @HiveField(74)
  final double HardDay15;

  @HiveField(75)
  final double HardDay16;

  @HiveField(76)
  final double HardDay17;

  @HiveField(77)
  final double HardDay18;

  @HiveField(78)
  final double HardDay19;

  @HiveField(79)
  final double HardDay20;

  @HiveField(80)
  final double HardDay21;

  @HiveField(81)
  final double HardDay22;

  @HiveField(82)
  final double HardDay23;

  @HiveField(83)
  final double HardDay24;

  @HiveField(84)
  final double HardDay25;

  @HiveField(85)
  final double HardDay26;

  @HiveField(86)
  final double HardDay27;

  @HiveField(87)
  final double HardDay28;

  @HiveField(88)
  final double HardDay29;

  @HiveField(89)
  final double HardDay30;
}
