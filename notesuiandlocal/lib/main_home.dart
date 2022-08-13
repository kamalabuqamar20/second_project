import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'page/notes_page.dart';

class Home extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: SafeArea(
        child:Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
            
             // Image.asset('assets/images/Iconhome.png',width: 30,height: 30,),
             SizedBox(width: 10,),
               Text('Notes',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),

             
            ],
          ),
         const Text('&',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
         const Text('Todo',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
          const SizedBox(height: 18,),
          const Text('Your diary , your companion',style: TextStyle(color: Colors.white,fontSize: 15)),
            const SizedBox(height: 50,),
           Container(
           /* decoration:const BoxDecoration(
              boxShadow:[
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(10, 10),
                
                  ),
              ] 
            ),*/
            child: Lottie.network('https://assets2.lottiefiles.com/packages/lf20_xmkgn4jj.json',width: double.infinity,height: 200),/*Image.asset('assets/images/person2.png',height: 200,width:double.infinity,fit: BoxFit.cover,)),*/
           ), const SizedBox(height: 100,),
           ElevatedButton(onPressed: (){
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NotesPage()));
           },
           child: Text('Get Started',
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              
              primary: Colors.black,
            
              padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 45,),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              )
              
            ),
            
            ),
           
          ],
        ),
      
      ),
    );
  }
}