import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
        backgroundColor: Colors.blueGrey[600],
      ),
      body: Container(
       color: Colors.blueGrey[300],
        child: Column(
          children: [
            // Top Widget with Search Icon
            TopWidget(),
            ProfileWidget(),
            DummyRows()



            
          ],
        ),
      )
    )
  ));
}

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topRight,
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/16830594?v=4'),
              radius: 30,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("DANIYAL", style: TextStyle(
                    fontSize: 30
                ),),
                Text("daniyalahmed520@gmail.com" , style: TextStyle(
                    color: Colors.white
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DummyRows extends StatelessWidget {
  const DummyRows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Age"),
                      Text("Lorem Ispum" , style: TextStyle(
                          color: Colors.white
                      ),)
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
            Divider(
              color: Colors.white,
            ),

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Address"),
                      Text("Lorem Ispum" , style: TextStyle(
                          color: Colors.white
                      ),)
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward,
                  color: Colors.white,)
              ],
            ),
            Divider(
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}


