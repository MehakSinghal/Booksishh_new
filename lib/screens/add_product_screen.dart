import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {

  bool x = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        padding: EdgeInsets.only(right: 15, left: 15, top: 15),
        children: [
          Container(
            width: 330,
            height: 60,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Title',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                  ),
                ),
              ),
              cursorColor: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
              maxLines: 1,
              textInputAction: TextInputAction.next,
            ),
          ),
          Container(
            width: 330,
            height: 60,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Price',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                  ),
                ),
              ),
              cursorColor: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
              maxLines: 1,
              textInputAction: TextInputAction.next,
            ),
          ),
          Container(
            width: 330,
            height: 90,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Description',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                  ),
                ),
              ),
              cursorColor: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
              maxLines: 5,
              textInputAction: TextInputAction.next,
            ),
          ),
          Row(
            children: [
              Container(
                height: 130,
                width: 120,
                color: Colors.lightBlueAccent,
                margin: EdgeInsets.only(right: 15),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.add_a_photo,
                          color:
                              Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                          size: 35,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(width: 30,),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            x=!x;
                          });
                        },
                        child: Text(
                          'URL',
                          style: TextStyle(
                            fontSize: 22,
                            color:
                                Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                          ),
                        ),
                      )
                    ],
                  ),
                  x ? Container(
                    width: 230,
                    height: 60,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'URL',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                          ),
                        ),
                      ),
                      cursorColor:
                          Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                      maxLines: 1,
                      textInputAction: TextInputAction.next,
                    ),
                  ) : Container(),
                ],
              ),
            ],
          ),
          Container(
            width: 330,
            height: 60,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Edition',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                  ),
                ),
              ),
              cursorColor: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
              maxLines: 1,
              textInputAction: TextInputAction.next,
            ),
          ),
          Container(
            width: 330,
            height: 60,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Author',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                  ),
                ),
              ),
              cursorColor: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
              maxLines: 1,
              textInputAction: TextInputAction.next,
            ),
          ),
          Container(
            width: 330,
            height: 60,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Publisher',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                  ),
                ),
              ),
              cursorColor: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
              maxLines: 1,
              textInputAction: TextInputAction.next,
            ),
          ),
          Container(
            width: 330,
            height: 60,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Genre',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                  ),
                ),
              ),
              cursorColor: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
              maxLines: 1,
              textInputAction: TextInputAction.next,
            ),
          ),
          Container(
            width: 330,
            height: 60,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Language',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                  ),
                ),
              ),
              cursorColor: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
              maxLines: 1,
              textInputAction: TextInputAction.next,
            ),
          ),
          Container(
            width: 330,
            height: 60,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Number of Pages',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                  ),
                ),
              ),
              cursorColor: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
              maxLines: 1,
              textInputAction: TextInputAction.next,
            ),
          ),
          Container(
            width: 330,
            height: 60,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'How old',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
                  ),
                ),
              ),
              cursorColor: Color.fromRGBO(230, 64, 92, 0).withOpacity(0.5),
              maxLines: 1,
              textInputAction: TextInputAction.next,
            ),
          ),
        ],
      ),
    );
  }
}
