import 'package:ava_airline/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../shared/resources/resources.dart';
import '../../../../../shared/ui_kits/ava_elevated_button/ava_elevate_button.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.searchResults),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            localization.sampleDate,
                            textAlign: TextAlign.start,
                            style: textTheme.displayLarge!
                                .copyWith(color: Colors.grey[600]),
                          ),
                          Text(
                            localization.sampleTime1,
                            textAlign: TextAlign.start,
                            style: textTheme.headlineLarge,
                          ),
                          SizedBox(height: 4),
                          Text(localization.shiraz,
                              textAlign: TextAlign.start,
                              style: textTheme.displayLarge),
                        ],
                      ),
                      AppConstants.language == 'en'
                          ? Icon(
                              IconManager.airplane,
                              size: 40,
                            )
                          : Transform.rotate(
                              angle: 3.1415,
                              child: Icon(
                                IconManager.airplane,
                                size: 40,
                              ),
                            ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(localization.sampleDate,
                              textAlign: TextAlign.start,
                              style: textTheme.displayLarge!
                                  .copyWith(color: Colors.grey[600])),
                          Text(localization.sampleTime2,
                              textAlign: TextAlign.start,
                              style: textTheme.headlineLarge),
                          Text(
                            localization.tehran,
                            textAlign: TextAlign.start,
                            style: textTheme.displayLarge,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Theme.of(context).colorScheme.primary)),
                    child: Text(
                      localization.choose,
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                    onPressed: () {
                      //TODO: IMPLEMENT
                    },
                  ),
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            localization.sampleDate,
                            textAlign: TextAlign.start,
                            style: textTheme.displayLarge!
                                .copyWith(color: Colors.grey[600]),
                          ),
                          Text(
                            localization.sampleTime1,
                            textAlign: TextAlign.start,
                            style: textTheme.headlineLarge,
                          ),
                          SizedBox(height: 4),
                          Text(localization.shiraz,
                              textAlign: TextAlign.start,
                              style: textTheme.displayLarge),
                        ],
                      ),
                      AppConstants.language == 'en'
                          ? Icon(
                              IconManager.airplane,
                              size: 40,
                            )
                          : Transform.rotate(
                              angle: 3.1415,
                              child: Icon(
                                IconManager.airplane,
                                size: 40,
                              ),
                            ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(localization.sampleDate,
                              textAlign: TextAlign.start,
                              style: textTheme.displayLarge!
                                  .copyWith(color: Colors.grey[600])),
                          Text(localization.sampleTime2,
                              textAlign: TextAlign.start,
                              style: textTheme.headlineLarge),
                          Text(
                            localization.tehran,
                            textAlign: TextAlign.start,
                            style: textTheme.displayLarge,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Theme.of(context).colorScheme.primary)),
                    child: Text(
                      localization.choose,
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                    onPressed: () {
                      //TODO: IMPLEMENT
                    },
                  ),
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
