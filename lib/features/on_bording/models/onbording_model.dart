import '../../../helper/assets.dart';

class BordingModel {
  final String image;
  final String title;
  final String body;

  BordingModel({required this.image, required this.title, required this.body});
}

List<BordingModel> onbordingItems = [
  BordingModel(
    image: AssetsData.onBording1,
    title: 'Buy luxry cars',
    body: "Yes it's as easy as that, use our app to buy your dream car.",
  ),
  BordingModel(
    image: AssetsData.onBording2,
    title: 'Buy luxry cars',
    body: "Yes it's as easy as that, use our app to buy your dream car.",
  ),
  BordingModel(
    image: AssetsData.onBording3,
    title: 'Buy luxry cars',
    body: "Yes it's as easy as that, use our app to buy your dream car.",
  ),
];
