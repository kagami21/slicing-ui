import 'package:flutter/material.dart';
import 'package:ui/page/introduction_page.dart';


class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
	
	TextEditingController _searchInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
  	return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text('Lorem ipsum', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: _searchInput,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: " Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return IntroductionPage();
                      }));
                    },
                    child: Text('Lorem Ipsum', style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white)
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipisicing', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed', style: TextStyle(fontSize: 22),),
          ), 
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
            padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.orange,
                width: 2.0,
                style: BorderStyle.solid
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Ipsum', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                    Text('24 Courses', style: TextStyle(fontSize: 28),),
                    ],
                  ), 
                ),
                Flexible(
                  child: Icon(Icons.book_outlined, size: 60),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
            padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.orange,
                width: 2.0,
                style: BorderStyle.solid
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Ipsum', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                    Text('24 Courses', style: TextStyle(fontSize: 28),),
                    ],
                  ), 
                ),
                Flexible(
                  child: Icon(Icons.book_outlined, size: 60),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
            padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.orange,
                width: 2.0,
                style: BorderStyle.solid
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Ipsum', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                    Text('24 Courses', style: TextStyle(fontSize: 28),),
                    ],
                  ), 
                ),
                Flexible(
                  child: Icon(Icons.book_outlined, size: 60),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
            padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.orange,
                width: 2.0,
                style: BorderStyle.solid
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Ipsum', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                    Text('24 Courses', style: TextStyle(fontSize: 28),),
                    ],
                  ), 
                ),
                Flexible(
                  child: Icon(Icons.book_outlined, size: 60),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}