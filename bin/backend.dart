import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'infra/custom_server.dart';
import 'api/login_api.dart';
import 'api/blog_api.dart';

void main() async {
  var cascadeHandler =
      Cascade().add(LoginApi().handler).add(BlogApi().handler).handler;

  var handler =
      Pipeline().addMiddleware(logRequests()).addHandler(cascadeHandler);

  await CustomServer().initialize(
    handler: handler,
    address: 'localhost',
    port: 8080,
  );
}
