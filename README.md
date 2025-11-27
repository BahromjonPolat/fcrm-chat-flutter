# Hilol Chat Flutter

A Flutter package for integrating Hilol chat functionality into your Flutter applications. This package provides a ready-to-use chat interface with real-time messaging capabilities powered by the FCRM Chat SDK.

## Features

- **Real-time messaging** - Socket-based communication for instant message delivery
- **User registration** - Built-in user authentication and registration flow
- **Chat UI** - Pre-built, customizable chat interface with message bubbles
- **Media support** - Send and receive images and files
- **BLoC architecture** - State management using flutter_bloc
- **Customizable theming** - Adapt the chat UI to match your app's design
- **Message status** - Delivery and read receipts
- **Avatar support** - User profile pictures and online status indicators

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  hilol_chat_flutter:
    git:
      url: https://github.com/BahromjonPolat/fcrm-chat-flutter.git
      ref: main
```

Then run:

```bash
flutter pub get
```

## Getting Started

### 1. Platform Configuration

#### iOS Configuration

Add the following to your `ios/Runner/Info.plist` file to enable phone call functionality:

```xml
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>tel</string>
</array>
```

This allows the app to check if the device can make phone calls and open the phone dialer when the call button is tapped in the chat interface.

#### Android Configuration

Add the following permission to your `android/app/src/main/AndroidManifest.xml` file:

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <!-- Add this inside the manifest tag -->
    <queries>
        <intent>
            <action android:name="android.intent.action.DIAL" />
        </intent>
    </queries>

    <!-- Rest of your manifest -->
</manifest>
```

**Note:** The package uses `url_launcher` for phone call functionality. No additional permissions are required as the app only opens the phone dialer with a pre-filled number - the user must manually initiate the actual call.

### 2. API Configuration

First, you need to obtain the following credentials from your Hilol dashboard:
- `baseUrl` - API base URL
- `companyToken` - Your company's unique token
- `appKey` - Application key
- `appSecret` - Application secret
- `socketUrl` - WebSocket server URL
- `defaultEndpoint` - Default chat endpoint name

### 3. Initialize the BLoC

Wrap your app with `MultiBlocProvider` and initialize the `HilolChatBloc`:

```dart
import 'package:hilol_chat_flutter/hilol_chat_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HilolChatBloc()
            ..add(
              HilolChatEvent.initialize(
                baseUrl: 'YOUR_BASE_URL',
                companyToken: 'YOUR_COMPANY_TOKEN',
                appKey: 'YOUR_APP_KEY',
                appSecret: 'YOUR_APP_SECRET',
                socketUrl: 'YOUR_SOCKET_URL',
                defaultEndpoint: 'Support Chat',
              ),
            ),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xFF0085FF),
          scaffoldBackgroundColor: Color(0xFFF1F3F3),
        ),
        home: HomePage(),
      ),
    );
  }
}
```

### 4. Navigate to Chat Page

To open the chat interface, navigate to `HilolChatPage`:

```dart
Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => HilolChatPage(),
  ),
);
```

## Usage Example

Here's a complete example:

```dart
import 'package:hilol_chat_flutter/hilol_chat_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HilolChatPage(),
              ),
            );
          },
          child: Text('Open Chat'),
        ),
      ),
    );
  }
}
```

## Customization

### Theme Customization

You can customize the chat appearance by setting theme properties in your `MaterialApp`:

```dart
MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.blue, // Sender message bubble color
    cardColor: Colors.white, // Receiver message bubble color
    scaffoldBackgroundColor: Color(0xFFF1F3F3), // Chat background
    appBarTheme: AppBarThemeData(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
  ),
  // ...
)
```

### Custom Widgets

The package exports reusable widgets that you can use in your custom implementations:

```dart
import 'package:hilol_chat_flutter/hilol_chat_flutter.dart';

// Available widgets:
// - HilolChatBubble: Message bubble widget
// - HilolChatSenderAvatar: User avatar with online status
// - HilolChatInput: Message input field with attachment options
```

## Architecture

This package uses the **BLoC (Business Logic Component)** pattern for state management:

- `HilolChatBloc` - Manages chat messages, user state, and real-time communication
- `HilolChatEvent` - Events for chat operations (send message, load history, etc.)
- `HilolChatState` - Chat state (loading, success, error states)

## Dependencies

This package relies on:
- `fcrm_chat_sdk` - Core SDK for Hilol chat functionality
- `flutter_bloc` - State management
- `cached_network_image` - Image caching
- `image_picker` - Image selection from gallery/camera
- `file_picker` - File attachment support
- `svg_flutter` - SVG icon rendering

## Requirements

- Flutter SDK: >=1.17.0
- Dart SDK: ^3.10.0

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Support

For issues, questions, or feature requests, please open an issue on the GitHub repository.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Author

Created by Bakhromjon Polat

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for a list of changes in each version.
