import 'package:ava_airline/src/features/header/header.dart';
import 'package:ava_airline/src/shared/resources/resources.dart';

// class NavbarItems extends StatefulWidget {
//   const NavbarItems({super.key, this.isMobile = false,});
//   final bool isMobile;
//
//   @override
//   State<NavbarItems> createState() => _NavbarItemsState();
// }
//
// class _NavbarItemsState extends State<NavbarItems> {
//
//   final List<String> menuItems = ['Home', 'Flights', 'About Us', 'Contact'];
//   final Map<String, List<String>> subMenuItems = {
//     'Home': ['Sub Home 1', 'Sub Home 2'],
//     'Flights': ['Sub Flight 1', 'Sub Flight 2'],
//     'About Us': ['Sub About 1', 'Sub About 2'],
//     'Contact': ['Sub Contact 1', 'Sub Contact 2'],
//   };
//
//   String? _hoveredItem;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: menuItems.map((item) {
//               return MouseRegion(
//                 onEnter: (_) => setState(() {
//                   _hoveredItem = item;
//                 }),
//                 onExit: (_) => setState(() {
//                   _hoveredItem = null;
//                 }),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     TextButton(
//                       onPressed: () {},
//                       child: Text(
//                         item,
//                         style: const TextStyle(color: Colors.white),
//                       ),
//                     ),
//                     AnimatedContainer(
//                       duration: const Duration(milliseconds: 300),
//                       height: 2,
//                       width: _hoveredItem == item ? 40 : 0,
//                       color: Colors.white,
//                     ),
//                   ],
//                 ),
//               );
//             }).toList(),
//           ),
//         if (_hoveredItem != null)
//           Container(
//               color: Colors.grey[200],
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: subMenuItems[_hoveredItem]!
//                     .map((subItem) => Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(subItem),
//                 ))
//                     .toList(),
//               ),
//         ),
//       ],
//     );
//   }
// }

class NavbarItems extends StatefulWidget implements PreferredSizeWidget {
  const NavbarItems({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(AppSize.s60);

  @override
  NavbarItemsState createState() => NavbarItemsState();
}

class NavbarItemsState extends State<NavbarItems> {

  OverlayEntry? _overlayEntry;
  bool _isOverlayVisible = false;
  int? _selectedIndex;

  void _showOverlay(BuildContext context, String title, int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_isOverlayVisible) {
      _hideOverlay();
    } else {
      _overlayEntry = _createOverlayEntry(context, title);
      Overlay.of(context).insert(_overlayEntry!);
      _isOverlayVisible = true;
    }
  }
  void _hideOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    _isOverlayVisible = false;
  }
  OverlayEntry _createOverlayEntry(BuildContext context, String title) {
    return OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: _hideOverlay,
        child: Material(
          color: Colors.transparent,
          child: Stack(
            children: [
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 200,
                    color: Colors.white,
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const [
                            Icon(Icons.info, size: 50),
                            Text('Info'),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.photo, size: 50),
                            Text('Photos'),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.airplanemode_active, size: 50),
                            Text('Flights'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final navbarItems = ["رزرو", "اطلاعات سفر", "در طول پرواز", "مقاصد پروازی", "باشگاه مسافران ویژه"];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: navbarItems.asMap().entries.map((element) => _buildMenuItem(context, element.value, element.key)).toList(),
    );
  }
  Widget _buildMenuItem(BuildContext context, String title, int index) {
    bool isActive = _selectedIndex == index;
    return InkWell(
      onTap: () {
        // _showOverlay(context, title, index);
        showModalFromTop(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.secondary)),
            Space.h4,
            Container(
              height: AppSize.s2,
              width: AppSize.s60,
              color: isActive ? Theme.of(context).colorScheme.error : Theme.of(context).colorScheme.secondary,
            ),
          ],
        ),
      ),
    );
  }
}

void showModalFromTop(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black45,
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (BuildContext buildContext, Animation animation,
        Animation secondaryAnimation) {
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 300,
          child: Material(
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Text(
                  'This is a custom modal from the top',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 16),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.info),
                  title: Text('Info'),
                ),
                const ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Photos'),
                ),
                const ListTile(
                  leading: Icon(Icons.airplanemode_active),
                  title: Text('Flights'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
              ],
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -1),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}