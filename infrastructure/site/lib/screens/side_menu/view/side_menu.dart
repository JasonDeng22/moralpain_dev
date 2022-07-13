import 'package:admin/screens/side_menu/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: SvgPicture.asset(
              "assets/icons/font-awesome/icon.svg",
            ),
          ),
          DrawerListTile(
            title: "View Submissions",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              BlocProvider.of<SideMenuCubit>(context)
                  .setView(DashboardView.SUBMISSIONS);
            },
          ),
          DrawerListTile(
            title: "Analyze",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {
              BlocProvider.of<SideMenuCubit>(context)
                  .setView(DashboardView.ANALYTICS);
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
