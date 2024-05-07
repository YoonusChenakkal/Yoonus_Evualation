import 'package:flutter/material.dart';
import 'package:https_evaluation/UserModel.dart';

class userDetails extends StatelessWidget {
  userDetails({super.key, required this.users});
  User users;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(users.name,
            style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold)),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 37,),
            Text(
              'User Name : ' + users.username,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Email : ' + users.email,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'phone : ' + users.phone,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Website : ' + users.website,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Address : ' + users.address.city + ' City',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              users.address.suite,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              users.address.street + ' Street',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Zipcode : ' + users.address.zipcode,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Lattitude : ' + users.address.geo.lat,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Longitude : ' + users.address.geo.lng,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Company Name : ' + users.company.name,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
               users.company.bs,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
             users.company.catchPhrase,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
        
          ],
        ),
      ),
    );
  }
}
