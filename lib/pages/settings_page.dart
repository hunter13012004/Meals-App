import 'package:flutter/material.dart';
import 'package:mealsapp/pages/Getting_started.dart';
import 'package:mealsapp/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        children: [
          Column(
            children: [
              SwitchListTile(
                activeColor: Colors.green,
                  title: Text('D A R K   M O D E'),
                  value: isDarkMode,
                  onChanged: (bool value) {
                    setState(() {
                      isDarkMode = value;
                      Provider.of<themeprovider>(context, listen: false)
                          .toggletheme();
                    });
                  }),
            ],
          ),
          // ListTile(
          //   onTap: (){Provider.of<themeprovider>(context, listen: false).toggletheme();},
          //   leading: Icon(Icons.switch_access_shortcut),
          //   title: Text('D A R K M O D E')
          // ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StartPage()));
            },
            leading: Icon(Icons.logout),
            title: Text('L O G O U T'),
          )
        ],
      ),
    );
  }
}
