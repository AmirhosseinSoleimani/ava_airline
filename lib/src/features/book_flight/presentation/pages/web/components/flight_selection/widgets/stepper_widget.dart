import 'package:ava_airline/src/features/book_flight/book_flight.dart';

class StepperWidget extends StatelessWidget {
  const StepperWidget(
      {super.key, required this.stepperList, required this.currentIndex});
  final List<StepperModel> stepperList;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];
    for (int i = 0; i < stepperList.length; i++) {
      if (i < currentIndex) {
        list.add(
            stepper(context, stepperList[i].title, Icons.check, true, false));
        if (i != (stepperList.length - 1)) {
          list.add(const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: AppPadding.p20),
                child: Divider(
                  thickness: 3,
                  color: Colors.green,
                ),
              )));
        }
      } else if (i == currentIndex) {
        list.add(stepper(
            context, stepperList[i].title, stepperList[i].icon, false, true));
        if (i != (stepperList.length - 1)) {
          list.add(Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: AppPadding.p20),
                child: Divider(
                  thickness: 3,
                  color: ColorLightThemeManager.grey,
                ),
              )));
        }
      } else {
        list.add(stepper(
            context, stepperList[i].title, stepperList[i].icon, false, false));
        if (i != (stepperList.length - 1)) {
          list.add(Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: AppPadding.p20),
                child: Divider(
                  thickness: 3,
                  color: ColorLightThemeManager.grey,
                ),
              )));
        }
      }
    }
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: list,
      ),
    );
  }
}

Widget stepper(BuildContext context, String title, IconData icon, bool isActive,
    bool isProgressive) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: AppSize.s60,
        height: AppSize.s60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? Colors.green : Colors.white,
            border: Border.all(
                width: 2,
                color: isActive
                    ? Colors.green
                    : isProgressive
                    ? Colors.green
                    : ColorLightThemeManager.grey)),
        child: Icon(
          size: AppSize.s28,
          icon,
          color: isActive
              ? Colors.white
              : ColorLightThemeManager.grey,
        ),
      ),
      Space.h4,
      Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium,
      )
    ],
  );
}

class StepperModel {
  String title;
  IconData icon;
  StepperModel({required this.title, required this.icon});
}
