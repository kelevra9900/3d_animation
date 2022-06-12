import 'package:cards_animation/home.dart';
import 'package:flutter/material.dart';
import 'package:cards_animation/widgets/cards.dart';

class CardsDetails extends StatelessWidget {
  const CardsDetails({
    Key? key,
    required this.card,
  }) : super(key: key);

  final Card3D card;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black45,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.08),
              Align(
                child: SizedBox(
                  height: 220.0,
                  child: Hero(
                    tag: card.title!,
                    child: Card3DWidget(
                      card: card,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                card.title!,
                style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                card.author!,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 15),
              Slider(
                activeColor: Colors.pink[400],
                inactiveColor: Colors.grey[200],
                value: 0.3,
                onChanged: (val) {},
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.shuffle, color: Colors.black45),
                    onPressed: () => null,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue[800],
                    child: IconButton(
                      icon: const Icon(Icons.pause, color: Colors.white),
                      onPressed: () => null,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.repeat, color: Colors.black45),
                    onPressed: () => null,
                  ),
                ],
              ),
              const Spacer(),
              TweenAnimationBuilder(
                duration: const Duration(milliseconds: 900),
                tween: Tween(begin: 1.0, end: 0.0),
                curve: const ElasticOutCurve(0.7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Next Song',
                      style: TextStyle(color: Colors.black87),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          child: Card3DWidget(
                            card: cardList[3],
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Text('Perfect - Ed Sheeran'),
                        const Spacer(),
                        IconButton(
                          icon: Icon(Icons.favorite,
                              color: Colors.pink.withOpacity(0.8)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                builder: (context, dynamic value, child) {
                  return Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 300 * value as double),
                    child: child,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
