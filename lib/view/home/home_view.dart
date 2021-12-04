import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:redesign_starbucks/constants/enum/custom_icons.dart';
import 'package:redesign_starbucks/init/extension/context_extension.dart';
import 'package:redesign_starbucks/init/theme/theme_colors.dart';
import 'package:redesign_starbucks/view/home/models/offer_response_model.dart';
import 'package:redesign_starbucks/widgets/coffeeChart.dart';
import './home_view_model.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      appBar: customAppBar(context, 'Starbucks'),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: priceCard(context),
              ),
              Row(
                children: [
                  CoffeeChart(),
                  coffeeChartCard(context.width, '0', 'Yıldız Bakiye',
                      CustomIcons.star, ThemeColors.darkYellow),
                  coffeeChartCard(context.width, '0', 'İkram İçecek',
                      CustomIcons.coffee, ThemeColors.darkGreen),
                ],
              ),
              Spacer(
                flex: 1,
              )
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: .4,
            maxChildSize: 1,
            minChildSize: .3,
            builder: (context, controller) => Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(
                  context.width * 0.050,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kampyanyalar',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Container(
                          child: ListView.builder(
                        controller: controller,
                        itemCount: offerList.length,
                        itemBuilder: (context, index) => campaignCard(
                          offerList[index].image.toString(),
                          offerList[index].title.toString(),
                          offerList[index].text.toString(),
                        ),
                      )),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container campaignCard(String img, String title, String desc) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(img),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, top: 15),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(desc)
        ],
      ),
    );
  }

  SizedBox coffeeChartCard(double screenSizeWidth, String value, String label,
      IconData customIcon, Color iconColor) {
    return SizedBox(
      width: screenSizeWidth * .3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: screenSizeWidth * 0.02,
            children: [
              Icon(
                customIcon,
                color: iconColor,
              ),
              Text(
                value,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: screenSizeWidth * 0.08),
              )
            ],
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: screenSizeWidth * 0.04,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }

  Padding priceCard(BuildContext context) {
    return Padding(
      padding: context.paddingMedium,
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.primary,
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 1),
              color: context.colors.secondaryVariant.withOpacity(0.8),
              blurRadius: 10,
              spreadRadius: 1,
            )
          ],
          image: DecorationImage(
              image: AssetImage('assets/image/cardBg.png'),
              alignment: Alignment.bottomLeft),
          borderRadius: BorderRadius.all(
            Radius.circular(context.width * .05),
          ),
        ),
        child: Padding(
          padding: context.paddingMedium,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: context.width * .01),
                child: Text(
                  'Toplam Pram',
                  style: TextStyle(color: context.colors.onPrimary),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '55,35 TL',
                    style: TextStyle(
                        color: context.colors.onPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.end,
                    alignment: WrapAlignment.center,
                    children: [
                      Text(
                        'Yükleme Yap',
                        style: TextStyle(
                            color: context.colors.onPrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: context.width * .04),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: context.width * .04,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar customAppBar(BuildContext context, String title) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
            onPressed: () => {},
            icon: Icon(
              CustomIcons.alarm,
              color: context.colors.primary,
            )),
        IconButton(
            onPressed: () => {},
            icon: Icon(
              CustomIcons.menu,
              color: Colors.black,
            ))
      ],
      title: Text(title,
          style: TextStyle(color: context.colors.primary, fontSize: 20)),
    );
  }
}
