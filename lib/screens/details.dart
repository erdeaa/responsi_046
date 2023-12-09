import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  // final String? idMeal;
  final String? strMeal;
  // final dynamic strDrinkAlternate;
  final String? strCategory;
  // final String? strArea;
  // final String? strInstructions;
  // final String? strMealThumb;
  // final String? strTags;
  // final String? strYoutube;
  // final String? strIngredient1;
  // final String? strIngredient2;
  // final String? strIngredient3;
  // final String? strIngredient4;
  // final String? strIngredient5;
  // final String? strIngredient6;
  // final String? strIngredient7;
  // final String? strIngredient8;
  // final String? strIngredient9;
  // final String? strIngredient10;
  // final String? strIngredient11;
  // final String? strIngredient12;
  // final String? strIngredient13;
  // final String? strIngredient14;
  // final String? strIngredient15;
  // final dynamic strIngredient16;
  // final dynamic strIngredient17;
  // final dynamic strIngredient18;
  // final dynamic strIngredient19;
  // final dynamic strIngredient20;
  final dynamic strSource;
  final dynamic strImageSource;
  // final dynamic strCreativeCommonsConfirmed;
  // final dynamic dateModified;

  const DetailPage({
    super.key,
    // required this.idMeal,
    required this.strMeal,
    // required this.strDrinkAlternate,
    required this.strCategory,
    // required this.strArea,
    // required this.strInstructions,
    // required this.strMealThumb,
    // required this.strTags,
    // required this.strYoutube,
    // required this.strIngredient1,
    // required this.strIngredient2,
    // required this.strIngredient3,
    // required this.strIngredient4,
    // required this.strIngredient5,
    // required this.strIngredient6,
    // required this.strIngredient7,
    // required this.strIngredient8,
    // required this.strIngredient9,
    // required this.strIngredient10,
    // required this.strIngredient11,
    // required this.strIngredient12,
    // required this.strIngredient13,
    // required this.strIngredient14,
    // required this.strIngredient15,
    // required this.strIngredient16,
    // required this.strIngredient17,
    // required this.strIngredient18,
    // required this.strIngredient19,
    // required this.strIngredient20,
    required this.strSource,
    required this.strImageSource,
    // required this.strCreativeCommonsConfirmed,
    // required this.dateModified,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${strMeal?.toUpperCase()} DETAIL'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        children: [
          Image.network(strImageSource),
          const SizedBox(height: 10),
          Text(
            strMeal!,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 10),
          Text(strCategory!),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await launchUrl(Uri.parse(strSource));
        },
        label: const Text('See More..'),
        icon: const Icon(Icons.travel_explore),
      ),
    );
  }
}
