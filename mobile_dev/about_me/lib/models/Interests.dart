// create class for Interests

class Interests {
  String name;

  // create list of Interests
  Interests({
    required this.name,
  });

  static List<Interests> interests() {
    return <Interests>[
      Interests(name: '🐱 Cat'),
      Interests(name: '☕ Coffee'),
      Interests(name: '🖌 Drawing'),
      Interests(name: '📸 Photography'),
      Interests(name: '🏛 Museum'),
      Interests(name: '🧳 Travel'),
      Interests(name: '🎨 Design')
    ];
  }
}
