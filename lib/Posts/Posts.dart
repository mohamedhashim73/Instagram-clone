import 'package:flutter/material.dart';
import 'package:textdformfield_app/Posts/stories.dart';
import 'package:textdformfield_app/Settings/settings.dart';
import '../Constructors/constructors.dart';
List<Posts> _details = [
  Posts(url: "images/122.jpg", name: "mohamedhashim", place: "Computer and Informatics at Tanta"),
  Posts(url: "images/34.jpg", name: "mohamedhashim", place: "Talaat Gym"),
  Posts(url: "images/12.jpg", name: "tigershroff", place: "India"),
  Posts(url: "images/50.jpg", name: "ahmedshawki", place: "Faculty of Law at Tanta"),
  Posts(url: "images/45.jpg", name: "hassanmohamed", place: "Kafr Sakr"),
  Posts(url: "images/fergani.jpg", name: "ferjanisassi", place: "Tunisia"),
  Posts(url: "images/177.jpg", name: "mohamedhashim", place: "Computer and Informatics at Tanta"),
  Posts(url: "images/fa.jpg", name: "mohamedsherif", place: "Zifta"),
  Posts(url: "images/4.jpg", name: "tigershroff", place: "India"),
  Posts(url: "images/20.jpg", name: "sarakkabour", place: "India"),
  Posts(url: "images/33.jpg", name: "mohamedzayed", place: "FCI Tanta"),
];
class Main_Page extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        backgroundColor: Colors.black,
        actions: const [
          Icon(Icons.add_box_rounded, color: Colors.white, size: 22,),
          SizedBox(width: 22,),
          Icon(Icons.favorite_border,color: Colors.white,size: 22,),
          SizedBox(width: 25,),
          Icon(Icons.messenger, color: Colors.white, size: 22,),
          SizedBox(width: 10,),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          shrinkWrap:true,
          children: [
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 95,
              alignment: Alignment.topLeft,
              child: Stories(),
            ),
            // ******************************************* Posts **************************************************
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _details.length,
                itemBuilder: (context,i){
                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.black,
                      margin: const EdgeInsets.only(top: 8),
                      child: Stack(
                        clipBehavior: Clip.none, children:  [
                          Positioned(
                            left: 10,
                            top: 4,
                            child: CircleAvatar(backgroundImage: AssetImage(_details[i].url),radius: 18,)
                          ),
                          Positioned(
                            left: 56,
                            top: 2,
                            child: Text(_details[i].name,style: const TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold,),),
                          ),
                          Positioned(
                            left: 56,
                            top: 25,
                            child: Text(_details[i].place,style: const TextStyle(color: Colors.grey,fontSize: 13,),),
                          ),
                          Positioned(
                            left: 342,
                            top: 2.5,
                            child: GestureDetector(
                              child: Text("⋮",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context){
                                  return Settings_Page();
                                }));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2,),
                    Container(
                      height: 400,
                      color: Colors.black,
                      margin: const EdgeInsets.only(left: 10,right: 10),
                      child: Image.asset(_details[i].url,width : double.infinity,fit: BoxFit.fill,),
                    ),
                    const SizedBox(height: 6,),
                    Container(
                      margin: const EdgeInsets.only(left: 7,right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.favorite_outline_sharp,color: Colors.white,),
                              SizedBox(width: 18,),
                              Icon(Icons.add_comment,color: Colors.white,size: 20,),
                              SizedBox(width: 18,),
                              Icon(Icons.send,color: Colors.white,size: 20,),
                            ],
                          ),
                          Row(
                            children: const [ Icon(Icons.turned_in,color: Colors.white,size: 25,), ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      children: const [
                        SizedBox(width: 12,),
                        Text("6382,688 likes",textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    // Detail of post
                    Row(
                      children: [
                        SizedBox(width: 12,),
                        Text(_details[i].name,textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontSize: 15,),),
                        SizedBox(width: 5,),
                        Text("Nice Day in my favoite Place",textAlign: TextAlign.left,style: TextStyle(color: Colors.grey,fontSize: 12,),),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Container(
                      margin: const EdgeInsets.only(left: 12,right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              CircleAvatar(backgroundImage: AssetImage("images/mo.png"),radius: 10,),
                              SizedBox(width: 10,),
                              Text("Add a comment....",textAlign: TextAlign.left,style:  TextStyle(color: Colors.grey,fontSize: 15,),),
                            ],
                          ),
                          Row(
                            children: const [
                              const Text("❤",style: TextStyle(fontSize: 15),),
                              const SizedBox(width: 8,),
                              const Text("👐",style: TextStyle(fontSize: 15),),
                              const SizedBox(width: 8,),
                              const Icon(Icons.add_circle_outline_sharp,size: 18,color: Colors.grey,),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                );
                }),
          ],
        ),
      ),
    );
  }
}
