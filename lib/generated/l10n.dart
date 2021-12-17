// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Gmail`
  String get mail {
    return Intl.message(
      'Gmail',
      name: 'mail',
      desc: '',
      args: [],
    );
  }

  /// `Images`
  String get gorse {
    return Intl.message(
      'Images',
      name: 'gorse',
      desc: '',
      args: [],
    );
  }

  /// `Google Search`
  String get gog {
    return Intl.message(
      'Google Search',
      name: 'gog',
      desc: '',
      args: [],
    );
  }

  /// `I'm Feeling Lucky`
  String get ken {
    return Intl.message(
      'I\'m Feeling Lucky',
      name: 'ken',
      desc: '',
      args: [],
    );
  }

  /// `Google offered in:`
  String get kul {
    return Intl.message(
      'Google offered in:',
      name: 'kul',
      desc: '',
      args: [],
    );
  }

  /// `Turkish`
  String get turk {
    return Intl.message(
      'Turkish',
      name: 'turk',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get hak {
    return Intl.message(
      'About',
      name: 'hak',
      desc: '',
      args: [],
    );
  }

  /// `Advertising`
  String get rek {
    return Intl.message(
      'Advertising',
      name: 'rek',
      desc: '',
      args: [],
    );
  }

  /// `Business`
  String get iss {
    return Intl.message(
      'Business',
      name: 'iss',
      desc: '',
      args: [],
    );
  }

  /// `How search works?`
  String get ara {
    return Intl.message(
      'How search works?',
      name: 'ara',
      desc: '',
      args: [],
    );
  }

  /// `Carbon neutral since 2007`
  String get kar {
    return Intl.message(
      'Carbon neutral since 2007',
      name: 'kar',
      desc: '',
      args: [],
    );
  }

  /// `Privacy`
  String get giz {
    return Intl.message(
      'Privacy',
      name: 'giz',
      desc: '',
      args: [],
    );
  }

  /// `Terms`
  String get sar {
    return Intl.message(
      'Terms',
      name: 'sar',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get aya {
    return Intl.message(
      'Settings',
      name: 'aya',
      desc: '',
      args: [],
    );
  }

  /// `Turkey`
  String get tur {
    return Intl.message(
      'Turkey',
      name: 'tur',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
