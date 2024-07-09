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

  /// `en`
  String get currentLanguage {
    return Intl.message(
      'en',
      name: 'currentLanguage',
      desc: '',
      args: [],
    );
  }

  /// `،`
  String get comma {
    return Intl.message(
      '،',
      name: 'comma',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Book`
  String get book {
    return Intl.message(
      'Book',
      name: 'book',
      desc: '',
      args: [],
    );
  }

  /// `Hamava`
  String get myTrips {
    return Intl.message(
      'Hamava',
      name: 'myTrips',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Destinations from`
  String get destinationsFrom {
    return Intl.message(
      'Destinations from',
      name: 'destinationsFrom',
      desc: '',
      args: [],
    );
  }

  /// `Iran`
  String get iran {
    return Intl.message(
      'Iran',
      name: 'iran',
      desc: '',
      args: [],
    );
  }

  /// `Tehran`
  String get tehran {
    return Intl.message(
      'Tehran',
      name: 'tehran',
      desc: '',
      args: [],
    );
  }

  /// `Popular destinations`
  String get popularDestinations {
    return Intl.message(
      'Popular destinations',
      name: 'popularDestinations',
      desc: '',
      args: [],
    );
  }

  /// `AVA FLIGHT EXPERIENCE`
  String get avaFlightExperience {
    return Intl.message(
      'AVA FLIGHT EXPERIENCE',
      name: 'avaFlightExperience',
      desc: '',
      args: [],
    );
  }

  /// `Ahvaz`
  String get ahvaz {
    return Intl.message(
      'Ahvaz',
      name: 'ahvaz',
      desc: '',
      args: [],
    );
  }

  /// `Shiraz`
  String get shiraz {
    return Intl.message(
      'Shiraz',
      name: 'shiraz',
      desc: '',
      args: [],
    );
  }

  /// `Isfahan`
  String get isfahan {
    return Intl.message(
      'Isfahan',
      name: 'isfahan',
      desc: '',
      args: [],
    );
  }

  /// `Kish`
  String get kish {
    return Intl.message(
      'Kish',
      name: 'kish',
      desc: '',
      args: [],
    );
  }

  /// `Qeshm`
  String get qeshm {
    return Intl.message(
      'Qeshm',
      name: 'qeshm',
      desc: '',
      args: [],
    );
  }

  /// `Flight entertainment`
  String get flightEntertainment {
    return Intl.message(
      'Flight entertainment',
      name: 'flightEntertainment',
      desc: '',
      args: [],
    );
  }

  /// `Dining`
  String get dining {
    return Intl.message(
      'Dining',
      name: 'dining',
      desc: '',
      args: [],
    );
  }

  /// `Hotels`
  String get hotels {
    return Intl.message(
      'Hotels',
      name: 'hotels',
      desc: '',
      args: [],
    );
  }

  /// `Mashhad`
  String get mashhad {
    return Intl.message(
      'Mashhad',
      name: 'mashhad',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Airport maps`
  String get airportMaps {
    return Intl.message(
      'Airport maps',
      name: 'airportMaps',
      desc: '',
      args: [],
    );
  }

  /// `Flight status`
  String get flightStatus {
    return Intl.message(
      'Flight status',
      name: 'flightStatus',
      desc: '',
      args: [],
    );
  }

  /// `Baggage tracker`
  String get baggageTracker {
    return Intl.message(
      'Baggage tracker',
      name: 'baggageTracker',
      desc: '',
      args: [],
    );
  }

  /// `Travel updates`
  String get travelUpdates {
    return Intl.message(
      'Travel updates',
      name: 'travelUpdates',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faq {
    return Intl.message(
      'FAQ',
      name: 'faq',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get contactUs {
    return Intl.message(
      'Contact us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `Send feedback`
  String get sendFeedback {
    return Intl.message(
      'Send feedback',
      name: 'sendFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Legal`
  String get legal {
    return Intl.message(
      'Legal',
      name: 'legal',
      desc: '',
      args: [],
    );
  }

  /// `Rules and notices`
  String get rulesAndNotices {
    return Intl.message(
      'Rules and notices',
      name: 'rulesAndNotices',
      desc: '',
      args: [],
    );
  }

  /// `Economy from`
  String get economyFrom {
    return Intl.message(
      'Economy from',
      name: 'economyFrom',
      desc: '',
      args: [],
    );
  }

  /// `Buy ticket`
  String get buyTicket {
    return Intl.message(
      'Buy ticket',
      name: 'buyTicket',
      desc: '',
      args: [],
    );
  }

  /// `The voice of the sky calls you; Book your flight now.`
  String get bookYourFlight {
    return Intl.message(
      'The voice of the sky calls you; Book your flight now.',
      name: 'bookYourFlight',
      desc: '',
      args: [],
    );
  }

  /// `Return`
  String get returnS {
    return Intl.message(
      'Return',
      name: 'returnS',
      desc: '',
      args: [],
    );
  }

  /// `One way`
  String get oneWay {
    return Intl.message(
      'One way',
      name: 'oneWay',
      desc: '',
      args: [],
    );
  }

  /// `Multi city`
  String get multiCity {
    return Intl.message(
      'Multi city',
      name: 'multiCity',
      desc: '',
      args: [],
    );
  }

  /// `Search flights`
  String get searchFlights {
    return Intl.message(
      'Search flights',
      name: 'searchFlights',
      desc: '',
      args: [],
    );
  }

  /// `FROM`
  String get from {
    return Intl.message(
      'FROM',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `TO`
  String get to {
    return Intl.message(
      'TO',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `to`
  String get toCalender {
    return Intl.message(
      'to',
      name: 'toCalender',
      desc: '',
      args: [],
    );
  }

  /// `Select\norigin`
  String get selectOrigin {
    return Intl.message(
      'Select\norigin',
      name: 'selectOrigin',
      desc: '',
      args: [],
    );
  }

  /// `Select\ndestination`
  String get selectDestination {
    return Intl.message(
      'Select\ndestination',
      name: 'selectDestination',
      desc: '',
      args: [],
    );
  }

  /// `Travel dates`
  String get travelDates {
    return Intl.message(
      'Travel dates',
      name: 'travelDates',
      desc: '',
      args: [],
    );
  }

  /// `Travel date`
  String get travelDate {
    return Intl.message(
      'Travel date',
      name: 'travelDate',
      desc: '',
      args: [],
    );
  }

  /// `Select date`
  String get selectDate {
    return Intl.message(
      'Select date',
      name: 'selectDate',
      desc: '',
      args: [],
    );
  }

  /// `Select dates`
  String get selectDates {
    return Intl.message(
      'Select dates',
      name: 'selectDates',
      desc: '',
      args: [],
    );
  }

  /// `Passenger and cabin class`
  String get passengerAndCabinClass {
    return Intl.message(
      'Passenger and cabin class',
      name: 'passengerAndCabinClass',
      desc: '',
      args: [],
    );
  }

  /// `1 Adult in economy class`
  String get adultEconomyClass1 {
    return Intl.message(
      '1 Adult in economy class',
      name: 'adultEconomyClass1',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Flight`
  String get flight {
    return Intl.message(
      'Flight',
      name: 'flight',
      desc: '',
      args: [],
    );
  }

  /// `No upcoming trips`
  String get noTrips {
    return Intl.message(
      'No upcoming trips',
      name: 'noTrips',
      desc: '',
      args: [],
    );
  }

  /// `If you have an upcoming trip booked with us, you can add it to your My trips list.`
  String get noTripsDescription {
    return Intl.message(
      'If you have an upcoming trip booked with us, you can add it to your My trips list.',
      name: 'noTripsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Book a flight`
  String get bookFlight {
    return Intl.message(
      'Book a flight',
      name: 'bookFlight',
      desc: '',
      args: [],
    );
  }

  /// `Add booking`
  String get addBooking {
    return Intl.message(
      'Add booking',
      name: 'addBooking',
      desc: '',
      args: [],
    );
  }

  /// `Passengers`
  String get passengers {
    return Intl.message(
      'Passengers',
      name: 'passengers',
      desc: '',
      args: [],
    );
  }

  /// `Adults`
  String get adults {
    return Intl.message(
      'Adults',
      name: 'adults',
      desc: '',
      args: [],
    );
  }

  /// `Age 12+`
  String get adultsDescription {
    return Intl.message(
      'Age 12+',
      name: 'adultsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Children`
  String get children {
    return Intl.message(
      'Children',
      name: 'children',
      desc: '',
      args: [],
    );
  }

  /// `Age 2-11`
  String get childrenDescription {
    return Intl.message(
      'Age 2-11',
      name: 'childrenDescription',
      desc: '',
      args: [],
    );
  }

  /// `Infant`
  String get infant {
    return Intl.message(
      'Infant',
      name: 'infant',
      desc: '',
      args: [],
    );
  }

  /// `Age under 2`
  String get infantDescription {
    return Intl.message(
      'Age under 2',
      name: 'infantDescription',
      desc: '',
      args: [],
    );
  }

  /// `Class`
  String get clas {
    return Intl.message(
      'Class',
      name: 'clas',
      desc: '',
      args: [],
    );
  }

  /// `Economy Class`
  String get economyClass {
    return Intl.message(
      'Economy Class',
      name: 'economyClass',
      desc: '',
      args: [],
    );
  }

  /// `Premium Economy`
  String get premiumEconomy {
    return Intl.message(
      'Premium Economy',
      name: 'premiumEconomy',
      desc: '',
      args: [],
    );
  }

  /// `Business Class`
  String get businessClass {
    return Intl.message(
      'Business Class',
      name: 'businessClass',
      desc: '',
      args: [],
    );
  }

  /// `First Class`
  String get firstClass {
    return Intl.message(
      'First Class',
      name: 'firstClass',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `in`
  String get inn {
    return Intl.message(
      'in',
      name: 'inn',
      desc: '',
      args: [],
    );
  }

  /// `Passengers`
  String get passenger {
    return Intl.message(
      'Passengers',
      name: 'passenger',
      desc: '',
      args: [],
    );
  }

  /// `Login/Register`
  String get login_register {
    return Intl.message(
      'Login/Register',
      name: 'login_register',
      desc: '',
      args: [],
    );
  }

  /// `Reserve`
  String get reserve {
    return Intl.message(
      'Reserve',
      name: 'reserve',
      desc: '',
      args: [],
    );
  }

  /// `Buy Ticket`
  String get buy_ticket {
    return Intl.message(
      'Buy Ticket',
      name: 'buy_ticket',
      desc: '',
      args: [],
    );
  }

  /// `Online Check-In`
  String get online_check_in {
    return Intl.message(
      'Online Check-In',
      name: 'online_check_in',
      desc: '',
      args: [],
    );
  }

  /// `Refund Ticket`
  String get refund_ticket {
    return Intl.message(
      'Refund Ticket',
      name: 'refund_ticket',
      desc: '',
      args: [],
    );
  }

  /// `Change Ticket`
  String get change_ticket {
    return Intl.message(
      'Change Ticket',
      name: 'change_ticket',
      desc: '',
      args: [],
    );
  }

  /// `Travel Info`
  String get travel_info {
    return Intl.message(
      'Travel Info',
      name: 'travel_info',
      desc: '',
      args: [],
    );
  }

  /// `Ticket Guide`
  String get ticket_guide {
    return Intl.message(
      'Ticket Guide',
      name: 'ticket_guide',
      desc: '',
      args: [],
    );
  }

  /// `Reservation Management Guide`
  String get reservation_management_guide {
    return Intl.message(
      'Reservation Management Guide',
      name: 'reservation_management_guide',
      desc: '',
      args: [],
    );
  }

  /// `Refund Guide`
  String get refund_guide {
    return Intl.message(
      'Refund Guide',
      name: 'refund_guide',
      desc: '',
      args: [],
    );
  }

  /// `Passenger Guide`
  String get passenger_guide {
    return Intl.message(
      'Passenger Guide',
      name: 'passenger_guide',
      desc: '',
      args: [],
    );
  }

  /// `Disabled Passenger`
  String get disabled_passenger {
    return Intl.message(
      'Disabled Passenger',
      name: 'disabled_passenger',
      desc: '',
      args: [],
    );
  }

  /// `Medical Issues`
  String get medical_issues {
    return Intl.message(
      'Medical Issues',
      name: 'medical_issues',
      desc: '',
      args: [],
    );
  }

  /// `Unaccompanied Child`
  String get unaccompanied_child {
    return Intl.message(
      'Unaccompanied Child',
      name: 'unaccompanied_child',
      desc: '',
      args: [],
    );
  }

  /// `Special Meals`
  String get special_meals {
    return Intl.message(
      'Special Meals',
      name: 'special_meals',
      desc: '',
      args: [],
    );
  }

  /// `Lounge Services`
  String get lounge_services {
    return Intl.message(
      'Lounge Services',
      name: 'lounge_services',
      desc: '',
      args: [],
    );
  }

  /// `Country Travel Conditions`
  String get country_travel_conditions {
    return Intl.message(
      'Country Travel Conditions',
      name: 'country_travel_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Baggage`
  String get baggage {
    return Intl.message(
      'Baggage',
      name: 'baggage',
      desc: '',
      args: [],
    );
  }

  /// `Prohibited Items`
  String get prohibited_items {
    return Intl.message(
      'Prohibited Items',
      name: 'prohibited_items',
      desc: '',
      args: [],
    );
  }

  /// `Live Animals`
  String get live_animals {
    return Intl.message(
      'Live Animals',
      name: 'live_animals',
      desc: '',
      args: [],
    );
  }

  /// `Lost Baggage`
  String get lost_baggage {
    return Intl.message(
      'Lost Baggage',
      name: 'lost_baggage',
      desc: '',
      args: [],
    );
  }

  /// `Flight Safety`
  String get flight_safety {
    return Intl.message(
      'Flight Safety',
      name: 'flight_safety',
      desc: '',
      args: [],
    );
  }

  /// `During Flight`
  String get during_flight {
    return Intl.message(
      'During Flight',
      name: 'during_flight',
      desc: '',
      args: [],
    );
  }

  /// `Ava Fleet`
  String get ava_fleet {
    return Intl.message(
      'Ava Fleet',
      name: 'ava_fleet',
      desc: '',
      args: [],
    );
  }

  /// `Seat Status`
  String get seat_status {
    return Intl.message(
      'Seat Status',
      name: 'seat_status',
      desc: '',
      args: [],
    );
  }

  /// `Flight Classes`
  String get flight_classes {
    return Intl.message(
      'Flight Classes',
      name: 'flight_classes',
      desc: '',
      args: [],
    );
  }

  /// `Flight Crew`
  String get flight_crew {
    return Intl.message(
      'Flight Crew',
      name: 'flight_crew',
      desc: '',
      args: [],
    );
  }

  /// `Catering`
  String get catering {
    return Intl.message(
      'Catering',
      name: 'catering',
      desc: '',
      args: [],
    );
  }

  /// `In-Flight Entertainment`
  String get in_flight_entertainment {
    return Intl.message(
      'In-Flight Entertainment',
      name: 'in_flight_entertainment',
      desc: '',
      args: [],
    );
  }

  /// `In-Flight Magazine`
  String get in_flight_magazine {
    return Intl.message(
      'In-Flight Magazine',
      name: 'in_flight_magazine',
      desc: '',
      args: [],
    );
  }

  /// `Flight Destinations`
  String get flight_destinations {
    return Intl.message(
      'Flight Destinations',
      name: 'flight_destinations',
      desc: '',
      args: [],
    );
  }

  /// `Domestic Destinations`
  String get domestic_destinations {
    return Intl.message(
      'Domestic Destinations',
      name: 'domestic_destinations',
      desc: '',
      args: [],
    );
  }

  /// `International Destinations`
  String get international_destinations {
    return Intl.message(
      'International Destinations',
      name: 'international_destinations',
      desc: '',
      args: [],
    );
  }

  /// `Ava Tour`
  String get ava_tour {
    return Intl.message(
      'Ava Tour',
      name: 'ava_tour',
      desc: '',
      args: [],
    );
  }

  /// `Special Passenger Club`
  String get special_passenger_club {
    return Intl.message(
      'Special Passenger Club',
      name: 'special_passenger_club',
      desc: '',
      args: [],
    );
  }

  /// `Version 1.0`
  String get version {
    return Intl.message(
      'Version 1.0',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `EN`
  String get language {
    return Intl.message(
      'EN',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Your Special Destinations`
  String get special_fares {
    return Intl.message(
      'Your Special Destinations',
      name: 'special_fares',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get about_us {
    return Intl.message(
      'About Us',
      name: 'about_us',
      desc: '',
      args: [],
    );
  }

  /// `Ava With Your Peace`
  String get ava_with_you {
    return Intl.message(
      'Ava With Your Peace',
      name: 'ava_with_you',
      desc: '',
      args: [],
    );
  }

  /// `The expertise and commitment of all Ava Airlines employees provide you with a calm flight experience.`
  String get special_trip {
    return Intl.message(
      'The expertise and commitment of all Ava Airlines employees provide you with a calm flight experience.',
      name: 'special_trip',
      desc: '',
      args: [],
    );
  }

  /// `No Delay`
  String get no_delay {
    return Intl.message(
      'No Delay',
      name: 'no_delay',
      desc: '',
      args: [],
    );
  }

  /// `Ava Airlines strives to minimize flight delays.`
  String get minimize_delay {
    return Intl.message(
      'Ava Airlines strives to minimize flight delays.',
      name: 'minimize_delay',
      desc: '',
      args: [],
    );
  }

  /// `Professional Staff`
  String get professional_staff {
    return Intl.message(
      'Professional Staff',
      name: 'professional_staff',
      desc: '',
      args: [],
    );
  }

  /// `The commitment and expertise of Ava Airlines staff are a reliable support for your flights.`
  String get reliable_flight {
    return Intl.message(
      'The commitment and expertise of Ava Airlines staff are a reliable support for your flights.',
      name: 'reliable_flight',
      desc: '',
      args: [],
    );
  }

  /// `Special Services`
  String get special_services {
    return Intl.message(
      'Special Services',
      name: 'special_services',
      desc: '',
      args: [],
    );
  }

  /// `With Ava Airlines' special services, you will experience a different sense of flight.`
  String get different_experience {
    return Intl.message(
      'With Ava Airlines\' special services, you will experience a different sense of flight.',
      name: 'different_experience',
      desc: '',
      args: [],
    );
  }

  /// `Ava Airlines started its activities in 1402. The headquarters of Ava Airlines is located in Tehran, Ayatollah Kashani Street. Our vision is to create a platform that can best meet the needs of our esteemed passengers and provide you with a worthy experience.`
  String get special_services_description {
    return Intl.message(
      'Ava Airlines started its activities in 1402. The headquarters of Ava Airlines is located in Tehran, Ayatollah Kashani Street. Our vision is to create a platform that can best meet the needs of our esteemed passengers and provide you with a worthy experience.',
      name: 'special_services_description',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `My Travels`
  String get my_travels {
    return Intl.message(
      'My Travels',
      name: 'my_travels',
      desc: '',
      args: [],
    );
  }

  /// `Round Trip`
  String get roundTrip {
    return Intl.message(
      'Round Trip',
      name: 'roundTrip',
      desc: '',
      args: [],
    );
  }

  /// `Online check-in (24 hours before flight)`
  String get onlineCheckIn {
    return Intl.message(
      'Online check-in (24 hours before flight)',
      name: 'onlineCheckIn',
      desc: '',
      args: [],
    );
  }

  /// `Reservation number or ticket number`
  String get reservationOrTicketNumber {
    return Intl.message(
      'Reservation number or ticket number',
      name: 'reservationOrTicketNumber',
      desc: '',
      args: [],
    );
  }

  /// `Flight number`
  String get flightNumber {
    return Intl.message(
      'Flight number',
      name: 'flightNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please register to view upcoming trips.`
  String get registerToViewTrips {
    return Intl.message(
      'Please register to view upcoming trips.',
      name: 'registerToViewTrips',
      desc: '',
      args: [],
    );
  }

  /// `Reservation number`
  String get reservationNumber {
    return Intl.message(
      'Reservation number',
      name: 'reservationNumber',
      desc: '',
      args: [],
    );
  }

  /// `Passenger's last name`
  String get passengerLastName {
    return Intl.message(
      'Passenger\'s last name',
      name: 'passengerLastName',
      desc: '',
      args: [],
    );
  }

  /// `Flight date`
  String get flightDate {
    return Intl.message(
      'Flight date',
      name: 'flightDate',
      desc: '',
      args: [],
    );
  }

  /// `Label`
  String get labelText {
    return Intl.message(
      'Label',
      name: 'labelText',
      desc: '',
      args: [],
    );
  }

  /// `Search for a city`
  String get citySearchPlaceholder {
    return Intl.message(
      'Search for a city',
      name: 'citySearchPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Origin`
  String get origin {
    return Intl.message(
      'Origin',
      name: 'origin',
      desc: '',
      args: [],
    );
  }

  /// `Destination`
  String get destination {
    return Intl.message(
      'Destination',
      name: 'destination',
      desc: '',
      args: [],
    );
  }

  /// `Departure date`
  String get departureDate {
    return Intl.message(
      'Departure date',
      name: 'departureDate',
      desc: '',
      args: [],
    );
  }

  /// `Return Date`
  String get returnDate {
    return Intl.message(
      'Return Date',
      name: 'returnDate',
      desc: '',
      args: [],
    );
  }

  /// `1 passenger`
  String get hintTextPassenger {
    return Intl.message(
      '1 passenger',
      name: 'hintTextPassenger',
      desc: '',
      args: [],
    );
  }

  /// `Passengers {count}`
  String passengersCount(Object count) {
    return Intl.message(
      'Passengers $count',
      name: 'passengersCount',
      desc: '',
      args: [count],
    );
  }

  /// `Search Results`
  String get searchResults {
    return Intl.message(
      'Search Results',
      name: 'searchResults',
      desc: '',
      args: [],
    );
  }

  /// `Tue 9 Jul 24`
  String get sampleDate {
    return Intl.message(
      'Tue 9 Jul 24',
      name: 'sampleDate',
      desc: '',
      args: [],
    );
  }

  /// `14:30`
  String get sampleTime1 {
    return Intl.message(
      '14:30',
      name: 'sampleTime1',
      desc: '',
      args: [],
    );
  }

  /// `18:45`
  String get sampleTime2 {
    return Intl.message(
      '18:45',
      name: 'sampleTime2',
      desc: '',
      args: [],
    );
  }

  /// `Choose`
  String get choose {
    return Intl.message(
      'Choose',
      name: 'choose',
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
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'fa'),
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
