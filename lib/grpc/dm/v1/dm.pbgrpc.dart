//
//  Generated code. Do not modify.
//  source: bilibili/community/service/dm/v1/dm.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'dm.pb.dart' as $0;

export 'dm.pb.dart';

@$pb.GrpcServiceName('bilibili.community.service.dm.v1.DM')
class DMClient extends $grpc.Client {
  static final _$dmSegMobile = $grpc.ClientMethod<$0.DmSegMobileReq, $0.DmSegMobileReply>(
      '/bilibili.community.service.dm.v1.DM/DmSegMobile',
      ($0.DmSegMobileReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DmSegMobileReply.fromBuffer(value));
  static final _$dmView = $grpc.ClientMethod<$0.DmViewReq, $0.DmViewReply>(
      '/bilibili.community.service.dm.v1.DM/DmView',
      ($0.DmViewReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DmViewReply.fromBuffer(value));
  static final _$dmPlayerConfig = $grpc.ClientMethod<$0.DmPlayerConfigReq, $0.Response>(
      '/bilibili.community.service.dm.v1.DM/DmPlayerConfig',
      ($0.DmPlayerConfigReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Response.fromBuffer(value));
  static final _$dmSegOtt = $grpc.ClientMethod<$0.DmSegOttReq, $0.DmSegOttReply>(
      '/bilibili.community.service.dm.v1.DM/DmSegOtt',
      ($0.DmSegOttReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DmSegOttReply.fromBuffer(value));
  static final _$dmSegSDK = $grpc.ClientMethod<$0.DmSegSDKReq, $0.DmSegSDKReply>(
      '/bilibili.community.service.dm.v1.DM/DmSegSDK',
      ($0.DmSegSDKReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DmSegSDKReply.fromBuffer(value));
  static final _$dmExpoReport = $grpc.ClientMethod<$0.DmExpoReportReq, $0.DmExpoReportRes>(
      '/bilibili.community.service.dm.v1.DM/DmExpoReport',
      ($0.DmExpoReportReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DmExpoReportRes.fromBuffer(value));

  DMClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.DmSegMobileReply> dmSegMobile($0.DmSegMobileReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dmSegMobile, request, options: options);
  }

  $grpc.ResponseFuture<$0.DmViewReply> dmView($0.DmViewReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dmView, request, options: options);
  }

  $grpc.ResponseFuture<$0.Response> dmPlayerConfig($0.DmPlayerConfigReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dmPlayerConfig, request, options: options);
  }

  $grpc.ResponseFuture<$0.DmSegOttReply> dmSegOtt($0.DmSegOttReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dmSegOtt, request, options: options);
  }

  $grpc.ResponseFuture<$0.DmSegSDKReply> dmSegSDK($0.DmSegSDKReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dmSegSDK, request, options: options);
  }

  $grpc.ResponseFuture<$0.DmExpoReportRes> dmExpoReport($0.DmExpoReportReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dmExpoReport, request, options: options);
  }
}

@$pb.GrpcServiceName('bilibili.community.service.dm.v1.DM')
abstract class DMServiceBase extends $grpc.Service {
  $core.String get $name => 'bilibili.community.service.dm.v1.DM';

  DMServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.DmSegMobileReq, $0.DmSegMobileReply>(
        'DmSegMobile',
        dmSegMobile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DmSegMobileReq.fromBuffer(value),
        ($0.DmSegMobileReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DmViewReq, $0.DmViewReply>(
        'DmView',
        dmView_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DmViewReq.fromBuffer(value),
        ($0.DmViewReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DmPlayerConfigReq, $0.Response>(
        'DmPlayerConfig',
        dmPlayerConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DmPlayerConfigReq.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DmSegOttReq, $0.DmSegOttReply>(
        'DmSegOtt',
        dmSegOtt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DmSegOttReq.fromBuffer(value),
        ($0.DmSegOttReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DmSegSDKReq, $0.DmSegSDKReply>(
        'DmSegSDK',
        dmSegSDK_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DmSegSDKReq.fromBuffer(value),
        ($0.DmSegSDKReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DmExpoReportReq, $0.DmExpoReportRes>(
        'DmExpoReport',
        dmExpoReport_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DmExpoReportReq.fromBuffer(value),
        ($0.DmExpoReportRes value) => value.writeToBuffer()));
  }

  $async.Future<$0.DmSegMobileReply> dmSegMobile_Pre($grpc.ServiceCall call, $async.Future<$0.DmSegMobileReq> request) async {
    return dmSegMobile(call, await request);
  }

  $async.Future<$0.DmViewReply> dmView_Pre($grpc.ServiceCall call, $async.Future<$0.DmViewReq> request) async {
    return dmView(call, await request);
  }

  $async.Future<$0.Response> dmPlayerConfig_Pre($grpc.ServiceCall call, $async.Future<$0.DmPlayerConfigReq> request) async {
    return dmPlayerConfig(call, await request);
  }

  $async.Future<$0.DmSegOttReply> dmSegOtt_Pre($grpc.ServiceCall call, $async.Future<$0.DmSegOttReq> request) async {
    return dmSegOtt(call, await request);
  }

  $async.Future<$0.DmSegSDKReply> dmSegSDK_Pre($grpc.ServiceCall call, $async.Future<$0.DmSegSDKReq> request) async {
    return dmSegSDK(call, await request);
  }

  $async.Future<$0.DmExpoReportRes> dmExpoReport_Pre($grpc.ServiceCall call, $async.Future<$0.DmExpoReportReq> request) async {
    return dmExpoReport(call, await request);
  }

  $async.Future<$0.DmSegMobileReply> dmSegMobile($grpc.ServiceCall call, $0.DmSegMobileReq request);
  $async.Future<$0.DmViewReply> dmView($grpc.ServiceCall call, $0.DmViewReq request);
  $async.Future<$0.Response> dmPlayerConfig($grpc.ServiceCall call, $0.DmPlayerConfigReq request);
  $async.Future<$0.DmSegOttReply> dmSegOtt($grpc.ServiceCall call, $0.DmSegOttReq request);
  $async.Future<$0.DmSegSDKReply> dmSegSDK($grpc.ServiceCall call, $0.DmSegSDKReq request);
  $async.Future<$0.DmExpoReportRes> dmExpoReport($grpc.ServiceCall call, $0.DmExpoReportReq request);
}
