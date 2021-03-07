// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Region _$RegionFromJson(Map<String, dynamic> json) {
  return Region(
    json['region_type'] as String,
    json['address_name'] as String,
    json['region_1depth_name'] as String,
    json['region_2depth_name'] as String,
    json['region_3depth_name'] as String,
    json['region_4depth_name'] as String,
    json['code'] as String,
    stringToDouble(json['x']),
    stringToDouble(json['y']),
  );
}

Map<String, dynamic> _$RegionToJson(Region instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('x', instance.x);
  writeNotNull('y', instance.y);
  val['region_type'] = instance.regionType;
  val['address_name'] = instance.addressName;
  val['region_1depth_name'] = instance.region1depthName;
  val['region_2depth_name'] = instance.region2depthName;
  val['region_3depth_name'] = instance.region3depthName;
  val['region_4depth_name'] = instance.region4depthName;
  val['code'] = instance.code;
  return val;
}
