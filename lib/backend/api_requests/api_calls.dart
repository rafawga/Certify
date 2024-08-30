import 'dart:convert';

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
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Sessao Checkout',
      apiUrl: 'https://api.stripe.com/v1/checkout/sessions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51PanpqBHJiDMTi8zyDlwWh6CdQYx9b08SsCFZZKOhwDoHPrbwBJk3yt72e0rDiUf81w55eZ5xE19ntUTVykFf9L8009zGUlA0D',
      },
      params: {
        'success_url': successUrl,
        'line_items[0][price]': priceAPIID,
        'line_items[0][quantity]': 1,
        'mode': mode,
        'customer_email': customerEmail,
        'allow_promotion_codes': true,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
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
            'Bearer sk_test_51PanpqBHJiDMTi8zyDlwWh6CdQYx9b08SsCFZZKOhwDoHPrbwBJk3yt72e0rDiUf81w55eZ5xE19ntUTVykFf9L8009zGUlA0D',
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
