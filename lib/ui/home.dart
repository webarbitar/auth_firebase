import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../core/services/auth.dart';


class homepage extends StatelessWidget {
   homepage({Key? key}) : super(key: key);

   final User? user = Auth().currentUser;

   Future<void> signout()async{
     await Auth().signout();
   }

   Widget _title(){
     return const Text('firebase authentication');
   }
   Widget _userUid(){
     return Text(user?.email ?? 'user email');
   }
   Widget _signOutButton(){
     return ElevatedButton(onPressed: signout, child: const Text('signout'),);
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _userUid(),
            _signOutButton()
          ],
        ),
      ),
    );
  }
}
