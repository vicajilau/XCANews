# XCANews - SwiftUI News App

## Overview

XCANews is a SwiftUI-based iOS app that allows users to browse and read the latest news articles. The app fetches data from the [NewsAPI](https://newsapi.org/) to provide up-to-date news information. XCANews is designed following the MVVM (Model-View-ViewModel) architectural pattern for a clean and maintainable codebase.

## Features

- Browse the latest news articles from various sources.
- View detailed information about each news article.
- Supports dark mode for improved user experience.
- Utilizes MVVM pattern for a well-structured codebase.
- Smooth and responsive user interface powered by SwiftUI.

## Requirements

- iOS 15.0+
- Xcode 15.0+
- Swift 5.9+

## Installation

1. Clone or download the repository.
2. Open the project in Xcode.
3. Build and run the app on a simulator or a physical device.

Make sure to obtain an API key from [NewsAPI](https://newsapi.org/) and replace the placeholder in `APIManager.swift` with your own key.

```swift
// APIManager.swift

struct APIManager {
    static let apiKey = "YOUR_API_KEY_HERE"
    // ...
}
```

## Architecture

The project follows the MVVM architectural pattern, which separates concerns and promotes maintainability and testability.

### Project Structure

- **XCANews**
  - **Model**: Contains data models representing news articles and other related entities.
  - **ViewModel**: Manages the presentation logic and interacts with the data layer.
  - **View**: SwiftUI-based user interface components.
  - **Service**: Handles API communication and data retrieval.
  - **Utils**: Utility classes and extensions.

## Dependencies

Everything within this project is 100% native but if you were to install third party depencies.

Dependencies are managed using [Swift Package Manager](https://swift.org/package-manager/).

## Contribution

Feel free to contribute to the project by opening issues or submitting pull requests. Follow the [contribution guidelines](CONTRIBUTING.md) for a smooth collaboration process.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details.

## Acknowledgments

- Thanks to [NewsAPI](https://newsapi.org/) for providing the free API service.

Happy coding! 🚀
