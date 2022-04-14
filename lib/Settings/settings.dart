import 'package:flutter/material.dart';
import '../Constructors/constructors.dart';
List<Settings> _content = [
  Settings(title: "Follow and invite Friends", name: const Icon(Icons.person_add_sharp,color: Colors.white,size: 25,)),
  Settings(title: "Notifications", name: const Icon(Icons.notifications_none,color: Colors.white,size: 25,)),
  Settings(title: "Privacy", name: const Icon(Icons.lock,color: Colors.white,size: 25,)),
  Settings(title: "Security", name: const Icon(Icons.security,color: Colors.white,size: 25,)),
  Settings(title: "Ads", name: const Icon(Icons.add_sharp,color: Colors.white,size: 25,)),
  Settings(title: "Payments", name: const Icon(Icons.payment,color: Colors.white,size: 25,)),
  Settings(title: "Account", name: const Icon(Icons.account_circle_outlined,color: Colors.white,size: 25,)),
  Settings(title: "Help", name: const Icon(Icons.support,color: Colors.white,size: 25,)),
  Settings(title: "About", name: const Icon(Icons.help_outline,color: Colors.white,size: 25,)),
  Settings(title: "Theme", name: const Icon(Icons.color_lens_sharp,color: Colors.white,size: 25,)),
  Settings(title: "Meta", name: const Icon(Icons.facebook,color: Colors.white,size: 25,)),
];
class Settings_Page extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),backgroundColor: Colors.black,foregroundColor: Colors.white,),
      body: Container(
        color: Colors.black,
        child: Container(
          color: Colors.black,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 15,right: 15),
          // padding: const EdgeInsets.only(left: 15,right: 15),
          child: ListView(
            children: [
              const SizedBox(height: 10,),
              // Second widget inside the main column >>> Container to make Search inside rectangle shape (( icon back and text Search ))
              Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // first widget inside column who is responsible for make search border
                      Container(
                        width: double.infinity,
                        height: 30,
                        alignment: Alignment.center,
                        decoration:  const BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child:
                        Row(
                          children: const [
                            SizedBox(width: 20,),
                            Icon(Icons.search,color: Colors.white60,size: 22,),
                            SizedBox(width: 20,),
                            Text("Search",style: TextStyle(color: Colors.white60,fontSize: 18,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: _content.length,
                          shrinkWrap: true,
                          itemBuilder: (context,i){
                            return ListTile(
                              leading: _content[i].name,
                              minLeadingWidth: 30,
                              horizontalTitleGap: 10,
                              title: Text(_content[i].title,style: const TextStyle(color: Colors.white,fontSize: 19)),
                            );}
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: double.infinity,
                        height: 30,
                        alignment: Alignment.center,
                        child: Row(
                          children: const [
                            Text("Account Center",style: TextStyle(color: Colors.blueAccent,fontSize: 18),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Control Settings (( After Meta ))
                      Container(
                        width: double.infinity,
                        // height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Control Settings for connected experiences across",style: TextStyle(color: Colors.white70,fontSize: 14),),
                            SizedBox(height: 2,),
                            Text("Instagram, the Facebook app and Messenger,",style: TextStyle(color: Colors.white70,fontSize: 14),),
                            SizedBox(height: 2,),
                            Text("Including story and post sharing and logging in.",style: TextStyle(color: Colors.white70,fontSize: 14),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("login",textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontSize: 16),),
                      const SizedBox(height: 10),
                      Text("Add Account",style: TextStyle(color: Colors.blueAccent,fontSize: 16),),
                      const SizedBox(height: 10),
                      Text("Log out",style: TextStyle(color: Colors.blueAccent,fontSize: 16),),
                      SizedBox(height: 20,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
