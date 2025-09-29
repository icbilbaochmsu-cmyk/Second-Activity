class PhotographyService {
  final String title;
  final String description;
  final double price;

  PhotographyService({
    required this.title,
    required this.description,
    required this.price,
  });
}

// Example data for your app
List<PhotographyService> sampleServices = [
  PhotographyService(
    title: "Portrait Session",
    description: "1-hour portrait session with 10 edited photos.",
    price: 1500.0,
  ),
  PhotographyService(
    title: "Event Coverage",
    description: "Up to 4 hours of event photography with unlimited shots.",
    price: 5000.0,
  ),
  PhotographyService(
    title: "Product Shoot",
    description: "Professional product photos with clean backgrounds.",
    price: 2500.0,
  ),
];
