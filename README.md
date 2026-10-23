# 🛸 Rick and Morty — iOS App

An iOS application built with **Swift and SwiftUI** that lets users explore characters from the Rick and Morty universe. Browse character information, view detailed profiles, and discover the multiverse through a native iOS experience.

<p align="center">
  <img src="https://img.shields.io/badge/Platform-iOS-007AFF?style=for-the-badge&logo=apple&logoColor=white" alt="Platform iOS">
  <img src="https://img.shields.io/badge/Language-Swift-orange?style=for-the-badge&logo=swift&logoColor=white" alt="Swift">
  <img src="https://img.shields.io/badge/UI-SwiftUI-blue?style=for-the-badge" alt="SwiftUI">
  <img src="https://img.shields.io/badge/Architecture-MVVM-purple?style=for-the-badge" alt="MVVM">
</p>

---

## 📱 Screenshots

<p align="center">
  <img src="https://github.com/FAROOQkhan10/RickAndMorty/blob/main/Screenshots/img1.png" width="250">
  <img src="https://github.com/FAROOQkhan10/RickAndMorty/blob/main/Screenshots/img2.png" width="250">
  <img src="https://github.com/FAROOQkhan10/RickAndMorty/blob/main/Screenshots/img3.png" width="250">
  <img src="https://github.com/FAROOQkhan10/RickAndMorty/blob/main/Screenshots/img4.png" width="250">
  <img src="https://github.com/FAROOQkhan10/RickAndMorty/blob/main/Screenshots/img5.png" width="250">
</p>

## ✨ Features

- **Character Discovery** — Browse characters from the Rick and Morty universe.
- **Character Details** — View detailed information about individual characters.
- **REST API Integration** — Retrieve character data from the Rick and Morty API.
- **Native UI** — Build a responsive interface using SwiftUI.
- **MVVM Architecture** — Separate presentation logic from UI components and data models.
- **Structured Networking** — Organize API communication and error handling into dedicated service and utility layers.

## 🛠️ Tech Stack

- **Language:** Swift
- **UI Framework:** SwiftUI
- **Architecture:** Model-View-ViewModel (MVVM)
- **Networking:** REST API, HTTP requests, JSON decoding
- **Concurrency:** Swift Concurrency (`async`/`await`)

## 🏗️ Architecture

The project follows the **Model-View-ViewModel (MVVM)** architectural pattern.

- **Models** — Represent character data.
- **Views** — Display character lists and character details using SwiftUI.
- **ViewModels** — Manage view state and presentation logic.
- **Services** — Handle communication with the remote API.
- **Utilities** — Centralize API errors and shared constants.

### Project Structure

```text
RickAndMorty/
├── Core/
│   ├── ViewModels/
│   │   └── CharacterViewModel.swift
│   └── Views/
│       ├── CharacterDetailView.swift
│       ├── CharacterListView.swift
│       └── CharacterView.swift
├── Models/
│   └── Character.swift
├── Service/
│   └── APIService.swift
├── Utilities/
│   ├── APIError.swift
│   └── Constants.swift
├── Assets/
├── ContentView.swift
└── RickAndMortyApp.swift
```

## 🌐 API

This application uses the [Rick and Morty API](https://rickandmortyapi.com/) to retrieve character information.

**Base URL:** `https://rickandmortyapi.com/api`

Example endpoint:

```http
GET https://rickandmortyapi.com/api/character
```

The API provides character data, including names, images, species, status, and other character attributes.

API documentation: [rickandmortyapi.com/documentation](https://rickandmortyapi.com/documentation)

## 🚀 Getting Started

### Prerequisites

- macOS with Xcode installed
- An iOS Simulator or a compatible physical iPhone
- Git

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/FAROOQkhan10/RickAndMorty.git
   ```

2. Navigate to the project directory:

   ```bash
   cd RickAndMorty
   ```

3. Open the Xcode project:

   ```bash
   open RickAndMorty.xcodeproj
   ```

4. Select an iOS Simulator or connect your iPhone.
5. Build and run the app using Xcode.

## 📚 Learning Objectives

This project provides hands-on practice with:

- Building iOS interfaces using SwiftUI.
- Applying MVVM architecture.
- Integrating a REST API into an iOS application.
- Organizing models, views, view models, and services.
- Handling API errors through a dedicated utility layer.
- Working with asynchronous data loading.

## 🙌 Acknowledgements

- [Rick and Morty API](https://rickandmortyapi.com/) for character data.
- [Apple Developer](https://developer.apple.com/) for Swift and SwiftUI documentation.

---

<p align="center">
  Built with ❤️ using SwiftUI
</p>
