import 'package:flutter/material.dart';
import 'package:memento/constant.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: LITTLE_DARK_GREY,
      height: 64,
      child: CategoryList(),
    );
  }
}

class CategoryList extends StatefulWidget {
  CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  ScrollController scrollController = ScrollController();

  Widget circleButton(IconData icon, EdgeInsets padding, bool offsetPlus) {
    return ElevatedButton.icon(
      onPressed: () async {
        int offset = 300;
        if (!offsetPlus){
          offset*=-1;
        }
        await scrollController.animateTo(scrollController.offset + offset,
            duration: const Duration(milliseconds: 200), curve: Curves.linear);
        setState(() {});
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        primary: Colors.white,
        onPrimary: Colors.grey[800],
      ),
      label: const Text(''),
      icon: Padding(
        padding: padding,
        child: Icon(icon, size: 20),
      ), // 버튼 아이콘
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 101),
      child: Stack(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ItemList(
              scrollController: scrollController,
              items: const [
                {'title': '#로그인할 때 선택했던 카테고리들 표시'},
                {'title': '#가로 넘치면 양옆으로 스크롤, 버튼 표시'},
                {'title': '#로그인 안했거나 가입시 카테고리 선택 안했으면 아예 이 탭 자체가 없어짐'},
                {'title': '#카테고리 예시'},
                {'title': '#로그인할 때 선택했던 카테고리들 표시'},
                {'title': '#가로 넘치면 양옆으로 스크롤, 버튼 표시'},
                {'title': '#로그인 안했거나 가입시 카테고리 선택 안했으면 아예 이 탭 자체가 없어짐'},
                {'title': '#카테고리 예시'},
                {'title': '#로그인할 때 선택했던 카테고리들 표시'},
                {'title': '#가로 넘치면 양옆으로 스크롤, 버튼 표시'},
                {'title': '#로그인 안했거나 가입시 카테고리 선택 안했으면 아예 이 탭 자체가 없어짐'},
                {'title': '#카테고리 예시'},
                {'title': '#로그인할 때 선택했던 카테고리들 표시'},
                {'title': '#가로 넘치면 양옆으로 스크롤, 버튼 표시'},
                {'title': '#로그인 안했거나 가입시 카테고리 선택 안했으면 아예 이 탭 자체가 없어짐'},
                {'title': '#카테고리 예시'},
              ],
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              circleButton(
                  Icons.arrow_back_ios_new, const EdgeInsets.only(left: 5), false),
              circleButton(
                  Icons.arrow_forward_ios, const EdgeInsets.only(left: 10), true),
            ],
          ),
        ),
      ]),
    );
  }
}

class ItemList extends StatefulWidget {
  ItemList({super.key, required this.scrollController, required this.items});
  ScrollController scrollController;
  List<Map> items;

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  Widget itemButton(Map item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(225, 225, 225, 1.0),
          onPrimary: Colors.black,
        ),
        child: Text(item['title'], style: const TextStyle(fontSize: 14)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: ListView(
        controller: widget.scrollController,
        scrollDirection: Axis.horizontal,
        children: widget.items.map((e) => itemButton(e)).toList(),
      ),
    );
  }
}
