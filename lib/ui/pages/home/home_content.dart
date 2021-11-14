import 'package:flutter/material.dart';
import 'package:idc/core/model/category_model.dart';
import 'package:idc/core/services/json_parse.dart';
import 'package:idc/core/extension/int_extension.dart';
class HYHomeContent extends StatefulWidget {


  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  List<HYCategoryModel> _categroies = [];
  @override
  void initState(){
    super.initState();
    JsonParse.getCategoryDate().then((res){
      setState(() {
        _categroies = res;
      });

    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(20.px),
        itemCount: _categroies.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.px,
            mainAxisSpacing: 20.px,
            childAspectRatio: 1.5
        ),
        itemBuilder: (ctx, index) {
        final bgColors = _categroies[index].cColor;
          return Container(
              decoration: BoxDecoration(
                color: bgColors,
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: [
                    bgColors!.withOpacity(.5),
                    bgColors
                  ]
                )
              ),
              alignment: Alignment.center,
              child:Text(_categroies[index].title!,style: Theme.of(context).textTheme.headline4!.copyWith(
                fontWeight:FontWeight.bold
              ) ,)
          );
        },
    );
  }
}
