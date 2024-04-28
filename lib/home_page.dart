import 'package:flutter/material.dart';
import '../models/post.dart';
import '../widgets/post_item.dart';
import '../widgets/story_item.dart';

class HomePage extends StatelessWidget {
  final List<Post> posts = [
    Post(
      imageUrl: 'https://picsum.photos/200/300?random=1',
      caption: 'leo_prono_spor',
    ),
    Post(
      imageUrl: 'https://picsum.photos/200/300?random=2',
      caption: 'gazo.team.officiel',
    ),
  ];

  final List<String> storyImages = [
    'https://picsum.photos/50/50?random=1',
    'https://picsum.photos/50/50?random=2',
    'https://picsum.photos/50/50?random=3',
    'https://picsum.photos/50/50?random=4',
  ];

  final List<String> storyUsernames = [
    'Votre story',
    'gazo.team.officiel',
    'sidiki.officiel',
    'leo_prono_spor',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        leading: IconButton(
          icon: Icon(Icons.add_box_outlined),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.message_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.brightness_4),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          // Stories section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Stories', style: TextStyle(fontWeight: FontWeight.bold)),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                storyImages.length,
                    (index) {
                  return StoryItem(
                    imageUrl: storyImages[index],
                    username: storyUsernames[index],
                  );
                },
              ),
            ),
          ),
          // Posts section
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  PostItem(post: posts[index]),
                  Divider(height: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.chat_bubble_outline),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white, // Couleur d'arrière-plan
        unselectedItemColor: Colors.black, // Couleur des icônes et du texte non sélectionnés
        selectedItemColor: Colors.black, // Couleur des icônes et du texte sélectionnés
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
