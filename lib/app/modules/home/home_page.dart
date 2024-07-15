import 'package:admin_dashborad/app/core/util/responsive.dart';
import 'package:admin_dashborad/app/core/widgets/dashboard_widget.dart';
import 'package:admin_dashborad/app/core/widgets/side_menu_widget.dart';
import 'package:admin_dashborad/app/core/widgets/summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
        backgroundColor: Colors.black,
        drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideMenuWidget(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
        body: SafeArea(
            child: Row(
      children: [
        if(isDesktop)
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.black,
            child: const SideMenuWidget(),
          ),
        ),
        const Expanded(
          flex: 7,
          child: DashboardWidget(),
        ),
        if(isDesktop)
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.black,
            child: const SummaryWidget(),
          ),
        ),
      ],
    )));
  }
}
