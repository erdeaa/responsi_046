import 'package:flutter/material.dart';
import 'package:responsi/models/categories.dart';
import 'package:responsi/screens/details.dart';
import 'package:responsi/services/api_data_source.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var endpoint = widget.title == 'meal' ? 'articles' : widget.title;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${widget.title.toUpperCase()} LIST'),
      ),
      body: FutureBuilder(
        future: ApiDataSource.instance.loadList(endpoint),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (widget.title == 'meal') {
              Categories meal = Categories.fromJson(snapshot.data!);
              // return _buildItemList();
              // } else if (widget.title == 'blogs') {
              //   Meals blogs = Meals.fromJson(snapshot.data!);
              //   return _buildBlogs(blogs);
              // } else {
              //   ReportsModel reports = ReportsModel.fromJson(snapshot.data!);
              //   return _buildReports(reports);
            }
          }
          if (snapshot.hasError) {
            return const Center(
              child: Text('Something Went Wrong'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget _buildItemList(
      String img, String title, String summary, String mealUrl) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailPage(
              strCategory: widget.title,
              strMeal: title,
              strImageSource: img,
              strSource: mealUrl,
            ),
          ),
        );
      },
      child: Card(
        child: SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                img,
                width: 150,
                height: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Text(title),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
