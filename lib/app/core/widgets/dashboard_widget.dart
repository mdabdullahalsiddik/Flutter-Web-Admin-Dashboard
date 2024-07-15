import 'package:admin_dashborad/app/core/util/responsive.dart';
import 'package:admin_dashborad/app/core/widgets/activity_details_card.dart';
import 'package:admin_dashborad/app/core/widgets/bar_graph_widget.dart';
import 'package:admin_dashborad/app/core/widgets/header_widget.dart';
import 'package:admin_dashborad/app/core/widgets/line_chart_card.dart';
import 'package:admin_dashborad/app/core/widgets/summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 18),
          const SizedBox(child: HeaderWidget()),
          const SizedBox(height: 18),
          const SizedBox(child: ActivityDetailsCard()),
          const SizedBox(height: 18),
          const SizedBox(child: LineChartCard()),
          const SizedBox(height: 18),
          const SizedBox(child: BarGraphCard()),
          const SizedBox(height: 18),
          if (Responsive.isTablet(context)) const SummaryWidget(),
        ],
      ),
    );
  }
}
