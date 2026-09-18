import 'package:flutter/material.dart';
import 'package:instagra_flutter/widget/stories.dart';
import 'package:instagra_flutter/widget/post_instagram.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: const Color.fromARGB(255, 31, 130, 187),
            title: const Text(
              'Instagram Aula',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_box_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send_outlined),
              ),
            ],
          ),
          const SliverToBoxAdapter(child: Stories()),
          const SliverToBoxAdapter(child: Divider(height: 1)),

          const SliverToBoxAdapter(
            child: PostInstagram(
              usuario: "flutter.dev",
              local: "São Paulo, Brasil",
              legenda: "Construindo interfaces incriveis com Flutter 💓",
              cor: Colors.blue,
              icone: Icons.flutter_dash,
              curtidasIniciais: 128,
            ),
          ),
        ],
      ),
    );
  }
}
