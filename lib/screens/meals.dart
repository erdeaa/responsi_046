import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsi/models/categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, String? title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SPACE FLIGHT NEWS'),
      ),
      body: ListView.builder(
        itemCount: Categories.length,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        itemBuilder: (context, index) {
          var item = Categories[index];
          return _buildMenuItem(item);
        },
      ),
    );
  }

  Widget _buildMenuItem(Categories item) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => HomePage(title: item.strCategory),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 200,
                  child: SvgPicture.asset(item.img),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                item.title.toUpperCase(),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 5),
              Text(item.idCategory),
            ],
          ),
        ),
      ),
    );
  }
}
