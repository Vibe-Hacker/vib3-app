class AppConfig {
  // Backend URLs (multiple for reliability)
  static const List<String> backendUrls = [
    'https://vib3-web-xxxxx.ondigitalocean.app',  // UPDATE THIS with your DO app URL
    'http://10.0.2.2:3000',        // Android emulator localhost
    'http://localhost:3000',       // iOS simulator localhost
    'http://192.168.1.100:3000',   // Local network (update with your IP)
  ];
  
  static String get baseUrl => backendUrls[0]; // Default
  
  // API Endpoints
  static const String loginEndpoint = '/api/auth/login';
  static const String signupEndpoint = '/api/auth/register';
  static const String videosEndpoint = '/feed';
  static const String uploadEndpoint = '/api/upload';
  static const String profileEndpoint = '/api/auth/me';
  
  // Network settings
  static const Duration timeout = Duration(seconds: 10);
  static const int maxRetries = 3;
  
  // App Theme Colors
  static const int primaryColor = 0xFFFF0080;
  static const int secondaryColor = 0xFF00F0FF;
  static const int backgroundColor = 0xFF000000;
}