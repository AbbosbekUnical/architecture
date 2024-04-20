import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';

sealed class UIState<T> {
  const UIState();
}

final class Success<T> extends UIState<T> {
  final T? data;

  const Success(this.data);

  factory Success.nothing() => const Success(null);
}

final class GenericError<T> extends UIState<T> {
  final String message;

  const GenericError(this.message);
}

extension UIStateExceptionExtentions on Object {
  UIState<T> error<T>() {
    log(toString());
    switch (this) {
      case IOException _:
        return const GenericError('No connection');
      case DioException e:
        String errorMessage = '';
        int errorCode = e.response?.statusCode ?? 500;
        if (e.type == DioExceptionType.connectionError) {
          errorMessage = "Please check connection";
        } else {
          switch (errorCode) {
            case 500:
              errorMessage = 'Server error';
              break;

            case 502:
              errorMessage = 'Server down';
              break;
            case 404:
              errorMessage = 'Not found';
              break;

            case 413:
              errorMessage = 'Request Entity To Large';
              break;
            case 41:
              errorMessage = 'Token expired';
              break;

            case 403:
              errorMessage = 'Token expired';
              break;
            default:
              errorMessage = e.response?.data['message'] ?? '';
              break;
          }
        }
        return GenericError<T>(
          errorMessage,
        );
      default:
        return const GenericError('Unknown error');
    }
  }
}
