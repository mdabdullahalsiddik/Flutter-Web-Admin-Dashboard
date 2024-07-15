import 'package:admin_dashborad/app/core/util/responsive.dart';
import 'package:admin_dashborad/app/core/widgets/custom_card_widget.dart';
import 'package:admin_dashborad/app/data/data/health_details.dart';
import 'package:flutter/material.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();
    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
        crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
        mainAxisSpacing: 12,
      ),
      itemCount: healthDetails.healthData.length,
      itemBuilder: (context, index) => CustomCardWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              healthDetails.healthData[index].icon,
              width: 30,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                bottom: 4,
              ),
              child: Text(
                healthDetails.healthData[index].value,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            Text(
              healthDetails.healthData[index].title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
