import 'dart:convert';
import 'package:bizkoalo/model/posts_model.dart';
import 'package:http/http.dart';

class HttpService {
  // final String postsURL = "localhost:8000/api/customers";
 final String postsURL = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> getPosts() async {
    Response res = await get(postsURL);
    print(res.body);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts = body
          .map(
            (dynamic item) => Post.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Can't get posts.";
    }
  }
}
