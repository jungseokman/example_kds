import 'package:example_kds/common/color.dart';
import 'package:flutter/material.dart';

class RightMenuWidget extends StatefulWidget {
  const RightMenuWidget({Key? key}) : super(key: key);

  @override
  State<RightMenuWidget> createState() => _RightMenuWidgetState();
}

class _RightMenuWidgetState extends State<RightMenuWidget> {
  int rightMenuButton = 1;
  bool circleToggle = true;

  @override
  Widget build(BuildContext context) {
    double heihgt = MediaQuery.of(context).size.height - 174;

    return SizedBox(
      width: 70,
      child: Column(
        children: [
          _menuWidget(heihgt, context, '전체', '12', 1),
          _menuWidget(heihgt, context, '매장', '4', 2),
          _menuWidget(heihgt, context, '포장', '2', 3),
          _menuWidget(heihgt, context, '배달', '6', 4),
          _circleBtn()
        ],
      ),
    );
  }

  Container _circleBtn() {
    return Container(
      width: double.infinity,
      height: 70,
      color: AppColors.grayColor3,
      child: Center(
        child: SizedBox(
          width: 30,
          height: 30,
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                circleToggle = !circleToggle;
              });
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              backgroundColor:
                  MaterialStateProperty.all(circleToggle ? null : Colors.white),
              shape: MaterialStateProperty.all(const CircleBorder()),
              side: MaterialStateProperty.all(
                  const BorderSide(color: Colors.white)),
            ),
            child: null,
          ),
        ),
      ),
    );
  }

  SizedBox _menuWidget(
      double heihgt, BuildContext context, text, count, buttonNumber) {
    return SizedBox(
      width: double.infinity,
      height: heihgt / 4,
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        onPressed: () {
          setState(() {
            rightMenuButton = buttonNumber;
          });
        },
        child: AnimatedContainer(
          width: double.infinity,
          color: rightMenuButton == buttonNumber
              ? AppColors.grayColor2
              : AppColors.grayColor3,
          duration: const Duration(milliseconds: 300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                count,
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
        ),
      ),
    );
  }
}
