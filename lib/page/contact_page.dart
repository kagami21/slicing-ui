import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {

  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => ContactPageState();
}

class ContactPageState extends State<ContactPage> {

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
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10, mainAxisExtent: 110,),
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 12,//contact.length,
              itemBuilder: (context, index) {
                return Container(
                  //width: 200,
                  height: 200,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.orange,
                      width: 1.0,
                      style: BorderStyle.solid
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lorem Name', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      Text('Description', style: TextStyle(fontSize: 15),),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.person, size: 35, color: Colors.purple),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}