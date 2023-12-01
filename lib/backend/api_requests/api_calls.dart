import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CoinMarketCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'CoinMarket',
      apiUrl:
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=IDR&order=market_cap_desc&per_page=100&page=1&sparkline=false&locale=en',
      callType: ApiCallType.GET,
      headers: {
        'https':
            '//api.coingecko.com/api/v3/coins/markets?vs_currency=IDR&order=market_cap_desc&per_page=100&page=1&sparkline=false&locale=en \\ -H accept: application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nama(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      );
  static dynamic gambar(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
        true,
      );
  static dynamic harga(dynamic response) => getJsonField(
        response,
        r'''$[:].current_price''',
        true,
      );
  static dynamic marketcap(dynamic response) => getJsonField(
        response,
        r'''$[:].market_cap''',
        true,
      );
  static dynamic marketrank(dynamic response) => getJsonField(
        response,
        r'''$[:].market_cap_rank''',
        true,
      );
  static dynamic high24(dynamic response) => getJsonField(
        response,
        r'''$[:].high_24h''',
        true,
      );
  static dynamic low24(dynamic response) => getJsonField(
        response,
        r'''$[:].low_24h''',
        true,
      );
  static dynamic princechange24(dynamic response) => getJsonField(
        response,
        r'''$[:].price_change_24h''',
        true,
      );
  static dynamic persentasechange24(dynamic response) => getJsonField(
        response,
        r'''$[:].price_change_percentage_24h''',
        true,
      );
  static dynamic marketcapchange24(dynamic response) => getJsonField(
        response,
        r'''$[:].market_cap_change_24h''',
        true,
      );
  static dynamic marketcappresentasechange24(dynamic response) => getJsonField(
        response,
        r'''$[:].market_cap_change_percentage_24h''',
        true,
      );
  static dynamic kode(dynamic response) => getJsonField(
        response,
        r'''$[:].symbol''',
        true,
      );
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
