import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final FirebaseUser user;

  HomePage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('instagram clone',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text('instagram에 오신 것을 환영합니다.',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text('사진과 동영상을 보려면 팔로우 하세요'),
                  Padding(padding: EdgeInsets.all(16.0)),
                  SizedBox(
                    width: 260.0,
                    child: Card(
                      elevation: 4.0,
                      child: Column(
                        children: <Widget>[
                        SizedBox(
                        width: 80.0,
                        height: 80.0,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(user.photoUrl),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Text(user.email, style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(user.displayName),
                        Padding(padding: EdgeInsets.all(8.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          SizedBox(
                            width :70.0,
                            height: 70.0,
                            child : Image.network('https://cdn.clien.net/web/api/file/F01/8943891/37854b4f3dc856.png' , fit: BoxFit.cover),
                          ),
                            Padding(padding: EdgeInsets.all(4.0)),
                          SizedBox(
                            width :70.0,
                            height: 70.0,
                            child : Image.network('https://cdn.clien.net/web/api/file/F01/8943891/37854b4f3dc856.png' , fit: BoxFit.cover),
                          ),
                            Padding(padding: EdgeInsets.all(4.0)),
                          SizedBox(
                            width :70.0,
                            height: 70.0,
                            child : Image.network('https://cdn.clien.net/web/api/file/F01/8943891/37854b4f3dc856.png' , fit: BoxFit.cover),
                            ),
                          ],
                        ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Text('Facebook 친구'),
                      Padding(padding: EdgeInsets.all(8.0)),
                      RaisedButton(
                            child: Text('팔로우 하세용'),
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                            onPressed: () {}
                        )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
