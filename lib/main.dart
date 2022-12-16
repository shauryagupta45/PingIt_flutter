import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:ping_it_chat/shared/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb)
  {
    //run the initialization for web 
     await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey:  Constants.apiKey,
          appId: Constants.appId,
          messagingSenderId: Constants.messaginSenderId,
          projectId: Constants.projectId));
  }
  else
    {
      //run the initialization for application
      await Firebase.initializeApp();
    }
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
