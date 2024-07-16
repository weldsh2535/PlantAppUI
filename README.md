# tewosmobileapp

# tewosmobileapp

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# Tewos_Mobile_App
Clean Architecture provides a way to structure applications that separate the different components of an application into modules, each with a well-defined purpose. The main idea behind Clean Architecture is to separate the application into three main layers: the presentation layer, the domain layer, and the data layer.

![Tewos app architecture](assets/images/0_dg1jimhK9ytRJnyM.webp)

The View layer in MVVM represents the Presentation layer in Flutter Clean Architecture, ViewModel represents the Domain layer, and the Model layer represents the Data layer.

The project folder structure will be like this:

![Tewos app architecture](assets/images/readMe1.PNG)

features folder will contain all app features such as auth, profile…, and each feature of the application is built on the basis of the previous three layers (Presentation, Domain, Data):
the architecture like this:
![Tewos app architecture](assets/images/readMe2.PNG)


The core folder is a fundamental module housing key components like utils, constants, styles, resources, and translations, and others. Its content can be tailored by developers to improve code cleanliness and adapt to evolving project needs, ensuring simplicity, modularity, and ease of maintenance.
 the architecture like:
![Tewos app architecture](assets/images/readMe3.PNG)

Let’s start with Clean Architecture layers.

# Presentation Layer
Responsibility
The Presentation Layer is the outermost layer, responsible for presenting information to the user and capturing user interactions. It includes all the components related to the user interface (UI), such as widgets, screens, and presenters/controllers (State Management).

Components
Screens: Represent the feature screens.
Widgets and UI Components: Represent the visual elements of the application.
Manager/Controllers: Contain the presentation logic that interacts with the UI components. They receive user input, communicate with the Use Cases in the Domain Layer, and update the UI accordingly.

![Tewos app architecture](assets/images/readMe4.PNG)

# Domain Layer
Responsibility
The Domain Layer, also known as the Business Logic or Use Case Layer, contains the core business rules and logic of the application. It represents the heart of the software system, encapsulating the essential functionality that is independent of any particular framework.

Components
Entities: Represent the fundamental business objects or concepts.
Use Cases: Contain application-specific business rules and orchestrate the flow of data between entities. They are responsible for executing specific actions or operations.
Business Rules and Logic (Repository): Core functionality that is crucial to the application’s domain.

![Tewos app architecture](assets/images/readMe5.PNG)

# Data Layer
Responsibility 
The Data Layer is responsible for interacting with external data sources, such as databases, network services, or repositories. It handles the storage and retrieval of data.

Components
Repositories or Gateways: Abstract interfaces that define how data is accessed and stored.
Data Models: Represent the structure of the data as it is stored in the external data sources.
Data Sources: Implementations of repositories that interact with databases, APIs, or other external services.
![Tewos app architecture](assets/images/readMe6.PNG)

Code Flow
![Tewos app architecture](assets/images/readMe7.webp)

config folder cotain  aman
![Tewos app architecture](assets/images/readMe8.PNG)# PlantAppUI
