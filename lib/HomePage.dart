import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {
        'name': 'SEO',
        'icon': 'https://cdn-icons-png.freepik.com/256/6560/6560607.png',
        'url': 'https://www.example.com/seo',
      },
      {
        'name': 'SMO',
        'icon': 'https://www.copperweb.com.my/wp-content/uploads/2019/07/smo-icon.png',
        'url': 'https://www.example.com/smo',
      },
      {
        'name': 'PPC',
        'icon': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlkM7cr5ULtzs7L_b69uzuc6QyD39jsUk7hQ&s',
        'url': 'https://www.example.com/ppc',
      },
      {
        'name': 'SMM',
        'icon': 'https://e7.pngegg.com/pngimages/301/233/png-clipart-computer-icons-digital-marketing-business-content-marketing-blue-text-thumbnail.png',
        'url': 'https://www.example.com/smm',
      },
      {
        'name': 'Lead',
        'icon': 'https://static.vecteezy.com/system/resources/previews/036/044/808/non_2x/lead-generation-modern-icon-clipart-illustration-free-png.png',
        'url': 'https://www.example.com/lead',
      },
    ];

    final webCategories = [
      {
        'name': 'Wordpress',
        'icon': 'https://cdn-icons-png.flaticon.com/512/59/59137.png',
        'url': 'https://www.example.com/wordpress',
      },
      {
        'name': 'Frontend',
        'icon': 'https://static.vecteezy.com/system/resources/previews/022/550/803/non_2x/html-js-css-icon-style-vector.jpg',
        'url': 'https://www.example.com/frontend',
      },
      {
        'name': 'Backend',
        'icon': 'https://cdn-icons-png.flaticon.com/512/9382/9382002.png',
        'url': 'https://www.example.com/backend',
      },
      {
        'name': 'Full Stack',
        'icon': 'https://static.vecteezy.com/system/resources/previews/033/173/188/non_2x/full-stack-developer-icon-vector.jpg',
        'url': 'https://www.example.com/fullstack',
      },
    ];

    final carouselImages = [
     'assets/banner1.jpg',
      'assets/banner2.jpeg',
      'assets/banner3.jpg',
    ];

    final testimonials = [
      {
        'name': 'John Doe',
        'image': 'https://via.placeholder.com/50',
        'feedback': 'Great service and support!',
      },
      {
        'name': 'Jane Smith',
        'image': 'https://via.placeholder.com/50',
        'feedback': 'Exceptional results for our business.',
      },
      {
        'name': 'Samuel Green',
        'image': 'https://via.placeholder.com/50',
        'feedback': 'Highly recommend their team!',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome', style: TextStyle(color: Colors.purple)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Carousel Section
              CarouselSlider(
                options: CarouselOptions(
                  height: 180,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                ),
                items: carouselImages.map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              const Text(
                'Digital Marketing Services',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(category['icon'] ?? ''),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            category['name'] ?? '',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Web Services',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: webCategories.length,
                  itemBuilder: (context, index) {
                    final category = webCategories[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(category['icon'] ?? ''),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            category['name'] ?? '',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Client Testimonials',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: testimonials.length,
                  itemBuilder: (context, index) {
                    final testimonial = testimonials[index];
                    return Container(
                      width: 200,
                      margin: const EdgeInsets.only(right: 16.0),
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(testimonial['image'] ?? ''),
                            radius: 25,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            testimonial['name'] ?? '',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            testimonial['feedback'] ?? '',
                            style: const TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
