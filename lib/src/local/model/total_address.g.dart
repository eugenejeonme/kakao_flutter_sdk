// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TotalAddress _$TotalAddressFromJson(Map<String, dynamic> json) {
  return TotalAddress(
    json['address_name'] as String,
    _$enumDecode(_$AddressTypeEnumMap, json['address_type']),
    stringToDouble(json['x']),
    stringToDouble(json['y']),
    Address.fromJson(json['address'] as Map<String, dynamic>),
    RoadAddress.fromJson(json['road_address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TotalAddressToJson(TotalAddress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('x', instance.x);
  writeNotNull('y', instance.y);
  val['address_name'] = instance.addressName;
  val['address_type'] = _$AddressTypeEnumMap[instance.addressType];
  val['address'] = instance.address;
  val['road_address'] = instance.roadAddress;
  return val;
}

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$AddressTypeEnumMap = {
  AddressType.REGION: 'REGION',
  AddressType.ROAD: 'ROAD',
  AddressType.REGION_ADDR: 'REGION_ADDR',
  AddressType.ROAD_ADDR: 'ROAD_ADDR',
};
