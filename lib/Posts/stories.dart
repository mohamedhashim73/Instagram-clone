import 'package:flutter/material.dart';
class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 80,
                  height: 70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Image.asset("images/mo.png",width: 70,height: 70,),
                      ),
                      Positioned(
                        top: 51,
                        left: 50,
                        child: Container(
                          width: 18,
                          height: 18,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.add,size: 18,color: Colors.white,),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Image.asset("images/ayman.png",width: 70,height: 70,),
                const SizedBox(width: 10,),
                Image.asset("images/ta.png",width: 70,height: 70,),
                const SizedBox(width: 10,),
                Image.asset("images/mohamed.png",width: 70,height: 70,),
                const SizedBox(width: 10,),
                Image.asset("images/fer.png",width: 70,height: 70,),
                const SizedBox(width: 10,),
                Image.asset("images/sa1.png",width: 70,height: 70,),
                const SizedBox(width: 10,),
                Image.asset("images/2.png",width: 70,height: 70,),
                const SizedBox(width: 10,),
                Image.asset("images/5.png",width: 70,height: 70,),
                const SizedBox(width: 10,),
                Image.asset("images/1.png",width: 70,height: 70,),
                const SizedBox(width: 10,),
                Image.asset("images/9.png",width: 70,height: 70,),
                const SizedBox(width: 10,),
                Image.asset("images/10.png",width: 70,height: 70,),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              children: const [
                SizedBox(width: 8,),
                Text("Your Story",style: TextStyle(color: Colors.white),),
                SizedBox(width: 15,),
                Text("aymansobhi3",style: TextStyle(color: Colors.white,fontSize: 12),),
                SizedBox(width: 14,),
                Text("tigershroff",style: TextStyle(color: Colors.white,fontSize: 12),),
                SizedBox(width: 14,),
                Text("mohamedsherif",style: TextStyle(color: Colors.white,fontSize: 12),),
                SizedBox(width: 8,),
                Text("ferganisasi",style: TextStyle(color: Colors.white,fontSize: 12),),
                SizedBox(width: 20,),
                Text("salehgoma",style: TextStyle(color: Colors.white,fontSize: 12),),
                SizedBox(width: 18,),
                Text("bigshenawi",style: TextStyle(color: Colors.white,fontSize: 12),),
                SizedBox(width: 22,),
                Text("abogabal",style: TextStyle(color: Colors.white,fontSize: 12),),
                SizedBox(width: 35,),
                Text("mhmdshrif",style: TextStyle(color: Colors.white,fontSize: 12),),
                SizedBox(width: 20,),
                Text("informa",style: TextStyle(color: Colors.white,fontSize: 12),),
                SizedBox(width: 18,),
                Text("ahmedelsabahi",style: TextStyle(color: Colors.white,fontSize: 12),),
              ],
            ),
          ],
        )
    );
  }
}
