import 'dart:convert';
import '../cloud_functions/cloud_functions.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CriarSessaoCheckoutCall {
  static Future<ApiCallResponse> call({
    String? successUrl = 'https://easy-certificados.flutterflow.app/',
    String? priceAPIID = 'price_1PansOBHJiDMTi8z3GbyPVvB',
    String? customerEmail = 'rafawga@gmail.com',
    String? mode = 'subscription',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CriarSessaoCheckoutCall',
        'variables': {
          'successUrl': successUrl,
          'priceAPIID': priceAPIID,
          'customerEmail': customerEmail,
          'mode': mode,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payment_status''',
      ));
  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class CancelarAAssinaturaCall {
  static Future<ApiCallResponse> call({
    String? id = 'sub_1OZifsGvat1kN0fUbHLBxAeA',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Cancelar a assinatura',
      apiUrl: 'https://api.stripe.com/v1/subscriptions/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
