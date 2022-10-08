import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}): super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
 
      return MaterialApp(
          home: Scaffold(
            body: 
               Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              const Center(
                                child: Icon(Icons.face,
                                    size: 100,
                                ), 
                                ),
                              
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                child: Text('PEENOISE', 
                  
                                    style: TextStyle(
                                    fontSize: 40,
                                    color: Color.fromARGB(255, 1, 60, 31),
                                    fontWeight: FontWeight.bold
                                ),
                            ),
                              ),
                              
                            const Text("Sign in to get continue", 
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 1, 60, 31),
                                  
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all( 40.0),
                              child: Form(child: Column(
                                      children: [
                                        TextFormField(
                                            keyboardType: TextInputType.emailAddress,
                                            decoration:  InputDecoration(labelText: 'Username', 
                                                                        hintText: 'Enter username',
                                                                        border: myinputborder(),
                                                                        enabledBorder: myinputborder(),
                                                                       
                                                                         filled: true,
                                                                        fillColor: Colors.white,
                                                                      
                                             ),
                                             onChanged: (String value) { },  
                                        ),
                                       
                                        const SizedBox(height: 20,),

                                       TextFormField( 
                                              
                                            keyboardType: TextInputType.visiblePassword,
                                            decoration:  InputDecoration(labelText: 'Password', 
                                                                        hintText: 'Enter password',
                                                                        suffixIcon: const Icon(Icons.visibility_off),
                                                                        border: myinputborder(),
                                                                        enabledBorder: myinputborder(),
                                                                        
                                                                        filled: true,
                                                                        fillColor: Colors.white,
                                             ),
                                             onChanged: (String value) {
                                               
                                             },  
                                        ),

                                       
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                                          child: MaterialButton(
                                             shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                                              ),
                                            elevation: 5.0,
                                            minWidth: double.infinity,
                                            height: 60,
                                            color: const Color.fromARGB(255, 1, 60, 31),
                                            child: const Text('Sign in',
                                                style: TextStyle(fontSize: 16.0, color: Colors.white)),
                                              onPressed: (){},
                                          ),
                                        ),
                                        
                                  const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('- Or continue with -', 
                                    style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 7, 38, 78),

  
                              ),
                            ),
                                  ),

                           Padding(
                             padding: const EdgeInsets.symmetric( vertical: 20.0),
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                  child: MaterialButton(
                                     shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                                              ),
                                                  onPressed: (){},
                                    color: Colors.white,
                                    height: 70,
                                    minWidth: 65,
                                    child: const Icon(Icons.facebook,
                                    size: 50,
                                    color: Colors.blueAccent,
                                    ),
                                   ),
                                ),
                                
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                    child: MaterialButton(
                                       shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                                              ),
                                    onPressed: (){},
                                    color: Colors.white,
                                    height: 70,
                                    minWidth: 65,
                                      child: const Icon(
                                    Icons.email,
                                    size: 50,
                                    color: Color.fromARGB(255, 3, 112, 6),
                                    
                                ),
                                ),
                                  ),      
                        ]),
                           ),
                           const Padding(
                             padding: EdgeInsets.symmetric(vertical: 20.0),
                             child: Text(' Forgot password?', 
                                      style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blueAccent,
                                      )
                                      ),
                           ), ],
                              )
                              ),)
                            ],),
                         
                    backgroundColor: const Color.fromARGB(255,249, 249, 249),
        ));
  }}

  OutlineInputBorder myinputborder(){ //return type is OutlineInputBorder
    return const OutlineInputBorder( //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );
  }

  
