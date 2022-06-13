// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_value.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProgressValueAdapter extends TypeAdapter<ProgressValue> {
  @override
  final int typeId = 1;

  @override
  ProgressValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProgressValue(
      Day1: fields[0] as double,
      Day2: fields[1] as double,
      Day3: fields[2] as double,
      Day4: fields[3] as double,
      Day5: fields[4] as double,
      Day6: fields[5] as double,
      Day7: fields[6] as double,
      Day8: fields[7] as double,
      Day9: fields[8] as double,
      Day10: fields[9] as double,
      Day11: fields[10] as double,
      Day12: fields[11] as double,
      Day13: fields[12] as double,
      Day14: fields[13] as double,
      Day15: fields[14] as double,
      Day16: fields[15] as double,
      Day17: fields[16] as double,
      Day18: fields[17] as double,
      Day19: fields[18] as double,
      Day20: fields[19] as double,
      Day21: fields[20] as double,
      Day22: fields[21] as double,
      Day23: fields[22] as double,
      Day24: fields[23] as double,
      Day25: fields[24] as double,
      Day26: fields[25] as double,
      Day27: fields[26] as double,
      Day28: fields[27] as double,
      Day29: fields[28] as double,
      Day30: fields[29] as double,
    );
  }

  @override
  void write(BinaryWriter writer, ProgressValue obj) {
    writer
      ..writeByte(30)
      ..writeByte(0)
      ..write(obj.Day1)
      ..writeByte(1)
      ..write(obj.Day2)
      ..writeByte(2)
      ..write(obj.Day3)
      ..writeByte(3)
      ..write(obj.Day4)
      ..writeByte(4)
      ..write(obj.Day5)
      ..writeByte(5)
      ..write(obj.Day6)
      ..writeByte(6)
      ..write(obj.Day7)
      ..writeByte(7)
      ..write(obj.Day8)
      ..writeByte(8)
      ..write(obj.Day9)
      ..writeByte(9)
      ..write(obj.Day10)
      ..writeByte(10)
      ..write(obj.Day11)
      ..writeByte(11)
      ..write(obj.Day12)
      ..writeByte(12)
      ..write(obj.Day13)
      ..writeByte(13)
      ..write(obj.Day14)
      ..writeByte(14)
      ..write(obj.Day15)
      ..writeByte(15)
      ..write(obj.Day16)
      ..writeByte(16)
      ..write(obj.Day17)
      ..writeByte(17)
      ..write(obj.Day18)
      ..writeByte(18)
      ..write(obj.Day19)
      ..writeByte(19)
      ..write(obj.Day20)
      ..writeByte(20)
      ..write(obj.Day21)
      ..writeByte(21)
      ..write(obj.Day22)
      ..writeByte(22)
      ..write(obj.Day23)
      ..writeByte(23)
      ..write(obj.Day24)
      ..writeByte(24)
      ..write(obj.Day25)
      ..writeByte(25)
      ..write(obj.Day26)
      ..writeByte(26)
      ..write(obj.Day27)
      ..writeByte(27)
      ..write(obj.Day28)
      ..writeByte(28)
      ..write(obj.Day29)
      ..writeByte(29)
      ..write(obj.Day30);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProgressValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class waterTrackerAdapter extends TypeAdapter<waterTracker> {
  @override
  final int typeId = 2;

  @override
  waterTracker read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return waterTracker(
      monday: fields[0] as double,
      tuesday: fields[1] as double,
      wednesday: fields[2] as double,
      thursday: fields[3] as double,
      friday1: fields[4] as double,
      saturday: fields[5] as double,
      totalWater: fields[6] as String,
      waterIntake: fields[7] as String,
      waterTakenDaily: fields[8] as int,
      waterIndicatorValue: fields[9] as double,
      date: fields[10] as int,
      waterNotification: fields[11] as bool,
      loginScreen: fields[12] as bool,
      CalorieBurnDaily: fields[13] as double,
      CalorieIndicatorValue: fields[14] as double,
    );
  }

  @override
  void write(BinaryWriter writer, waterTracker obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.monday)
      ..writeByte(1)
      ..write(obj.tuesday)
      ..writeByte(2)
      ..write(obj.wednesday)
      ..writeByte(3)
      ..write(obj.thursday)
      ..writeByte(4)
      ..write(obj.friday1)
      ..writeByte(5)
      ..write(obj.saturday)
      ..writeByte(6)
      ..write(obj.totalWater)
      ..writeByte(7)
      ..write(obj.waterIntake)
      ..writeByte(8)
      ..write(obj.waterTakenDaily)
      ..writeByte(9)
      ..write(obj.waterIndicatorValue)
      ..writeByte(10)
      ..write(obj.date)
      ..writeByte(11)
      ..write(obj.waterNotification)
      ..writeByte(12)
      ..write(obj.loginScreen)
      ..writeByte(13)
      ..write(obj.CalorieBurnDaily)
      ..writeByte(14)
      ..write(obj.CalorieIndicatorValue);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is waterTrackerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class waterDayTrackerAdapter extends TypeAdapter<waterDayTracker> {
  @override
  final int typeId = 3;

  @override
  waterDayTracker read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return waterDayTracker(
      Day30: fields[30] as double,
      Day29: fields[29] as double,
      Day28: fields[28] as double,
      Day27: fields[27] as double,
      Day26: fields[26] as double,
      Day25: fields[25] as double,
      Day24: fields[24] as double,
      Day23: fields[23] as double,
      Day22: fields[22] as double,
      Day21: fields[21] as double,
      Day20: fields[20] as double,
      Day19: fields[19] as double,
      Day18: fields[18] as double,
      Day17: fields[17] as double,
      Day16: fields[16] as double,
      Day15: fields[15] as double,
      Day14: fields[14] as double,
      Day13: fields[13] as double,
      Day12: fields[12] as double,
      Day11: fields[11] as double,
      Day10: fields[10] as double,
      Day9: fields[9] as double,
      Day8: fields[8] as double,
      Day7: fields[7] as double,
      Day6: fields[6] as double,
      Day5: fields[5] as double,
      Day4: fields[4] as double,
      Day3: fields[3] as double,
      Day2: fields[2] as double,
      Day1: fields[1] as double,
      Day0: fields[0] as double,
    );
  }

  @override
  void write(BinaryWriter writer, waterDayTracker obj) {
    writer
      ..writeByte(31)
      ..writeByte(0)
      ..write(obj.Day0)
      ..writeByte(1)
      ..write(obj.Day1)
      ..writeByte(2)
      ..write(obj.Day2)
      ..writeByte(3)
      ..write(obj.Day3)
      ..writeByte(4)
      ..write(obj.Day4)
      ..writeByte(5)
      ..write(obj.Day5)
      ..writeByte(6)
      ..write(obj.Day6)
      ..writeByte(7)
      ..write(obj.Day7)
      ..writeByte(8)
      ..write(obj.Day8)
      ..writeByte(9)
      ..write(obj.Day9)
      ..writeByte(10)
      ..write(obj.Day10)
      ..writeByte(11)
      ..write(obj.Day11)
      ..writeByte(12)
      ..write(obj.Day12)
      ..writeByte(13)
      ..write(obj.Day13)
      ..writeByte(14)
      ..write(obj.Day14)
      ..writeByte(15)
      ..write(obj.Day15)
      ..writeByte(16)
      ..write(obj.Day16)
      ..writeByte(17)
      ..write(obj.Day17)
      ..writeByte(18)
      ..write(obj.Day18)
      ..writeByte(19)
      ..write(obj.Day19)
      ..writeByte(20)
      ..write(obj.Day20)
      ..writeByte(21)
      ..write(obj.Day21)
      ..writeByte(22)
      ..write(obj.Day22)
      ..writeByte(23)
      ..write(obj.Day23)
      ..writeByte(24)
      ..write(obj.Day24)
      ..writeByte(25)
      ..write(obj.Day25)
      ..writeByte(26)
      ..write(obj.Day26)
      ..writeByte(27)
      ..write(obj.Day27)
      ..writeByte(28)
      ..write(obj.Day28)
      ..writeByte(29)
      ..write(obj.Day29)
      ..writeByte(30)
      ..write(obj.Day30);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is waterDayTrackerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CalorieDayTrackerAdapter extends TypeAdapter<CalorieDayTracker> {
  @override
  final int typeId = 4;

  @override
  CalorieDayTracker read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CalorieDayTracker(
      CalorieDay30: fields[30] as double,
      CalorieDay29: fields[29] as double,
      CalorieDay28: fields[28] as double,
      CalorieDay27: fields[27] as double,
      CalorieDay26: fields[26] as double,
      CalorieDay25: fields[25] as double,
      CalorieDay24: fields[24] as double,
      CalorieDay23: fields[23] as double,
      CalorieDay22: fields[22] as double,
      CalorieDay21: fields[21] as double,
      CalorieDay20: fields[20] as double,
      CalorieDay19: fields[19] as double,
      CalorieDay18: fields[18] as double,
      CalorieDay17: fields[17] as double,
      CalorieDay16: fields[16] as double,
      CalorieDay15: fields[15] as double,
      CalorieDay14: fields[14] as double,
      CalorieDay13: fields[13] as double,
      CalorieDay12: fields[12] as double,
      CalorieDay11: fields[11] as double,
      CalorieDay10: fields[10] as double,
      CalorieDay9: fields[9] as double,
      CalorieDay8: fields[8] as double,
      CalorieDay7: fields[7] as double,
      CalorieDay6: fields[6] as double,
      CalorieDay5: fields[5] as double,
      CalorieDay4: fields[4] as double,
      CalorieDay3: fields[3] as double,
      CalorieDay2: fields[2] as double,
      CalorieDay1: fields[1] as double,
      CalorieDay0: fields[0] as double,
    );
  }

  @override
  void write(BinaryWriter writer, CalorieDayTracker obj) {
    writer
      ..writeByte(31)
      ..writeByte(0)
      ..write(obj.CalorieDay0)
      ..writeByte(1)
      ..write(obj.CalorieDay1)
      ..writeByte(2)
      ..write(obj.CalorieDay2)
      ..writeByte(3)
      ..write(obj.CalorieDay3)
      ..writeByte(4)
      ..write(obj.CalorieDay4)
      ..writeByte(5)
      ..write(obj.CalorieDay5)
      ..writeByte(6)
      ..write(obj.CalorieDay6)
      ..writeByte(7)
      ..write(obj.CalorieDay7)
      ..writeByte(8)
      ..write(obj.CalorieDay8)
      ..writeByte(9)
      ..write(obj.CalorieDay9)
      ..writeByte(10)
      ..write(obj.CalorieDay10)
      ..writeByte(11)
      ..write(obj.CalorieDay11)
      ..writeByte(12)
      ..write(obj.CalorieDay12)
      ..writeByte(13)
      ..write(obj.CalorieDay13)
      ..writeByte(14)
      ..write(obj.CalorieDay14)
      ..writeByte(15)
      ..write(obj.CalorieDay15)
      ..writeByte(16)
      ..write(obj.CalorieDay16)
      ..writeByte(17)
      ..write(obj.CalorieDay17)
      ..writeByte(18)
      ..write(obj.CalorieDay18)
      ..writeByte(19)
      ..write(obj.CalorieDay19)
      ..writeByte(20)
      ..write(obj.CalorieDay20)
      ..writeByte(21)
      ..write(obj.CalorieDay21)
      ..writeByte(22)
      ..write(obj.CalorieDay22)
      ..writeByte(23)
      ..write(obj.CalorieDay23)
      ..writeByte(24)
      ..write(obj.CalorieDay24)
      ..writeByte(25)
      ..write(obj.CalorieDay25)
      ..writeByte(26)
      ..write(obj.CalorieDay26)
      ..writeByte(27)
      ..write(obj.CalorieDay27)
      ..writeByte(28)
      ..write(obj.CalorieDay28)
      ..writeByte(29)
      ..write(obj.CalorieDay29)
      ..writeByte(30)
      ..write(obj.CalorieDay30);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CalorieDayTrackerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ProgressValue1Adapter extends TypeAdapter<ProgressValue1> {
  @override
  final int typeId = 5;

  @override
  ProgressValue1 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProgressValue1(
      EasyDay1: fields[0] as double,
      EasyDay2: fields[1] as double,
      EasyDay3: fields[2] as double,
      EasyDay4: fields[3] as double,
      EasyDay5: fields[4] as double,
      EasyDay6: fields[5] as double,
      EasyDay7: fields[6] as double,
      EasyDay8: fields[7] as double,
      EasyDay9: fields[8] as double,
      EasyDay10: fields[9] as double,
      EasyDay11: fields[10] as double,
      EasyDay12: fields[11] as double,
      EasyDay13: fields[12] as double,
      EasyDay14: fields[13] as double,
      EasyDay15: fields[14] as double,
      EasyDay16: fields[15] as double,
      EasyDay17: fields[16] as double,
      EasyDay18: fields[17] as double,
      EasyDay19: fields[18] as double,
      EasyDay20: fields[19] as double,
      EasyDay21: fields[20] as double,
      EasyDay22: fields[21] as double,
      EasyDay23: fields[22] as double,
      EasyDay24: fields[23] as double,
      EasyDay25: fields[24] as double,
      EasyDay26: fields[25] as double,
      EasyDay27: fields[26] as double,
      EasyDay28: fields[27] as double,
      EasyDay29: fields[28] as double,
      EasyDay30: fields[29] as double,
      IntermediateDay1: fields[30] as double,
      IntermediateDay2: fields[31] as double,
      IntermediateDay3: fields[32] as double,
      IntermediateDay4: fields[33] as double,
      IntermediateDay5: fields[34] as double,
      IntermediateDay6: fields[35] as double,
      IntermediateDay7: fields[36] as double,
      IntermediateDay8: fields[37] as double,
      IntermediateDay9: fields[38] as double,
      IntermediateDay10: fields[39] as double,
      IntermediateDay11: fields[40] as double,
      IntermediateDay12: fields[41] as double,
      IntermediateDay13: fields[42] as double,
      IntermediateDay14: fields[43] as double,
      IntermediateDay15: fields[44] as double,
      IntermediateDay16: fields[45] as double,
      IntermediateDay17: fields[46] as double,
      IntermediateDay18: fields[47] as double,
      IntermediateDay19: fields[48] as double,
      IntermediateDay20: fields[49] as double,
      IntermediateDay21: fields[50] as double,
      IntermediateDay22: fields[51] as double,
      IntermediateDay23: fields[52] as double,
      IntermediateDay24: fields[53] as double,
      IntermediateDay25: fields[54] as double,
      IntermediateDay26: fields[55] as double,
      IntermediateDay27: fields[56] as double,
      IntermediateDay28: fields[57] as double,
      IntermediateDay29: fields[58] as double,
      IntermediateDay30: fields[59] as double,
      HardDay1: fields[60] as double,
      HardDay2: fields[61] as double,
      HardDay3: fields[62] as double,
      HardDay4: fields[63] as double,
      HardDay5: fields[64] as double,
      HardDay6: fields[65] as double,
      HardDay7: fields[66] as double,
      HardDay8: fields[67] as double,
      HardDay9: fields[68] as double,
      HardDay10: fields[69] as double,
      HardDay11: fields[70] as double,
      HardDay12: fields[71] as double,
      HardDay13: fields[72] as double,
      HardDay14: fields[73] as double,
      HardDay15: fields[74] as double,
      HardDay16: fields[75] as double,
      HardDay17: fields[76] as double,
      HardDay18: fields[77] as double,
      HardDay19: fields[78] as double,
      HardDay20: fields[79] as double,
      HardDay21: fields[80] as double,
      HardDay22: fields[81] as double,
      HardDay23: fields[82] as double,
      HardDay24: fields[83] as double,
      HardDay25: fields[84] as double,
      HardDay26: fields[85] as double,
      HardDay27: fields[86] as double,
      HardDay28: fields[87] as double,
      HardDay29: fields[88] as double,
      HardDay30: fields[89] as double,
    );
  }

  @override
  void write(BinaryWriter writer, ProgressValue1 obj) {
    writer
      ..writeByte(90)
      ..writeByte(0)
      ..write(obj.EasyDay1)
      ..writeByte(1)
      ..write(obj.EasyDay2)
      ..writeByte(2)
      ..write(obj.EasyDay3)
      ..writeByte(3)
      ..write(obj.EasyDay4)
      ..writeByte(4)
      ..write(obj.EasyDay5)
      ..writeByte(5)
      ..write(obj.EasyDay6)
      ..writeByte(6)
      ..write(obj.EasyDay7)
      ..writeByte(7)
      ..write(obj.EasyDay8)
      ..writeByte(8)
      ..write(obj.EasyDay9)
      ..writeByte(9)
      ..write(obj.EasyDay10)
      ..writeByte(10)
      ..write(obj.EasyDay11)
      ..writeByte(11)
      ..write(obj.EasyDay12)
      ..writeByte(12)
      ..write(obj.EasyDay13)
      ..writeByte(13)
      ..write(obj.EasyDay14)
      ..writeByte(14)
      ..write(obj.EasyDay15)
      ..writeByte(15)
      ..write(obj.EasyDay16)
      ..writeByte(16)
      ..write(obj.EasyDay17)
      ..writeByte(17)
      ..write(obj.EasyDay18)
      ..writeByte(18)
      ..write(obj.EasyDay19)
      ..writeByte(19)
      ..write(obj.EasyDay20)
      ..writeByte(20)
      ..write(obj.EasyDay21)
      ..writeByte(21)
      ..write(obj.EasyDay22)
      ..writeByte(22)
      ..write(obj.EasyDay23)
      ..writeByte(23)
      ..write(obj.EasyDay24)
      ..writeByte(24)
      ..write(obj.EasyDay25)
      ..writeByte(25)
      ..write(obj.EasyDay26)
      ..writeByte(26)
      ..write(obj.EasyDay27)
      ..writeByte(27)
      ..write(obj.EasyDay28)
      ..writeByte(28)
      ..write(obj.EasyDay29)
      ..writeByte(29)
      ..write(obj.EasyDay30)
      ..writeByte(30)
      ..write(obj.IntermediateDay1)
      ..writeByte(31)
      ..write(obj.IntermediateDay2)
      ..writeByte(32)
      ..write(obj.IntermediateDay3)
      ..writeByte(33)
      ..write(obj.IntermediateDay4)
      ..writeByte(34)
      ..write(obj.IntermediateDay5)
      ..writeByte(35)
      ..write(obj.IntermediateDay6)
      ..writeByte(36)
      ..write(obj.IntermediateDay7)
      ..writeByte(37)
      ..write(obj.IntermediateDay8)
      ..writeByte(38)
      ..write(obj.IntermediateDay9)
      ..writeByte(39)
      ..write(obj.IntermediateDay10)
      ..writeByte(40)
      ..write(obj.IntermediateDay11)
      ..writeByte(41)
      ..write(obj.IntermediateDay12)
      ..writeByte(42)
      ..write(obj.IntermediateDay13)
      ..writeByte(43)
      ..write(obj.IntermediateDay14)
      ..writeByte(44)
      ..write(obj.IntermediateDay15)
      ..writeByte(45)
      ..write(obj.IntermediateDay16)
      ..writeByte(46)
      ..write(obj.IntermediateDay17)
      ..writeByte(47)
      ..write(obj.IntermediateDay18)
      ..writeByte(48)
      ..write(obj.IntermediateDay19)
      ..writeByte(49)
      ..write(obj.IntermediateDay20)
      ..writeByte(50)
      ..write(obj.IntermediateDay21)
      ..writeByte(51)
      ..write(obj.IntermediateDay22)
      ..writeByte(52)
      ..write(obj.IntermediateDay23)
      ..writeByte(53)
      ..write(obj.IntermediateDay24)
      ..writeByte(54)
      ..write(obj.IntermediateDay25)
      ..writeByte(55)
      ..write(obj.IntermediateDay26)
      ..writeByte(56)
      ..write(obj.IntermediateDay27)
      ..writeByte(57)
      ..write(obj.IntermediateDay28)
      ..writeByte(58)
      ..write(obj.IntermediateDay29)
      ..writeByte(59)
      ..write(obj.IntermediateDay30)
      ..writeByte(60)
      ..write(obj.HardDay1)
      ..writeByte(61)
      ..write(obj.HardDay2)
      ..writeByte(62)
      ..write(obj.HardDay3)
      ..writeByte(63)
      ..write(obj.HardDay4)
      ..writeByte(64)
      ..write(obj.HardDay5)
      ..writeByte(65)
      ..write(obj.HardDay6)
      ..writeByte(66)
      ..write(obj.HardDay7)
      ..writeByte(67)
      ..write(obj.HardDay8)
      ..writeByte(68)
      ..write(obj.HardDay9)
      ..writeByte(69)
      ..write(obj.HardDay10)
      ..writeByte(70)
      ..write(obj.HardDay11)
      ..writeByte(71)
      ..write(obj.HardDay12)
      ..writeByte(72)
      ..write(obj.HardDay13)
      ..writeByte(73)
      ..write(obj.HardDay14)
      ..writeByte(74)
      ..write(obj.HardDay15)
      ..writeByte(75)
      ..write(obj.HardDay16)
      ..writeByte(76)
      ..write(obj.HardDay17)
      ..writeByte(77)
      ..write(obj.HardDay18)
      ..writeByte(78)
      ..write(obj.HardDay19)
      ..writeByte(79)
      ..write(obj.HardDay20)
      ..writeByte(80)
      ..write(obj.HardDay21)
      ..writeByte(81)
      ..write(obj.HardDay22)
      ..writeByte(82)
      ..write(obj.HardDay23)
      ..writeByte(83)
      ..write(obj.HardDay24)
      ..writeByte(84)
      ..write(obj.HardDay25)
      ..writeByte(85)
      ..write(obj.HardDay26)
      ..writeByte(86)
      ..write(obj.HardDay27)
      ..writeByte(87)
      ..write(obj.HardDay28)
      ..writeByte(88)
      ..write(obj.HardDay29)
      ..writeByte(89)
      ..write(obj.HardDay30);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProgressValue1Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
