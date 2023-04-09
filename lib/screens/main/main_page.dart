import 'package:example_kds/screens/main/widgets/header_widget.dart';
import 'package:example_kds/screens/main/widgets/order_list_widget.dart';
import 'package:example_kds/screens/main/widgets/right_menu_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        HeaderWidget(),
        Expanded(
          child: Row(
            children: const [
              OrderListWidget(),
              RightMenuWidget(),
            ],
          ),
        ),
      ],
    )));
  }
}
