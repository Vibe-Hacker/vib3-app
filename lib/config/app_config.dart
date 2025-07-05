class AppConfig {
  // Backend URLs (multiple for reliability)
  static const List<String> backendUrls = [
    'https://vib3-production.up.railway.app',
    'http://66.33.22.132',         // Railway IP - HTTP fallback for Samsung
    'https://66.33.22.132',        // Railway IP - HTTPS 
    'http://192.168.1.100:3000',   // Local HTTP fallback
    'https://192.168.1.100:3000',  // Local HTTPS fallback
    'http://10.0.2.2:3000',        // Android emulator localhost
    'https://vib3.onrender.com',   // Alternative hosting
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