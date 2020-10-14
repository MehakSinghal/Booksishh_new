import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List leading = [Icons.person, Icons.mail, Icons.lock];

  List titles = ['Username', 'email', 'password'];

  List data = ['Mehak', 'mehak@gmail.com', 'mehak123'];

  bool x = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          //color: Colors.pink,
          margin: EdgeInsets.only(bottom: 50),
          alignment: Alignment.center,
          width: 410,
          height: 180,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey[350],
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: IconButton(
                  icon: Icon(
                    Icons.add_a_photo,
                    size: 38,
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (ctx, i) => ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            leading: Icon(
              leading[i],
              color: Colors.grey,
              size: 30,
            ),
            title: TextFormField(
              initialValue: data[i],
              autofocus: !x,
              style: TextStyle(color: Colors.grey, fontSize: 20),
              readOnly: x,
              cursorColor: Colors.grey,
              onFieldSubmitted: (value) {
                setState(() {
                  x = false;
                });
              },
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(234, 243, 250, 0).withOpacity(1)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                border: UnderlineInputBorder(),
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  x = true;
                });
                /*showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            title: Text(
                              'Write the new ${titles[i]}',
                              style: TextStyle(
                                color: Color.fromRGBO(230, 64, 92, 0)
                                    .withOpacity(0.5),
                              ),
                            ),
                            content: TextField(
                              cursorColor: Colors.grey,
                              //readOnly: true,
                            ),
                          ));*/
              },
            ),
          ),
        ),
        SizedBox(height: 80,),
        Container(
          width: 380,
          height: 50,
          //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: RaisedButton(
            elevation: 0,
            color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              "SAVE CHANGES",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
