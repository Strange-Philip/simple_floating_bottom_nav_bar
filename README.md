# ✨ Simple Floating Bottom Navigation Bar


Fully customizable floating bottom navigation package for flutter.

## 🎮 How To Use

```dart
    Scaffold(
          appBar: AppBar(
            title: Text('Example'),
          ),
          //If you want to show body behind the navbar, it should be true
          extendBody: true,
          bottomNavigationBar: FloatingNavbar(
            onTap: (int val) {
              //returns tab id which is user tapped
            },
            currentIndex: 0,
            items: [
              FloatingNavbarItem(icon: Icons.home, title: 'Home'),
              FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
              FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
              FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
            ],
          ),
          
        );

```


<img width="450" height="900" src="https://drive.google.com/file/d/1JkfIPzH-qwO6LrJ1ZvoYVGHgxg37Wwhb/view?usp=drive_link">

### ❗️ Note

- Pull requests are welcomed, especially the animations 🙂

## ⭐️ License

MIT License