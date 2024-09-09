import 'package:flutter/material.dart';
import 'package:modern_navbar/components/profile_img.dart';
import 'package:modern_navbar/components/profile_menu.dart';
import 'package:modern_navbar/constant/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 24,
          color: iconSecondaryColor,
        ),
        title: Center(
            child: Text(
          'Profile',
          style: textTitle,
        )),
        actions: const [
          Icon(
            Icons.light_mode,
            size: 24,
            color: iconSecondaryColor,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),

            // Image Profile
            const ProfileImage(),

            // Detail Profile
            const SizedBox(
              height: 20,
            ),
            Text(
              'Shim Jaeyun',
              style: textTitle,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'jakeu@gmail.com',
              style: textSubTitle,
            ),

            //Button Edit
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 35,
              child: Container(
                // color: Colors.blue,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                    child: Text(
                  'Edit Profile',
                  style: textBtn,
                )),
              ),
            ),

            //Menu profile
            const SizedBox(
              height: 30,
            ),
            const ProfileMenu(
              title: 'Setting',
              icons: Icons.settings,
            ),
            const SizedBox(
              height: 10,
            ),
            const ProfileMenu(
              title: 'Billing Detail',
              icons: Icons.wallet,
            ),
            const SizedBox(
              height: 10,
            ),
            const ProfileMenu(
              title: 'User management',
              icons: Icons.person_add,
            ),
            const SizedBox(
              height: 50,
            ),
            const ProfileMenu(
              title: 'Information',
              icons: Icons.info_outline,
            ),
            const SizedBox(
              height: 10,
            ),
            const ProfileMenu(
              title: 'Logout',
              icons: Icons.logout,
            ),
          ],
        ),
      ),
    );
  }
}
