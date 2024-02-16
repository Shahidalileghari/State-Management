import 'package:flutter/material.dart';

class Drawer_settings extends StatelessWidget {
  const Drawer_settings({super.key});

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,

        child: ListView
          (
          children:    [
            const DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
              accountName: Text("Shahid"),
              accountEmail: Text("shahid@gmial.com"),
             // currentAccountPicture: Container(
             //   width: 50,
             //   height: 50,
             //   decoration: BoxDecoration(
             //     color: Colors.green,
             //     shape: BoxShape.circle
             //   ),
             //
             // ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/pic.png"),
                  )
            )
            ),
            drawerItem(title: "Shahid", trailing: "23.9", icondata: Icons.shop_2_outlined,subtitle: "Shopping center"),
            drawerItem(title: "Shahid", trailing: "23.9", icondata: Icons.shop_2_outlined,subtitle: "Shopping center"),
            drawerItem(title: "Shahid", trailing: "23.9", icondata: Icons.shop_2_outlined,subtitle: "Shopping center"),
            drawerItem(title: "Shahid", trailing: "23.9", icondata: Icons.shop_2_outlined,subtitle: "Shopping center"),
            drawerItem(title: "Shahid", trailing: "23.9", icondata: Icons.shop_2_outlined,subtitle: "Shopping center"),
            drawerItem(title: "Shahid", trailing: "23.9", icondata: Icons.shop_2_outlined,subtitle: "Shopping center"),
            drawerItem(title: "Shahid", trailing: "23.9", icondata: Icons.shop_2_outlined,subtitle: "Shopping center"),


          ],

        ),
      ),
      body: Column
        (
        children: [
         headerWidget(),
        ],
      ),
    );

  }
  Widget headerWidget()
  {
    return Container(
      height: 250,
       width: double.infinity,
       color: Colors.blueGrey,
       child: const Column(
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           SizedBox(height: 20,),

           Padding(
             padding: EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Icon((Icons.menu)),
                 Text("Day11"),
                 Icon(Icons.notification_add)
               ],
             ),
           )

         ],
       ),
    );
  }

  Widget drawerItem({required String title, required IconData icondata,required String subtitle,required String trailing})
  {
    return ListTile(
      title: Text(title),
      leading: Icon(icondata),
      trailing: Text(trailing),
      subtitle: Text(subtitle),

    );
  }
}
