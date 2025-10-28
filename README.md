# Flutter Multi-Feature App

A comprehensive Flutter application demonstrating multiple features including Google Maps integration, authentication, theming, pagination, and local data caching. Built as part of the Flutter Mentorship program (Week 7).

## Features

### 1. Authentication System
- User login functionality with secure credential storage
- Integration with Firebase for backend authentication
- Clean architecture implementation with BLoC pattern
- Secure storage using `flutter_secure_storage`
- Welcome page with authentication flow

### 2. Dynamic Theming
- Multiple theme options: Light, Dark, and Custom
- Real-time theme switching using Provider state management
- Custom color schemes using FlexColorScheme
- Persistent theme preferences across app sessions

### 3. Google Maps Integration
- Interactive map with custom markers showing points of interest
- Camera position controls and user location tracking
- Custom map styling with night mode support
- Place markers with custom icons
- Real-time map updates and navigation

### 4. Pagination
- Efficient list rendering with pagination support
- Load more items on scroll
- Optimized memory usage for large datasets

### 5. Network Layer
- Retrofit and Dio for API calls
- Custom interceptors for request/response logging
- Error handling with user-friendly messages
- Pretty logging for debugging

### 6. Architecture
- Clean Architecture principles
- Feature-based modular structure
- Repository pattern for data management
- BLoC/Cubit for state management
- Separation of concerns (Data, Domain, Presentation layers)

## Screenshots

### Welcome & Authentication
<div align="center">
  <img src="screenshots/Simulator Screenshot - iPhone 17 Pro - 2025-10-28 at 23.14.06.png" width="250" alt="Welcome Page - Light Theme"/>
  <img src="screenshots/Simulator Screenshot - iPhone 17 Pro - 2025-10-28 at 23.14.09.png" width="250" alt="Welcome Page - Dark Theme"/>
  <img src="screenshots/Simulator Screenshot - iPhone 17 Pro - 2025-10-28 at 23.14.16.png" width="250" alt="Login Page"/>
</div>

### Google Maps & Features
<div align="center">
  <img src="screenshots/Simulator Screenshot - iPhone 17 Pro - 2025-10-28 at 23.14.33.png" width="250" alt="Google Maps View"/>
  <img src="screenshots/Simulator Screenshot - iPhone 17 Pro - 2025-10-28 at 23.14.22.png" width="250" alt="Pagination List"/>
</div>

## Tech Stack

### Core Dependencies
- **Flutter SDK**: ^3.9.2
- **Firebase Core**: ^4.2.0 - Backend integration
- **Google Maps Flutter**: ^2.13.1 - Maps integration
- **Flutter BLoC**: ^9.1.1 - State management
- **Provider**: ^6.1.5 - Theme management
- **Dio**: ^5.9.0 - HTTP client
- **Retrofit**: ^4.1.0 - Type-safe API calls
- **Flutter Secure Storage**: ^9.2.4 - Secure data persistence
- **FlexColorScheme**: ^8.3.1 - Advanced theming
- **Equatable**: ^2.0.5 - Value equality
- **JSON Annotation**: ^4.9.0 - Serialization

### Dev Dependencies
- **Build Runner**: ^2.4.6
- **JSON Serializable**: ^6.8.0
- **Retrofit Generator**: ^8.1.0

## Project Structure

```
lib/
├── core/
│   ├── network/          # API configuration, Dio setup, interceptors
│   ├── theme/            # Theme definitions and provider
│   └── secure/           # Secure storage implementation
├── features/
│   ├── auth/
│   │   ├── data/         # API services, models, repositories
│   │   ├── domain/       # Entities, repository interfaces
│   │   └── presentation/ # UI and state management (Cubit)
│   ├── maps/
│   │   ├── models/       # Place models
│   │   └── screen/       # Google Maps page
│   └── pagination/       # Pagination implementation
└── main.dart             # App entry point
```

## Getting Started

### Prerequisites
- Flutter SDK (3.9.2 or higher)
- Dart SDK
- Firebase account and project setup
- Google Maps API key

### Installation

1. Clone the repository
```bash
git clone <repository-url>
cd app_maps
```

2. Install dependencies
```bash
flutter pub get
```

3. Generate code for serialization and Retrofit
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. Configure Firebase
- Add your `google-services.json` (Android) and `GoogleService-Info.plist` (iOS)
- Follow Firebase setup instructions for Flutter

5. Add Google Maps API key
- For Android: Add API key in `android/app/src/main/AndroidManifest.xml`
- For iOS: Add API key in `ios/Runner/AppDelegate.swift`

6. Run the app
```bash
flutter run
```

## Features Implemented

### Clean Architecture
- Separation of Data, Domain, and Presentation layers
- Repository pattern for abstracting data sources
- Dependency injection ready structure

### State Management
- BLoC/Cubit for complex state scenarios (Authentication)
- Provider for simple state management (Theming)

### API Integration
- RESTful API calls using Retrofit
- Type-safe API endpoints
- Request/response logging
- Error handling

### UI/UX
- Material Design principles
- Responsive layouts
- Smooth animations and transitions
- Custom theme support

## Learning Outcomes

This project demonstrates proficiency in:
- Flutter app architecture
- State management patterns
- API integration and networking
- Google Maps SDK integration
- Firebase integration
- Secure data storage
- Theme customization
- Clean code principles

## Future Enhancements

- [ ] Add user registration flow
- [ ] Implement real-time location tracking
- [ ] Add search functionality for places
- [ ] Implement offline mode with local caching
- [ ] Add route planning and directions
- [ ] Integrate push notifications
- [ ] Add unit and widget tests

## License

This project is created for educational purposes as part of the Flutter Mentorship program.
