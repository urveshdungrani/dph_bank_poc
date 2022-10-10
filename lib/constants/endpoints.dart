var apiHost = const String.fromEnvironment('API_HOST',
    defaultValue:
        'https://d1bfci2bkd0y4f.cloudfront.net/v1/'
    );

class Endpoints {
  static String login = '${apiHost}integrated/login';
} 