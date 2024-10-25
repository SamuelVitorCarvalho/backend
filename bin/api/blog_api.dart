import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class BlogApi {
  Handler get handler {
    Router router = Router();

    // listagem
    router.get('/blog/noticias', (Request req) {
      return Response.ok('Choveu Hoje');
    });

    // nova noticia
    router.post('/blog/noticias', (Request req) {
      return Response.ok('Adicionei');
    });

    // atualizar noticia
    router.put('/blog/noticias', (Request req) {
      String? id = req.url.queryParameters['id'];
      return Response.ok('Atualizei');
    });

    // deletar noticia
    router.delete('/blog/noticia', (Request req) {
      String? id = req.url.queryParameters['id'];
      return Response.ok('Deletei');
    });

    return router;
  }
}
