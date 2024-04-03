enum RouteNames {
  //AUTH
  registration('/registration', name: '/registration'),
  login('/login', name: '/login'),

  //HOME PAGE
  home('/homepage', name: '/homepage'),

  //PROFILE
  profile('/profile', name: '/profile'),

  //WELCOME
  welcome('/welcome', name: '/welcome');

  const RouteNames(this.path, {required this.name});

  final String path;
  final String name;
}
