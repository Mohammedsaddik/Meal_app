class OnboardingModel {
  final String image;
  final String title;
  final String head1;
  final String head2;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.head1,
    required this.head2,
  });
}
List<OnboardingModel> onboardingScreens = [
  OnboardingModel(
    image: 'assets/images/Find food you love vector.png',
    title: 'Find Food You Love',
    head1: 'Discover the best foods from over 1,000',
    head2: 'restaurants and fast delivery to your doorstep',
  ),
  OnboardingModel(
    image: 'assets/images/Delivery vector.png',
    title: 'Fast Delivery',
    head1: 'Fast food delivery to your home',
    head2: 'wherever you are',
  ),
  OnboardingModel(
    image: 'assets/images/Live tracking vector.png',
    title: 'Live Tracking',
    head1: 'Real time tracking of your food on the app',
    head2: 'once you placed the order',
  ),
];
