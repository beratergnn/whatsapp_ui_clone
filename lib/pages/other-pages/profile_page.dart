import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_ui_clone/components/app_bar_text.dart';
import 'package:whatsapp_ui_clone/components/icon_button.dart';
import 'package:whatsapp_ui_clone/components/profile_button.dart';
import 'package:whatsapp_ui_clone/components/profile_list_tile.dart';

import 'package:whatsapp_ui_clone/constant/colors.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wpScaffoldBackGroundColor,
      appBar: AppBar(
        backgroundColor: wpAppBarBackGroundColor,
        leading: CustomIconButton(
          iconPath: 'ic_arrow_left_alt.svg',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: AppBarText(text: 'Siz'),
        actions: [
          CustomIconButton(iconPath: 'ic_search.svg'),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.amber,
          width: double.maxFinite,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.greenAccent[400],
                    backgroundImage:
                        AssetImage('assets/images/profile_photo.jpg'),
                    radius: 55,
                    //Text
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      backgroundColor: wpTealGreen,
                      child: Icon(Icons.qr_code),
                      radius: 18,
                      //Text
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                'beratergnn',
                style: TextStyle(
                  color: wpTextColor,
                  fontSize: 28,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                'beratergnn',
                style: TextStyle(
                  color: wpTextColor2,
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomProfileButton(
                    path: 'ic_account_circle.svg',
                    text: 'Profil',
                    onTap: () {},
                  ),
                  CustomProfileButton(
                    path: 'ic_lock.svg',
                    text: 'Gizlilik',
                    onTap: () {},
                  ),
                  CustomProfileButton(
                    path: 'ic_contacts.svg',
                    text: 'Kişiler',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              CustomListTile(
                onTap: () {},
                path: 'ic_star.svg',
                title: 'Yıldızlı mesajlar',
              ),
              const SizedBox(height: 20),
              CustomListTile(
                onTap: () {},
                path: 'ic_connected_device.svg',
                title: 'Bağlı cihazlar',
              ),
              const SizedBox(height: 10),
              Divider(
                color: wpTextColor2,
                thickness: 0.5,
              ),
              const SizedBox(height: 10),
              CustomListTile(
                onTap: () {},
                path: 'ic_key.svg',
                title: 'Hesap',
                subtitle: 'Güvenlik bildirimleri, numara değiştirme',
              ),
              const SizedBox(height: 20),
              CustomListTile(
                onTap: () {},
                path: 'ic_avatar.svg',
                title: 'Avatar',
                subtitle: 'Oluşturma, düzenleme, profil fotoğrafı',
              ),
              const SizedBox(height: 20),
              CustomListTile(
                onTap: () {},
                path: 'ic_chats.svg',
                title: 'Sohbetler',
                subtitle: 'Tema, duvar kağıtları, sohbet geçmişi',
              ),
              const SizedBox(height: 20),
              CustomListTile(
                onTap: () {},
                path: 'ic_notification.svg',
                title: 'Bildirimler',
                subtitle: 'Mesaj, grop ve arama sesleri',
              ),
              const SizedBox(height: 20),
              CustomListTile(
                onTap: () {},
                path: 'ic_language.svg',
                title: 'Uygulama dili',
                subtitle: 'Türkçe (cihaz dili)',
              ),
              const SizedBox(height: 20),
              CustomListTile(
                onTap: () {},
                path: 'ic_help.svg',
                title: 'Yardım',
                subtitle: 'Türkçe (cihaz dili)',
              ),
              const SizedBox(height: 20),
              CustomListTile(
                onTap: () {},
                path: 'ic_invite_group.svg',
                title: 'Arkadaş davet edin',
              ),
              const SizedBox(height: 30),
              Text(
                'from',
                style: TextStyle(color: wpTextColor2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/ic_meta_icon.svg',
                      height: 10, color: wpTextColor),
                  const SizedBox(width: 5),
                  Text(
                    'Meta',
                    style: TextStyle(color: wpTextColor),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
