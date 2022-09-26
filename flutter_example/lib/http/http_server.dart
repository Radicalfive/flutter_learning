import 'dart:io';

void main() {
  HttpServer.bind(InternetAddress.loopbackIPv4, 8080).then((server) {
    print('Server started on port 8080!');
    server.listen((HttpRequest request) {
      // 打印请求的path
      print(request.uri.path);
      if (request.uri.path.startsWith('/greet')) {
        var subPathList = request.uri.path.split('/');

        if (subPathList.length >= 3) {
          request.response.write('hello, ${subPathList[2]}');
          request.response.close();
        } else {
          request.response.write('hello,');
          request.response.close();
        }
      } else {
        request.response.write('Welcome to test server!');
        request.response.close();
      }
    });
  });
}
