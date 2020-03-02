import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter users app',
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: HomePage(title: 'All Users'),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;
  HomePage({Key key, this.title}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<List<User>> _getUsers() async{
      var allData = await http.get('https://jsonplaceholder.typicode.com/users/');
      var jsonData = json.decode(allData.body);
      List<User> users = [];
      for (var i in jsonData){
        User user = User(i['id'], i['email'], i['name'], i['username'], i['phone'], i['website'] );
        users.add(user);
      }
      return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot ){
            if(snapshot.data == null){
              // ignore: missing_return
              return Container(
                child: Center(
                  child: Text('loading...'),
                ),
              );
            }
            else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlueAccent,
                      child: Text(
                          snapshot.data[index].name.substring(0,1),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    title: Text(snapshot.data[index].name),
                    subtitle: Text(snapshot.data[index].email),
                    onTap: (){
                      Navigator.push(context,
                        new MaterialPageRoute(builder: (context)=> DetailPage(snapshot.data[index]))
                      );
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

class User{
  final int id;
  final String email;
  final String name;
  final String username;
  final String phone;
  final String website;

  User(this.id, this.email, this.name, this.username, this.phone, this.website);

}