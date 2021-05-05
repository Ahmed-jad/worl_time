// ignore: import_of_legacy_library_into_null_safe
import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: ContactUs(
          logo: AssetImage('assets/ahmed.jpg'),
          email: 'muumin852@gmail.com',
          companyName: 'Ahmed AbdiAziz',
          phoneNumber: '+256700191270',
          website: 'https://about.me/ahmedjaad',
          githubUserName: 'Ahmed Jaad',
          linkedinURL: 'https://www.linkedin.com/in/ahmed-jaad-865085162/',
          tagLine: 'Flutter Developer',
          twitterHandle: 'Ahmed Jaad',
        ),
      ),
    );
  }
}
