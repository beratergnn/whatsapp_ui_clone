import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_ui_clone/components/app_bar_text.dart';
import 'package:whatsapp_ui_clone/components/icon_button.dart';
import 'package:whatsapp_ui_clone/components/notification_info_container.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';
import 'package:whatsapp_ui_clone/pages/other-pages/profile_page.dart';
import 'package:whatsapp_ui_clone/pages/tab-pages/calls_page.dart';
import 'package:whatsapp_ui_clone/pages/tab-pages/chats_page.dart';
import 'package:whatsapp_ui_clone/pages/tab-pages/groups_page.dart';
import 'package:whatsapp_ui_clone/pages/tab-pages/updates_page.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({super.key});

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTabIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {
        _selectedTabIndex = _tabController.index;
      });
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: wpAppBarBackGroundColor,
          title: AppBarText(text: 'WhatsApp'),
          actions: [
            CustomIconButton(iconPath: 'ic_camera.svg'),
            (_selectedTabIndex == 0 || _selectedTabIndex == 2)
                ? Container()
                : CustomIconButton(iconPath: 'ic_search.svg'),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => ProfilePage())));
              },
              icon: Container(
                height: 35,
                width: 35,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/profile_photo.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            dividerColor: wpAppBarBackGroundColor,
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 4.0,
            labelColor: wpTealGreen,
            unselectedLabelColor: wpTextColor2,
            indicatorColor: wpTealGreen,
            tabs: [
              Tab(
                icon: SvgPicture.asset(
                  'assets/icons/ic_groups.svg',
                  height: 30,
                  color: _selectedTabIndex == 0 ? wpTealGreen : wpTextColor2,
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    const Text('Sohbetler'),
                    const SizedBox(width: 5),
                    NotInfoContainer(
                      selectedTab: _selectedTabIndex,
                      notCount: '3',
                      defTab: 1,
                    ),
                  ],
                ),
              ),
              const Tab(
                child: Row(
                  children: [
                    Text('Güncellemeler'),
                    // SizedBox(width: 5),
                    // NotInfoContainer(
                    //   selectedTab: _selectedTabIndex,
                    //   notCount: '3',
                    //   defTab: 2,
                    // ),
                  ],
                ),
              ),
              const Tab(
                child: Row(
                  children: [
                    Text('Aramalar'),
                    // SizedBox(width: 5),
                    // NotInfoContainer(
                    //   selectedTab: _selectedTabIndex,
                    //   notCount: '3',
                    //   defTab: 3,
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            GroupsPage(),
            ChatsPage(),
            UpdatesPage(),
            CallsPage(),
          ],
        ),
      ),
    );
  }
}
