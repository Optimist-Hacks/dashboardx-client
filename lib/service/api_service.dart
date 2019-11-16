import 'dart:async';
import 'dart:convert' show json;
import 'dart:typed_data';

import 'package:dashboardx/data/model/serializer.dart';
import 'package:dashboardx/data/model/server/info.dart';
import 'package:dashboardx/utils/log.dart';
import 'package:http/http.dart' as http;

const _tag = "api_service";
const _baseUrl = "4a99d15c.ngrok.io";
const _houseId = "4a944fb8-7e9b-4041-aed6-cded0c797562";

class HttpCode {
  static const OK = 200;
  static const TIME_OUT = 504;
}

class ApiService {
  static const _timeoutDuration = Duration(seconds: 30);
  final _client = http.Client();

  Future<Info> getInfo({double noise}) async {
    Map<String, String> params = {
      'housingId': _houseId,
    };
    if (noise != null) {
      params['noise'] = '$noise';
    }
    final jsonResponse = await _get('info', params: params);
    if (jsonResponse == null) {
      Log.e(_tag, "Response is null");
      return null;
    }
    return deserialize<Info>(jsonResponse);
  }

  Future<bool> uploadImage(Uint8List data) async {
    final uri = _buildUri("face");
    var request = http.MultipartRequest("POST", uri);
    request.files.add(
      http.MultipartFile.fromBytes(
        'file',
        data,
        filename: "file",
      ),
    );
    request.fields['housingId'] = _houseId;

    Log.d(_tag, "-> POST url = $uri");

    final response = await request.send().timeout(_timeoutDuration);

    Log.d(_tag, "<- POST url = $uri, code = ${response.statusCode}");

    return response.statusCode == HttpCode.OK;
  }

  Future<dynamic> _get(String path, {Map<String, String> params}) async {
    final uri = _buildUri("$path", params: params);
    Log.d(_tag, "-> GET url = $uri, params = $params");

    final response = await _client
        .get(uri)
        .timeout(_timeoutDuration, onTimeout: _onTimeout)
        .catchError((error) {
      Log.e(_tag,
          "<- GET url = $uri, Error while making GET request, error = $error");
      return null;
    });

    if (response == null) {
      return null;
    }

    Log.d(_tag, "<- GET url = $uri, code = ${response.statusCode}");
    Log.d(_tag, "<- GET url = $uri, body = ${response.body}");

    if (response.statusCode != HttpCode.OK) {
      return null;
    }

    return json.decode(response.body);
  }

  Future<bool> _post(
    String path, {
    Map<String, String> params,
    Map<String, String> headers,
    body,
  }) async {
    final uri = _buildUri(path, params: params);
    Log.d(_tag, "-> POST url = $uri, params = $params, body = $body");

    final response = await _client
        .post(uri, headers: headers, body: body)
        .timeout(_timeoutDuration, onTimeout: _onTimeout)
        .catchError((error) {
      Log.e(_tag,
          "<- POST url = $uri, Error while making POST request, error = $error");
      return false;
    });

    if (response == null) {
      return false;
    }

    Log.d(_tag, "<- POST url = $uri, code = ${response.statusCode}");
    Log.d(_tag, "<- POST url = $uri, body = ${response.body}");

    if (response.statusCode != 200) {
      return false;
    }

    if (response.body == null || response.body.isEmpty) {
      return false;
    }

    return true;
  }

  Uri _buildUri(String path, {Map<String, String> params}) {
    return Uri.https(_baseUrl, path, params);
  }

  http.Response _onTimeout() {
    Log.e(_tag, "Request timeout ${_timeoutDuration.inSeconds}s");
    return http.Response("Timeout error", HttpCode.TIME_OUT);
  }
}
