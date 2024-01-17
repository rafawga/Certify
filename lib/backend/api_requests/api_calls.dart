import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CriarSessaoCheckoutCall {
  static Future<ApiCallResponse> call({
    String? successUrl = 'https://easy-certificados.flutterflow.app/',
    String? priceAPIID = 'price_1OZLypGvat1kN0fUGpHdyVwH',
    String? customerEmail = 'rafawga@gmail.com',
    String? mode = 'subscription',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Sessao Checkout',
      apiUrl: 'https://api.stripe.com/v1/checkout/sessions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51OVFkRGvat1kN0fUiDYEMDam5EKkr7VKsssP6JlMun4rwbjvIPeAMu4Jx4pBiiXzJUmj7iQcYRmhQRtutaxlJ8nF00Ln74HLhH',
      },
      params: {
        'success_url': successUrl,
        'line_items[0][price]': priceAPIID,
        'line_items[0][quantity]': 1,
        'mode': mode,
        'customer_email': customerEmail,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
