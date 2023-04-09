import 'package:example_kds/common/color.dart';
import 'package:example_kds/data/dummy_data.dart';
import 'package:flutter/material.dart';

class OrderListWidget extends StatefulWidget {
  const OrderListWidget({Key? key}) : super(key: key);

  @override
  State<OrderListWidget> createState() => _OrderListWidgetState();
}

class _OrderListWidgetState extends State<OrderListWidget> {
  var orderData = [];

  @override
  void initState() {
    super.initState();
    orderData = dummyData;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 170;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: orderData.length < 5 ? lowDataList(width) : manyDataList(),
      ),
    );
  }

  GridView manyDataList() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: orderData.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                  ),
                  width: 300,
                  child: Column(
                    children: [
                      _orderType(
                        context,
                        (orderData[index]['time']).toString(),
                        (orderData[index]['orderType']).toString(),
                      ),
                      _tableType((orderData[index]['table_number']).toString()),
                      _contour(),
                      _tableList(index),
                      _message(
                          context, (orderData[index]['comment']).toString()),
                      _finishBtn(context),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  ListView lowDataList(double width) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: orderData.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 10,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                ),
                width: width / 4,
                child: Column(
                  children: [
                    _orderType(
                      context,
                      (orderData[index]['time']).toString(),
                      (orderData[index]['orderType']).toString(),
                    ),
                    _tableType((orderData[index]['table_number']).toString()),
                    _contour(),
                    _tableList(index),
                    _message(context, (orderData[index]['comment']).toString()),
                    _finishBtn(context),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Expanded _tableList(int index) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: orderData[index]['food'].length,
        itemBuilder: (context, subIndex) {
          return _orderMenuList(index, subIndex, context);
        },
      ),
    );
  }

  Container _orderMenuList(int index, int subIndex, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        children: [
          _mainMenuList(index, subIndex, context),
          orderData[index]['food'][subIndex]['additional_ingredients'].length >
                  0
              ? _subMenuList(index, subIndex)
              : Container()
        ],
      ),
    );
  }

  Row _mainMenuList(int index, int subIndex, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${orderData[index]['food'][subIndex]['name']}',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          '${orderData[index]['food'][subIndex]['amount']}',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.black,
                fontSize: 18,
              ),
        ),
      ],
    );
  }

  Padding _subMenuList(int index, int subIndex) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount:
            orderData[index]['food'][subIndex]['additional_ingredients'].length,
        itemBuilder: (context, ingredientIndex) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  '${orderData[index]['food'][subIndex]['additional_ingredients'][ingredientIndex]['name']}',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(fontSize: 15),
                ),
              ),
              Text(
                '${orderData[index]['food'][subIndex]['additional_ingredients'][ingredientIndex]['amount']}',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              )
            ],
          );
        },
      ),
    );
  }

  Container _finishBtn(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.grayColor2,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(7),
          bottomRight: Radius.circular(7),
        ),
      ),
      width: double.infinity,
      height: 45,
      child: TextButton(
        onPressed: null,
        child: Text(
          '완료',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }

  Padding _message(BuildContext context, comment) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: AppColors.lightGrayColor2,
        width: 245,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            comment,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ),
    );
  }

  Padding _contour() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        height: 2,
        color: AppColors.lightGrayColor2,
      ),
    );
  }

  Padding _tableType(tableName) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text('테이블 $tableName'), const Text('5분 초과')],
      ),
    );
  }

  Padding _orderType(context, time, type) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            type,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            time,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
