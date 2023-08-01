import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    var list = <Widget>[];
    for (var i = 0; i <= 100; i++) {
      list.add(ListItemWidget());
      // list.add(listItem());
    }
    return ListView.builder(itemCount: list.length,itemBuilder: (context,index)=> list[index]);
  }
}

Widget listItem() {
  final ValueNotifier<int> count = ValueNotifier(0);
  return ValueListenableBuilder(
      valueListenable: count,
      builder: (context, snap,_) => Container(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              Text(count.value.toString()),
              MaterialButton(
                onPressed: () {
                  count.value = count.value+1;
                },
                child: const Text("+",style: TextStyle(color: Colors.white),),
              )
            ],
          ))
  );
}

class ListItemWidget extends StatelessWidget {
  ListItemWidget({super.key});
  final ValueNotifier<int> count = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: count,
        builder: (context, snap,_) => Container(
            padding: const EdgeInsets.all(4),
            child: Row(
              children: [
                Text(count.value.toString()),
                MaterialButton(
                  onPressed: () {
                    count.value = count.value+1;
                  },
                  child: const Text("+",style: TextStyle(color: Colors.white, fontSize: 30),),
                )
              ],
            ))
    );
  }
}
