// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Link _$LinkFromJson(Map<String, dynamic> json) {
  return Link(
    webUrl: Uri.parse(json['web_url'] as String),
    mobileWebUrl: Uri.parse(json['mobile_web_url'] as String),
    androidExecParams: json['android_execution_params'] as String,
    iosExecParams: json['ios_execution_params'] as String,
  );
}

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'web_url': instance.webUrl.toString(),
      'mobile_web_url': instance.mobileWebUrl.toString(),
      'android_execution_params': instance.androidExecParams,
      'ios_execution_params': instance.iosExecParams,
    };
