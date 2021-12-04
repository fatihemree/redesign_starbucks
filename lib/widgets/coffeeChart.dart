import 'package:flutter/material.dart';
import 'package:redesign_starbucks/constants/enum/custom_icons.dart';
import 'package:redesign_starbucks/init/extension/context_extension.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CoffeeChart extends StatelessWidget {
  const CoffeeChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return coffeeChart(context.width);
  }

  SizedBox coffeeChart(double screenSizeWidth) {
    return SizedBox(
      height: screenSizeWidth * 0.4,
      width: screenSizeWidth * 0.4,
      child: SfRadialGauge(
        axes: [
          RadialAxis(
            minimum: 0,
            maximum: 15,
            showLabels: false,
            showTicks: false,
            radiusFactor: 0.8,
            axisLineStyle: const AxisLineStyle(
              thickness: .2,
              cornerStyle: CornerStyle.bothCurve,
              color: Color(0xFF3e6d6f),
              thicknessUnit: GaugeSizeUnit.factor,
            ),
            pointers: const [
              RangePointer(
                color: Color(0xFF1D4D4F),
                value: 6,
                cornerStyle: CornerStyle.bothCurve,
                width: 0.2,
                sizeUnit: GaugeSizeUnit.factor,
                enableAnimation: true,
                animationDuration: 20,
                animationType: AnimationType.linear,
              )
            ],
            annotations: [
              GaugeAnnotation(
                positionFactor: .1,
                widget: Icon(
                  CustomIcons.coffee,
                  size: screenSizeWidth * 0.15,
                  color: const Color(0xFF1D4D4F),
                ),
              ),
              GaugeAnnotation(
                positionFactor: 0.1,
                widget: Padding(
                  padding: EdgeInsets.only(top: screenSizeWidth * 0.28),
                  child: Text(
                    '6/15',
                    style: TextStyle(
                        color: const Color(0xFF1D4D4F),
                        fontWeight: FontWeight.bold,
                        fontSize: screenSizeWidth * 0.05),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
