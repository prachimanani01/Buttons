
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;
  bool isSelected2 = false;
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    TextScaler textScale = MediaQuery.textScalerOf(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button'),
              ),
              BackButton(
                onPressed: () {},
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Outlined Button'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    ChoiceChip(
                      label: Text('Choice Chip'),
                      selected: isSelected,
                      selectedColor: Colors.grey,
                      onSelected: (newstate) {
                        setState(() {
                          isSelected = newstate;
                        });
                      },
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    FilterChip(
                      label: Text('Filter Chip'),
                      selected: isSelected2,
                      onSelected: (bool value) {
                        setState(
                              () {
                            isSelected2 = !isSelected2;
                          },
                        );
                      },
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    ActionChip(
                      avatar:
                      Icon(favorite ? Icons.favorite : Icons.favorite_border),
                      label: const Text('Save to favorites'),
                      onPressed: () {
                        setState(() {
                          favorite = !favorite;
                        });
                      },
                    ),
                  ],
                ),
              ),
              CupertinoButton(
                child: Text('Cupertino Button'),
                onPressed: () {},
              ),
              TextButton(
                onPressed: () {},
                child: Text('Text Button'),
              ),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text('Item 1'),
                  ),
                  PopupMenuItem(
                    child: Text('Item 2'),
                  ),
                  PopupMenuItem(
                    child: Text('Item 3'),
                  ),
                ];
              }),
              CloseButton(
                onPressed: () {},
              ),
              RawMaterialButton(
                onPressed: () {},
                child: Text('Raw Material Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
