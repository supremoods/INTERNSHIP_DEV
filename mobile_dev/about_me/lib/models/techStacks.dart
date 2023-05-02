class TechStacks {
  final String name;
  final String image;

  TechStacks({
    required this.name,
    required this.image,
  });

  static List<TechStacks> techStacks() {
    return <TechStacks>[
      TechStacks(name: 'android', image: 'assets/images/techStackico/android.png'),
      TechStacks(name: 'css', image: 'assets/images/techStackico/css.png'),
      TechStacks(name: 'firebase', image: 'assets/images/techStackico/firebase.png'),
      TechStacks(name: 'git', image: 'assets/images/techStackico/git.png'),
      TechStacks(name: 'html5', image: 'assets/images/techStackico/html5.png'),
      TechStacks(name: 'js', image: 'assets/images/techStackico/js.png'),    
      TechStacks(name: 'mongodb', image: 'assets/images/techStackico/mongodb.png'), 
      TechStacks(name: 'mysql', image: 'assets/images/techStackico/mysql.png'),
      TechStacks(name: 'nodejs', image: 'assets/images/techStackico/nodejs.png'),
      TechStacks(name: 'php', image: 'assets/images/techStackico/php.png'),
      TechStacks(name: 'python', image: 'assets/images/techStackico/python.png'),
      TechStacks(name: 'react', image: 'assets/images/techStackico/reactjs.png'),
    ];
  }
}
