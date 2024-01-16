import 'package:flutter/material.dart';
import 'package:new_project/colors.dart';


class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: purpleColor
              ),
      child: Material(
        color: Colors.transparent,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(image: DecorationImage(image:AssetImage('assets/picture2.webp'),fit: BoxFit.cover )),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                accountName: Text(
                  'Adopter',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail:Text('adopter12@gmail.com')),
            MenuList(
              title: 'Dashboard',
              iconName: Icons.home,
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const DashBoardScreen()));
              },
            ),
            MenuList(
              title: 'View Pets',
              iconName: Icons.person,
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ProfileScreen()));
              },
            ),
            MenuList(
              title: 'Adoption Request',
              iconName: Icons.request_page,
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const SupportScreen()));
              },
            ),
            MenuList(
              title: 'Categories',
              iconName: Icons.category,
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ReferralScreen()));
              },
            ),
            MenuList(
              title: 'Events',
              iconName: Icons.event_busy,
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const StackingScreen()));
              },
            ),
            MenuList(
              title: 'Exibition',
              iconName: Icons.add_box,
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const AllGamingScreen()));
              },
            ),
            MenuList(
              title: 'Log out',
              iconName: Icons.logout,
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const AllTradingScreen()));
              },
            ),
            // MenuList(
            //   title: 'Deposit Wallet',
            //   iconName: Icons.group,
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const DepositWalletScreen()));
            //   },
            // ),
           
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: const Text(
        "CANCEL",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor:Colors.deepOrange),
      child: const Text(
        "OK",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const LoginScreen()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text(
        "Logout",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      content: const Text(
        "Are you sure you want to exit the app ?",
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class MenuList extends StatelessWidget {
  final String title;
  final IconData iconName;
  final Function() onTap;
  const MenuList(
      {super.key,
      required this.title,
      required this.iconName,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(iconName, color: Colors.white),
      ),
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),
      ),
      onTap: () {
        onTap();
      },
    );
  }
}
