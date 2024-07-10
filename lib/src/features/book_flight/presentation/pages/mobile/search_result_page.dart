import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/mobile/user_info_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/resources/resources.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});
  static const pageName = 'search-result-page';
  static const pagePath = '/search-result-page';

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
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
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
                          const SizedBox(height: 4),
                          Text(localization.shiraz,
                              textAlign: TextAlign.start,
                              style: textTheme.displayLarge),
                        ],
                      ),
                      AppConstants.language == 'en'
                          ? const Icon(
                              IconManager.airplane,
                              size: 40,
                            )
                          : Transform.rotate(
                              angle: 3.1415,
                              child: const Icon(
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
                      context.push(UserInfoPage.pagePath);
                    },
                  ),
                ),
                const SizedBox(height: 8),
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
                          const SizedBox(height: 4),
                          Text(localization.shiraz,
                              textAlign: TextAlign.start,
                              style: textTheme.displayLarge),
                        ],
                      ),
                      AppConstants.language == 'en'
                          ? const Icon(
                              IconManager.airplane,
                              size: 40,
                            )
                          : Transform.rotate(
                              angle: 3.1415,
                              child: const Icon(
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
                      context.push(UserInfoPage.pagePath);
                    },
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
