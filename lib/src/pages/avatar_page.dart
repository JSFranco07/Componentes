import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://img-cdn.hipertextual.com/files/2018/11/Stan-Lee.jpg?strip=all&lossy=1&quality=57&resize=740%2C490&ssl=1'),
              radius: 22.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 7.0),
            child: CircleAvatar(
              child: Text('HT'),
              backgroundColor: Colors.green,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://staticuestudio.blob.core.windows.net/buhomag/2016/03/22154524/stan.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}