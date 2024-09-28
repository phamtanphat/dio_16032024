import 'package:dio_16032024/data/model/post.dart';
import 'package:dio_16032024/presentation/widget/bloc/post_bloc.dart';
import 'package:dio_16032024/presentation/widget/bloc/post_event.dart';
import 'package:flutter/material.dart';

class DemoDioPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DemoPageWidget();
  }
}

class DemoPageWidget extends StatefulWidget {

  @override
  State<DemoPageWidget> createState() => _DemoPageWidgetState();
}

class _DemoPageWidgetState extends State<DemoPageWidget> {
  late PostBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = PostBloc();
    _bloc.eventSink.add(PostEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo dio page"),
      ),
      body: Container(
        child: StreamBuilder<List<Post>>(
            stream: _bloc.postStream,
            builder: (context, snapShot) {
              var listPost = snapShot.data ?? List.empty();
              if (listPost.isEmpty) return Container();
              return ListView.builder(
                  itemBuilder: (context, index) {
                    var post = listPost[index];
                    return Card(
                      child: ListTile(
                        title: Text("Title: ${post.title}"),
                        subtitle: Text("Description: ${post.body}"),
                      ),
                    );
                  }
              );
            },
        ),
      ),
    );
  }
}




