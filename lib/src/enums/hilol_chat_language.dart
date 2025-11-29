/*

  Created by: Bakhromjon Polat
  Created on: Nov 29 2025 10:32:24

*/

enum HilolChatLanguage {
  uzbek,
  uzbekCyrl,
  russian,
  english,
  turkish,
  karakalpak,
  tajik,
  kazakh,
  kyrgyz,
  turkmen,
}

extension HilolChatLanguageExtension on HilolChatLanguage {
  String get code {
    switch (this) {
      case HilolChatLanguage.uzbek:
        return 'uz';
      case HilolChatLanguage.uzbekCyrl:
        return 'uz-Cyrl';
      case HilolChatLanguage.russian:
        return 'ru';
      case HilolChatLanguage.english:
        return 'en';
      case HilolChatLanguage.turkish:
        return 'tr';
      case HilolChatLanguage.karakalpak:
        return 'kaa';
      case HilolChatLanguage.tajik:
        return 'tg';
      case HilolChatLanguage.kazakh:
        return 'kk';
      case HilolChatLanguage.kyrgyz:
        return 'ky';
      case HilolChatLanguage.turkmen:
        return 'tk';
    }
  }
}
