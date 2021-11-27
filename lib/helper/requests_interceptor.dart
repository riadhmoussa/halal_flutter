import 'dart:io';
import 'package:dio/dio.dart';
import 'package:halal_flutter/common/constants.dart';
import 'package:halal_flutter/common/toasts/custom_toast.dart';
import 'package:halal_flutter/helper/shared_preferences.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';


class DioRequestsInterceptor {
  static Dio? _dio;

  static ResponseType responseType = ResponseType.json;

  //! Interceptor Setup
  static Dio get dio {
    SharedPreferences prefs = SharedPreferences();
    String savedToken = prefs.read('token');

    // void checkoutConnectivity() {}
    if (_dio == null) {
      _dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: 15000,
          sendTimeout: 50000,
          receiveTimeout: 50000,
        ),
      );

      _dio!.interceptors.add(
        InterceptorsWrapper(
          onRequest: (
              RequestOptions requestOptions,
              RequestInterceptorHandler handler,
              ) {
            // ignore: avoid_print
     /*     print(
              '${savedToken! ?? 'Not connected yet'}',
            );*/

          //  showLoader();

            if (requestOptions.method == 'GET')
              requestOptions.queryParameters.removeWhere(
                    (key, value) => value == null,
              );

            requestOptions.responseType = responseType;

            requestOptions.headers.addAll({
              HttpHeaders.authorizationHeader: "Bearer ${prefs.read('token')}",
              HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
            });

            handler.next(requestOptions);
          },
          onResponse: (
              response,
              ResponseInterceptorHandler handler,
              ) async {
            EasyLoading.dismiss();
            responseType = ResponseType.json;
            handler.next(response);
          },
          onError: (
              DioError error,
              ErrorInterceptorHandler handler,
              ) {
            EasyLoading.dismiss();
            responseType = ResponseType.json;
            _handleError(error);
            handler.next(error);
          },
        ),
      );
    }

    return _dio!;
  }

  //! Loader Setup
  static bool loaderEnabled = true;

  static get savedToken => null;
  static void showLoader() {
    if (loaderEnabled) EasyLoading.show();
  }

  static void hideLoader() {
    EasyLoading.dismiss();
  }

  static void enableLoader() {
    DioRequestsInterceptor.loaderEnabled = true;
  }

  static void disableLoader() {
    DioRequestsInterceptor.loaderEnabled = false;
  }

  //! Error Handling

  static Dio tokenRefreshDio = Dio();

  static void _handleError(DioError error) {
    // ! TOKEN REFRESHING
    if (error.response?.statusCode == 403 ) {
      // _dio.lock();
      // tokenRefreshDio.unlock();
      // final TokenService _tokenService = TokenService();
      // _tokenService.refreshTokens().then((bool success) {
      //   _dio.unlock();
      //   tokenRefreshDio.lock();
      // });

    } else {
      // ! Failure response toasting
      if (error.response != null &&
          error.response!.data != null &&
          error.response!.data["message"] != null) {
        showCustomToast(
          duration: 3,
          toastType: ToastTypes.error,
          contentText: error.response!.data["message"],
          onTheTop: false,
        );
      } else
        showCustomToast(
          toastType: ToastTypes.error,
          contentText: "Une erreur est survenue",
          onTheTop: false,
        );
    }
  }
}
