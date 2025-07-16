import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  const Failures(this.errMessage);
}

class ServerFailure extends Failures {
  const ServerFailure(super.errMessage);
  factory ServerFailure.fromDioException(DioException dioexception) {
    switch (dioexception.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('خطأ: انتهت مهلة الاتصال بالخادم.');

      case DioExceptionType.sendTimeout:
        return ServerFailure('خطأ: انتهت مهلة إرسال البيانات إلى الخادم.');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('خطأ: انتهت مهلة استلام البيانات من الخادم.');

      case DioExceptionType.badCertificate:
        return ServerFailure('خطأ: الشهادة غير صالحة أو غير موثوقة.');

      case DioExceptionType.badResponse:
        ServerFailure.fromResponse(
          dioexception.response!.statusCode!,
          dioexception.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure('تم إلغاء الطلب قبل اكتماله.');

      case DioExceptionType.connectionError:
        return ServerFailure('خطأ في الاتصال: تحقق من اتصال الإنترنت.');

      case DioExceptionType.unknown:
        if (dioexception.message!.contains('SocketException')) {
          return ServerFailure('No interner connection');
        }
        return ServerFailure('UnExpected error , please try later');
    }
    return ServerFailure(dioexception.message!);
  }

  factory ServerFailure.fromResponse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statuscode == 404) {
      return ServerFailure('Your request not found , please try later');
    } else if (statuscode == 500) {
      return ServerFailure('Internet server error , please try later');
    } else {
      ServerFailure('Opps there was an error , please try later');
    }
    return ServerFailure('Opps there was an error , please try later');
  }
}
