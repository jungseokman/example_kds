import 'package:example_kds/common/color.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  var pageNumber = 1;
  bool orderAndFinishToggle = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.grayColor3,
      height: 60,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _settingBtn(context),
            _orderStateBtn(context),
            _pageSelectBtn(context)
          ],
        ),
      ),
    );
  }

  Container _pageSelectBtn(BuildContext context) {
    return Container(
      width: 220,
      height: 50,
      color: AppColors.grayColor2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _pageBtn(context, 1),
          _pageBtn(context, 2),
          _pageBtn(context, 3),
          _pageBtn(context, 4),
        ],
      ),
    );
  }

  SizedBox _pageBtn(BuildContext context, page) {
    return SizedBox(
      width: 50,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(AppColors.grayColor2),
        ),
        child: AnimatedContainer(
          width: 50,
          height: 40,
          duration: const Duration(milliseconds: 300),
          color:
              pageNumber == page ? AppColors.grayColor1 : AppColors.grayColor2,
          child: Center(
            child: Text(
              page.toString(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
        onPressed: () {
          setState(() {
            pageNumber = page;
          });
        },
      ),
    );
  }

  Expanded _orderStateBtn(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 200,
              height: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            orderAndFinishToggle = true;
                          },
                        );
                      },
                      child: Text(
                        '접수 8',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.decelerate,
                    bottom: 0,
                    left: orderAndFinishToggle ? 0 : 200,
                    right: orderAndFinishToggle ? 0 : 200,
                    child: Container(
                      width: 200,
                      color: orderAndFinishToggle
                          ? Colors.white
                          : AppColors.grayColor3,
                      height: 5,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: double.infinity,
            child: Stack(
              children: [
                Center(
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () {
                        setState(() {
                          orderAndFinishToggle = false;
                        });
                      },
                      child: Text(
                        '완료 12',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.decelerate,
                  bottom: 0,
                  left: !orderAndFinishToggle ? 0 : 200,
                  right: !orderAndFinishToggle ? 0 : 200,
                  child: Container(
                    width: 200,
                    color: !orderAndFinishToggle
                        ? Colors.white
                        : AppColors.grayColor3,
                    height: 5,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _settingBtn(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        onPressed: () {},
        child: Text(
          '환경설정',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
