import 'package:get/get.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://yapi.ducafecat.tech/mock/11';

    // 请求拦截
    httpClient.addRequestModifier<void>((request) {
      request.headers['Authorization'] = '12345678';
      return request;
    });

    // 响应拦截
    httpClient.addResponseModifier((request, response) {
      return response;
    });
  }
}
