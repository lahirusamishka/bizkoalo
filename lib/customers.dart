import 'package:bizkoalo/model/posts_model.dart';
import 'package:bizkoalo/services/http_service.dart';
import 'package:flutter/material.dart';

class Customers extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customers"),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            List<Post> posts = snapshot.data;
            return ListView(
              children: posts
                  .map(
                    (Post post) => ListTile(
                        title: Text(post.title),
                        subtitle: Text("${post.userId}"),
                        onTap: () {}
                        // => Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => PostDetail(
                        //       post: post,
                        //     ),
                        //   ),
                        // ),
                        ),
                  )
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
