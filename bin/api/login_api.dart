import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class LoginApi {
  Handler get handler {
    Router router = Router();

    router.post('/login', (Request req) {
      return Response.ok('Deu bom');
    });

    return router;
  }
}
