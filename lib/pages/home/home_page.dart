import 'package:flutter/material.dart';
import 'package:flutter_bim_app/pages/home/widgets/gender_box.dart';
import 'package:flutter_bim_app/pages/home/widgets/slider_box.dart';
import 'package:flutter_bim_app/pages/result/result_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  void onGenderChanged(bool male) {
    setState(() {
      isMale = male;
    });
  }

  double height = 170;
  void onHightChanged(double newhight) {
    setState(() {
      height = newhight;
    });
  }

  double weight = 70;

  void OnWeightChanged(double newWeight) {
    setState(() {
      weight = newWeight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            GenderBox(isMale, onGenderChanged),
            Spacer(),
            SliderBox(
              label: 'HIGHT',
              value: height,
              unit: 'cm',
              onChanged: onHightChanged,
            ),
            Spacer(),
            SliderBox(
              label: 'WEIGHT',
              value: weight,
              unit: 'kg',
              onChanged: OnWeightChanged,
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                  onPressed: () {
                    final meterHight = height / 100;
                    final bmi = weight / (meterHight * meterHight);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ResultPage(bmi);
                        },
                      ),
                    );
                  },
                  child: Text('CALCULATE')),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
