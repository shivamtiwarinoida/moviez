import 'package:flutter/material.dart';


class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key, required this.data});


  final dynamic data;

  @override
  State<MovieScreen> createState() => _MovieState();
}

class _MovieState extends State<MovieScreen> {
  String img="";

  @override
  void initState(){
    super.initState();
    if(widget.data['image']==null){
      return ;
    }

    if(widget.data['image']['medium']!=null){
      img=widget.data['image']['medium'];
    }
    else if(widget.data['image']['original']!=null){
      img=widget.data['image']['original'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Moviez"),
      ),
      body:SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(12),
            child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 6),
            Text("${widget.data['name']}",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 5, 117, 245)
              )
            ),
            Text("Language : ${widget.data['name']}"),
            SizedBox(height: 6),
            Text("${widget.data['summary']}",
            style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            RichText(
              text: TextSpan(
                children:[
                  TextSpan(text: "${widget.data['url']}", style: TextStyle(color:Color.fromARGB(255, 0, 103, 230))),
                ],
              ),
            ),
            SizedBox(height: 12),
            Center(
              child: Image.network(
                img,
                loadingBuilder: (context, child, progress) {
                  return progress == null 
                      ? child 
                      : CircularProgressIndicator();
                },
                height: 200,
              )
            ),
        ],) 
            ),
      ));
  }
}