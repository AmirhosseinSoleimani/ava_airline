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

  /// `AVA Airlines`
  String get appTitle {
    return Intl.message(
      'AVA Airlines',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Flight Selection`
  String get flightSelection {
    return Intl.message(
      'Flight Selection',
      name: 'flightSelection',
      desc: '',
      args: [],
    );
  }

  /// `Passenger Information`
  String get passengerInformation {
    return Intl.message(
      'Passenger Information',
      name: 'passengerInformation',
      desc: '',
      args: [],
    );
  }

  /// `Special Services`
  String get specialServices {
    return Intl.message(
      'Special Services',
      name: 'specialServices',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation and Payment`
  String get confirmationAndPayment {
    return Intl.message(
      'Confirmation and Payment',
      name: 'confirmationAndPayment',
      desc: '',
      args: [],
    );
  }

  /// `Number of Passengers`
  String get numberOfPassengers {
    return Intl.message(
      'Number of Passengers',
      name: 'numberOfPassengers',
      desc: '',
      args: [],
    );
  }

  /// `Change Search`
  String get changeSearch {
    return Intl.message(
      'Change Search',
      name: 'changeSearch',
      desc: '',
      args: [],
    );
  }

  /// `Systemic`
  String get systemic {
    return Intl.message(
      'Systemic',
      name: 'systemic',
      desc: '',
      args: [],
    );
  }

  /// `Economy`
  String get economy {
    return Intl.message(
      'Economy',
      name: 'economy',
      desc: '',
      args: [],
    );
  }

  /// `Flight Information`
  String get flightInformation {
    return Intl.message(
      'Flight Information',
      name: 'flightInformation',
      desc: '',
      args: [],
    );
  }

  /// `Refund Policies`
  String get refundPolicies {
    return Intl.message(
      'Refund Policies',
      name: 'refundPolicies',
      desc: '',
      args: [],
    );
  }

  /// `Select Flight`
  String get selectFlight {
    return Intl.message(
      'Select Flight',
      name: 'selectFlight',
      desc: '',
      args: [],
    );
  }

  /// `Official Airline Rate`
  String get officialAirlineRate {
    return Intl.message(
      'Official Airline Rate',
      name: 'officialAirlineRate',
      desc: '',
      args: [],
    );
  }

  /// `Rial`
  String get currency {
    return Intl.message(
      'Rial',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `Ava Airlines started its activity in 2023 with the aim of providing the highest quality flight services. Our goal is to help improve the quality of the country's aviation to enhance the experience of our dear passengers from their flights.`
  String get company_description {
    return Intl.message(
      'Ava Airlines started its activity in 2023 with the aim of providing the highest quality flight services. Our goal is to help improve the quality of the country\'s aviation to enhance the experience of our dear passengers from their flights.',
      name: 'company_description',
      desc: '',
      args: [],
    );
  }

  /// `Quick Access`
  String get quick_access {
    return Intl.message(
      'Quick Access',
      name: 'quick_access',
      desc: '',
      args: [],
    );
  }

  /// `Register Complaint`
  String get register_complaint {
    return Intl.message(
      'Register Complaint',
      name: 'register_complaint',
      desc: '',
      args: [],
    );
  }

  /// `Job Opportunities`
  String get job_opportunities {
    return Intl.message(
      'Job Opportunities',
      name: 'job_opportunities',
      desc: '',
      args: [],
    );
  }

  /// `Rules and Regulations`
  String get rules_and_regulations {
    return Intl.message(
      'Rules and Regulations',
      name: 'rules_and_regulations',
      desc: '',
      args: [],
    );
  }

  /// `Safety Report & Follow-up`
  String get safety_report_followup {
    return Intl.message(
      'Safety Report & Follow-up',
      name: 'safety_report_followup',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact_us {
    return Intl.message(
      'Contact Us',
      name: 'contact_us',
      desc: '',
      args: [],
    );
  }

  /// `021-9200-1100`
  String get phone_number {
    return Intl.message(
      '021-9200-1100',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `info@avaair.ir`
  String get email {
    return Intl.message(
      'info@avaair.ir',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Head Office: Tehran, Ferdows, Ayatollah Kashani Blvd., Saleh Jharomi Crossroad, No. 186, 5th Floor`
  String get address {
    return Intl.message(
      'Head Office: Tehran, Ferdows, Ayatollah Kashani Blvd., Saleh Jharomi Crossroad, No. 186, 5th Floor',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `All rights of the website are owned by Behpardaz Jahan Company.`
  String get all_rights_reserved {
    return Intl.message(
      'All rights of the website are owned by Behpardaz Jahan Company.',
      name: 'all_rights_reserved',
      desc: '',
      args: [],
    );
  }

  /// `Color`
  String get navbar_component_color {
    return Intl.message(
      'Color',
      name: 'navbar_component_color',
      desc: '',
      args: [],
    );
  }

  /// `Tehran (Mehrabad)`
  String get origin_city {
    return Intl.message(
      'Tehran (Mehrabad)',
      name: 'origin_city',
      desc: '',
      args: [],
    );
  }

  /// `Mashhad (Hashemi Nejad)`
  String get destination_city {
    return Intl.message(
      'Mashhad (Hashemi Nejad)',
      name: 'destination_city',
      desc: '',
      args: [],
    );
  }

  /// `Flight Date`
  String get flight_date {
    return Intl.message(
      'Flight Date',
      name: 'flight_date',
      desc: '',
      args: [],
    );
  }

  /// `August 30, 2024`
  String get flight_date_value {
    return Intl.message(
      'August 30, 2024',
      name: 'flight_date_value',
      desc: '',
      args: [],
    );
  }

  /// `Passenger Count`
  String get passenger_count {
    return Intl.message(
      'Passenger Count',
      name: 'passenger_count',
      desc: '',
      args: [],
    );
  }

  /// `1 Passenger`
  String get passenger_count_value {
    return Intl.message(
      '1 Passenger',
      name: 'passenger_count_value',
      desc: '',
      args: [],
    );
  }

  /// `Payable Amount`
  String get payable_amount {
    return Intl.message(
      'Payable Amount',
      name: 'payable_amount',
      desc: '',
      args: [],
    );
  }

  /// `1,365,770 Toman`
  String get payable_amount_value {
    return Intl.message(
      '1,365,770 Toman',
      name: 'payable_amount_value',
      desc: '',
      args: [],
    );
  }

  /// `Passenger Details`
  String get passenger_details {
    return Intl.message(
      'Passenger Details',
      name: 'passenger_details',
      desc: '',
      args: [],
    );
  }

  /// `Latin First Name`
  String get latin_first_name {
    return Intl.message(
      'Latin First Name',
      name: 'latin_first_name',
      desc: '',
      args: [],
    );
  }

  /// `Latin Last Name`
  String get latin_last_name {
    return Intl.message(
      'Latin Last Name',
      name: 'latin_last_name',
      desc: '',
      args: [],
    );
  }

  /// `National ID`
  String get national_id {
    return Intl.message(
      'National ID',
      name: 'national_id',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message(
      'Select',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Birth Date`
  String get birth_date {
    return Intl.message(
      'Birth Date',
      name: 'birth_date',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select_option {
    return Intl.message(
      'Select',
      name: 'select_option',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get next {
    return Intl.message(
      'Continue',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `All website rights belong to Behpajoohan Company`
  String get footer_text {
    return Intl.message(
      'All website rights belong to Behpajoohan Company',
      name: 'footer_text',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get gender_male {
    return Intl.message(
      'Male',
      name: 'gender_male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get gender_female {
    return Intl.message(
      'Female',
      name: 'gender_female',
      desc: '',
      args: [],
    );
  }

  /// `Unspecified`
  String get gender_unspecified {
    return Intl.message(
      'Unspecified',
      name: 'gender_unspecified',
      desc: '',
      args: [],
    );
  }

  /// `Special Services Page`
  String get specialServicesPageName {
    return Intl.message(
      'Special Services Page',
      name: 'specialServicesPageName',
      desc: '',
      args: [],
    );
  }

  /// `/special-services-page`
  String get specialServicesPagePath {
    return Intl.message(
      '/special-services-page',
      name: 'specialServicesPagePath',
      desc: '',
      args: [],
    );
  }

  /// `Select Flight`
  String get select_flight {
    return Intl.message(
      'Select Flight',
      name: 'select_flight',
      desc: '',
      args: [],
    );
  }

  /// `Passenger Information`
  String get passenger_information {
    return Intl.message(
      'Passenger Information',
      name: 'passenger_information',
      desc: '',
      args: [],
    );
  }

  /// `Confirm and Pay`
  String get confirm_and_pay {
    return Intl.message(
      'Confirm and Pay',
      name: 'confirm_and_pay',
      desc: '',
      args: [],
    );
  }

  /// `Service`
  String get service {
    return Intl.message(
      'Service',
      name: 'service',
      desc: '',
      args: [],
    );
  }

  /// `Tehran to Mashhad`
  String get flight_route {
    return Intl.message(
      'Tehran to Mashhad',
      name: 'flight_route',
      desc: '',
      args: [],
    );
  }

  /// `Blind`
  String get blind {
    return Intl.message(
      'Blind',
      name: 'blind',
      desc: '',
      args: [],
    );
  }

  /// `Deaf`
  String get deaf {
    return Intl.message(
      'Deaf',
      name: 'deaf',
      desc: '',
      args: [],
    );
  }

  /// `Wheelchair in all phases`
  String get wheelchair_full {
    return Intl.message(
      'Wheelchair in all phases',
      name: 'wheelchair_full',
      desc: '',
      args: [],
    );
  }

  /// `Lift instead of wheelchair`
  String get lift_instead_of_wheelchair {
    return Intl.message(
      'Lift instead of wheelchair',
      name: 'lift_instead_of_wheelchair',
      desc: '',
      args: [],
    );
  }

  /// `Wheelchair in map`
  String get wheelchair_in_map {
    return Intl.message(
      'Wheelchair in map',
      name: 'wheelchair_in_map',
      desc: '',
      args: [],
    );
  }

  /// `Passenger Information`
  String get passengerInfo {
    return Intl.message(
      'Passenger Information',
      name: 'passengerInfo',
      desc: '',
      args: [],
    );
  }

  /// `Confirm and Pay`
  String get confirmAndPay {
    return Intl.message(
      'Confirm and Pay',
      name: 'confirmAndPay',
      desc: '',
      args: [],
    );
  }

  /// `You can avail special flight services`
  String get specialServicesText {
    return Intl.message(
      'You can avail special flight services',
      name: 'specialServicesText',
      desc: '',
      args: [],
    );
  }

  /// `Ticket Information`
  String get ticketInfo {
    return Intl.message(
      'Ticket Information',
      name: 'ticketInfo',
      desc: '',
      args: [],
    );
  }

  /// `Airline Company`
  String get airlineCompany {
    return Intl.message(
      'Airline Company',
      name: 'airlineCompany',
      desc: '',
      args: [],
    );
  }

  /// `Flight Class`
  String get flightClass {
    return Intl.message(
      'Flight Class',
      name: 'flightClass',
      desc: '',
      args: [],
    );
  }

  /// `Allowed Baggage`
  String get allowedBaggage {
    return Intl.message(
      'Allowed Baggage',
      name: 'allowedBaggage',
      desc: '',
      args: [],
    );
  }

  /// `Passenger Details`
  String get passengerDetails {
    return Intl.message(
      'Passenger Details',
      name: 'passengerDetails',
      desc: '',
      args: [],
    );
  }

  /// `Age Group`
  String get ageGroup {
    return Intl.message(
      'Age Group',
      name: 'ageGroup',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `National ID`
  String get nationalId {
    return Intl.message(
      'National ID',
      name: 'nationalId',
      desc: '',
      args: [],
    );
  }

  /// `Birth Date`
  String get birthDate {
    return Intl.message(
      'Birth Date',
      name: 'birthDate',
      desc: '',
      args: [],
    );
  }

  /// `Nationality`
  String get nationality {
    return Intl.message(
      'Nationality',
      name: 'nationality',
      desc: '',
      args: [],
    );
  }

  /// `Adult`
  String get adult {
    return Intl.message(
      'Adult',
      name: 'adult',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Travel Services`
  String get travelServices {
    return Intl.message(
      'Travel Services',
      name: 'travelServices',
      desc: '',
      args: [],
    );
  }

  /// `Normal Refund`
  String get normalRefund {
    return Intl.message(
      'Normal Refund',
      name: 'normalRefund',
      desc: '',
      args: [],
    );
  }

  /// `Discount Code`
  String get discountCode {
    return Intl.message(
      'Discount Code',
      name: 'discountCode',
      desc: '',
      args: [],
    );
  }

  /// `If you have a discount code, enter it below and click Apply.`
  String get enterDiscountCode {
    return Intl.message(
      'If you have a discount code, enter it below and click Apply.',
      name: 'enterDiscountCode',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get applyCode {
    return Intl.message(
      'Apply',
      name: 'applyCode',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `When paying using your balance, in case of a refund, the refundable amount will be returned to your account balance.`
  String get paymentInfo {
    return Intl.message(
      'When paying using your balance, in case of a refund, the refundable amount will be returned to your account balance.',
      name: 'paymentInfo',
      desc: '',
      args: [],
    );
  }

  /// `Payable Amount`
  String get payableAmount {
    return Intl.message(
      'Payable Amount',
      name: 'payableAmount',
      desc: '',
      args: [],
    );
  }

  /// `13,267,000 Rials`
  String get payAmount {
    return Intl.message(
      '13,267,000 Rials',
      name: 'payAmount',
      desc: '',
      args: [],
    );
  }

  /// `Mashhad Pilgrimage Trip`
  String get mashhadSpecialFaresPageTitle {
    return Intl.message(
      'Mashhad Pilgrimage Trip',
      name: 'mashhadSpecialFaresPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mashhad city, located in Khorasan Razavi province, is considered one of the historical and religious provinces of Iran. This city annually hosts about 27 million domestic and foreign travelers who travel to this place for pilgrimage and religious ceremonies. The main reason for this volume of passengers and tourists is the shrine of Imam Reza (AS) in Mashhad. This city is also culturally very rich.`
  String get mashhadSpecialFaresParagraph1 {
    return Intl.message(
      'Mashhad city, located in Khorasan Razavi province, is considered one of the historical and religious provinces of Iran. This city annually hosts about 27 million domestic and foreign travelers who travel to this place for pilgrimage and religious ceremonies. The main reason for this volume of passengers and tourists is the shrine of Imam Reza (AS) in Mashhad. This city is also culturally very rich.',
      name: 'mashhadSpecialFaresParagraph1',
      desc: '',
      args: [],
    );
  }

  /// `The tomb of many great religious, poetic and literary figures such as Ferdowsi, who has had a significant impact on the culture and language of Iranians, is located in this city and its suburbs. All of these have made Mashhad a modern city in recent years, so much so that diverse and advanced recreational, tourism and commercial centers are now found everywhere in it.`
  String get mashhadSpecialFaresParagraph2 {
    return Intl.message(
      'The tomb of many great religious, poetic and literary figures such as Ferdowsi, who has had a significant impact on the culture and language of Iranians, is located in this city and its suburbs. All of these have made Mashhad a modern city in recent years, so much so that diverse and advanced recreational, tourism and commercial centers are now found everywhere in it.',
      name: 'mashhadSpecialFaresParagraph2',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Flight Status Update`
  String get title1 {
    return Intl.message(
      'Flight Status Update',
      name: 'title1',
      desc: '',
      args: [],
    );
  }

  /// `Your flight AV123 has been delayed by 30 minutes.`
  String get message1 {
    return Intl.message(
      'Your flight AV123 has been delayed by 30 minutes.',
      name: 'message1',
      desc: '',
      args: [],
    );
  }

  /// `Promotion`
  String get title2 {
    return Intl.message(
      'Promotion',
      name: 'title2',
      desc: '',
      args: [],
    );
  }

  /// `Get 20% off on your next flight booking!`
  String get message2 {
    return Intl.message(
      'Get 20% off on your next flight booking!',
      name: 'message2',
      desc: '',
      args: [],
    );
  }

  /// `Check-in Reminder`
  String get title3 {
    return Intl.message(
      'Check-in Reminder',
      name: 'title3',
      desc: '',
      args: [],
    );
  }

  /// `Check-in is now open for your flight AV456.`
  String get message3 {
    return Intl.message(
      'Check-in is now open for your flight AV456.',
      name: 'message3',
      desc: '',
      args: [],
    );
  }

  /// `Flight Status Update`
  String get title4 {
    return Intl.message(
      'Flight Status Update',
      name: 'title4',
      desc: '',
      args: [],
    );
  }

  /// `Your flight AV789 is now boarding at Gate 5.`
  String get message4 {
    return Intl.message(
      'Your flight AV789 is now boarding at Gate 5.',
      name: 'message4',
      desc: '',
      args: [],
    );
  }

  /// `Promotion`
  String get title5 {
    return Intl.message(
      'Promotion',
      name: 'title5',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade to Business Class with a 50% discount!`
  String get message5 {
    return Intl.message(
      'Upgrade to Business Class with a 50% discount!',
      name: 'message5',
      desc: '',
      args: [],
    );
  }

  /// `Miles flown`
  String get milesFlown {
    return Intl.message(
      'Miles flown',
      name: 'milesFlown',
      desc: '',
      args: [],
    );
  }

  /// `Gold`
  String get gold {
    return Intl.message(
      'Gold',
      name: 'gold',
      desc: '',
      args: [],
    );
  }

  /// `Tier`
  String get tier {
    return Intl.message(
      'Tier',
      name: 'tier',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Choose your gender`
  String get chooseGender {
    return Intl.message(
      'Choose your gender',
      name: 'chooseGender',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continuee {
    return Intl.message(
      'Continue',
      name: 'continuee',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get none {
    return Intl.message(
      'None',
      name: 'none',
      desc: '',
      args: [],
    );
  }

  /// `Passengers with Special Needs/Wheelchair`
  String get incapacitatedPassengerWheelchairPageTitle {
    return Intl.message(
      'Passengers with Special Needs/Wheelchair',
      name: 'incapacitatedPassengerWheelchairPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Special services for a hassle-free trip`
  String get incapacitatedPassengerWheelchairPageSubtitle {
    return Intl.message(
      'Special services for a hassle-free trip',
      name: 'incapacitatedPassengerWheelchairPageSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Blind and Deaf Passengers`
  String get blindDeafTitle {
    return Intl.message(
      'Blind and Deaf Passengers',
      name: 'blindDeafTitle',
      desc: '',
      args: [],
    );
  }

  /// `These passengers do not need to provide a medical certificate. In case of group travel, providing a permit for coordination, the presence of a healthy, capable, and same-language companion for these passengers is necessary throughout the journey. Accompanying these passengers by Mahan Airlines personnel is not subject to a fee.`
  String get blindDeafDescription {
    return Intl.message(
      'These passengers do not need to provide a medical certificate. In case of group travel, providing a permit for coordination, the presence of a healthy, capable, and same-language companion for these passengers is necessary throughout the journey. Accompanying these passengers by Mahan Airlines personnel is not subject to a fee.',
      name: 'blindDeafDescription',
      desc: '',
      args: [],
    );
  }

  /// `Wheelchair`
  String get wheelchairTitle {
    return Intl.message(
      'Wheelchair',
      name: 'wheelchairTitle',
      desc: '',
      args: [],
    );
  }

  /// `According to Mahan Airlines regulations and the capacity of each aircraft, only passengers who have registered their cabin wheelchair request through the reservation system and have the SSR code on their ticket are eligible to be accepted at the airport and use the wheelchair. Passengers who need a wheelchair without a medical certificate must register their request when booking their ticket. Passengers can use their personal wheelchair until boarding the aircraft. It is worth noting that if the capacity is full, registering a wheelchair request is not possible.`
  String get wheelchairDescription {
    return Intl.message(
      'According to Mahan Airlines regulations and the capacity of each aircraft, only passengers who have registered their cabin wheelchair request through the reservation system and have the SSR code on their ticket are eligible to be accepted at the airport and use the wheelchair. Passengers who need a wheelchair without a medical certificate must register their request when booking their ticket. Passengers can use their personal wheelchair until boarding the aircraft. It is worth noting that if the capacity is full, registering a wheelchair request is not possible.',
      name: 'wheelchairDescription',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get noteTitle {
    return Intl.message(
      'Note',
      name: 'noteTitle',
      desc: '',
      args: [],
    );
  }

  /// `On Embraer ERJ-145 aircraft, these services are exempt from this rule. Accepting passengers with special needs and pregnant women in the business class cabin of Boeing 747 aircraft is not possible. Therefore, please ensure the type of aircraft before purchasing.`
  String get noteDescription {
    return Intl.message(
      'On Embraer ERJ-145 aircraft, these services are exempt from this rule. Accepting passengers with special needs and pregnant women in the business class cabin of Boeing 747 aircraft is not possible. Therefore, please ensure the type of aircraft before purchasing.',
      name: 'noteDescription',
      desc: '',
      args: [],
    );
  }

  /// `Battery-Powered Wheelchairs`
  String get batteryWheelchairTitle {
    return Intl.message(
      'Battery-Powered Wheelchairs',
      name: 'batteryWheelchairTitle',
      desc: '',
      args: [],
    );
  }

  /// `Wheelchairs or other mobility aids with wet or dry batteries are transported in the aircraft's cargo hold with the battery protected against short circuits, safely packaged, and approved by Mahan Airlines representative. (If the battery is removable, the detached battery is carried in a resistant package in the aircraft's hold).`
  String get batteryWheelchairDescription {
    return Intl.message(
      'Wheelchairs or other mobility aids with wet or dry batteries are transported in the aircraft\'s cargo hold with the battery protected against short circuits, safely packaged, and approved by Mahan Airlines representative. (If the battery is removable, the detached battery is carried in a resistant package in the aircraft\'s hold).',
      name: 'batteryWheelchairDescription',
      desc: '',
      args: [],
    );
  }

  /// `Wheelchairs with lithium-ion batteries with a maximum capacity of 300 W/H or two batteries with a maximum capacity of 160 W/H, after packaging and approval by Mahan Airlines representative, are only carried in the passenger cabin.`
  String get batteryDescription2 {
    return Intl.message(
      'Wheelchairs with lithium-ion batteries with a maximum capacity of 300 W/H or two batteries with a maximum capacity of 160 W/H, after packaging and approval by Mahan Airlines representative, are only carried in the passenger cabin.',
      name: 'batteryDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Wheelchair Service Cost`
  String get wheelchairServiceCostTitle {
    return Intl.message(
      'Wheelchair Service Cost',
      name: 'wheelchairServiceCostTitle',
      desc: '',
      args: [],
    );
  }

  /// `International flight from Iran 1,000,000 IRR`
  String get internationalFlightCost {
    return Intl.message(
      'International flight from Iran 1,000,000 IRR',
      name: 'internationalFlightCost',
      desc: '',
      args: [],
    );
  }

  /// `International flight to Iran 40 USD`
  String get toIranFlightCost {
    return Intl.message(
      'International flight to Iran 40 USD',
      name: 'toIranFlightCost',
      desc: '',
      args: [],
    );
  }

  /// `Dubai to Iran flight 150 AED (with SSR registration)`
  String get dubaiToIranFlightCost {
    return Intl.message(
      'Dubai to Iran flight 150 AED (with SSR registration)',
      name: 'dubaiToIranFlightCost',
      desc: '',
      args: [],
    );
  }

  /// `Holders of veterans, disabled, and martyr families cards, as well as passengers on Hajj and Atabat flights, EU citizens, and individuals over 65 years old are exempt from payment.`
  String get exemptionsDescription {
    return Intl.message(
      'Holders of veterans, disabled, and martyr families cards, as well as passengers on Hajj and Atabat flights, EU citizens, and individuals over 65 years old are exempt from payment.',
      name: 'exemptionsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Car rental`
  String get carRental {
    return Intl.message(
      'Car rental',
      name: 'carRental',
      desc: '',
      args: [],
    );
  }

  /// `The city of Mashhad and Agha in Razavi Khorasan province is considered one of the historical and religious provinces of Iran. This city annually hosts about 27 million domestic and foreign travelers who travel to this place for pilgrimage and religious ceremonies. The main reason for this volume of travelers and tourists is the existence of the court of Imam Reza (a.s.) in the city of Mashhad. This city is culturally very rich. The city of Mashhad and Agha in Razavi Khorasan province is considered one of the historical and religious provinces of Iran. This city annually hosts about 27 million domestic and foreign travelers who travel to this place for pilgrimage and religious ceremonies. The main reason for this volume of travelers and tourists is the existence of the court of Imam Reza (a.s.) in the city of Mashhad. This city is culturally very rich.`
  String get mashhad1 {
    return Intl.message(
      'The city of Mashhad and Agha in Razavi Khorasan province is considered one of the historical and religious provinces of Iran. This city annually hosts about 27 million domestic and foreign travelers who travel to this place for pilgrimage and religious ceremonies. The main reason for this volume of travelers and tourists is the existence of the court of Imam Reza (a.s.) in the city of Mashhad. This city is culturally very rich. The city of Mashhad and Agha in Razavi Khorasan province is considered one of the historical and religious provinces of Iran. This city annually hosts about 27 million domestic and foreign travelers who travel to this place for pilgrimage and religious ceremonies. The main reason for this volume of travelers and tourists is the existence of the court of Imam Reza (a.s.) in the city of Mashhad. This city is culturally very rich.',
      name: 'mashhad1',
      desc: '',
      args: [],
    );
  }

  /// `The tomb of many religious, poetry and literature greats such as Ferdowsi, who had a significant impact on Iranian culture and language, is located in this city and its suburbs. All these have made Mashhad become a modern city in recent years, so that there are various and advanced entertainment, tourism and commercial centers in its place.`
  String get mashhad2 {
    return Intl.message(
      'The tomb of many religious, poetry and literature greats such as Ferdowsi, who had a significant impact on Iranian culture and language, is located in this city and its suburbs. All these have made Mashhad become a modern city in recent years, so that there are various and advanced entertainment, tourism and commercial centers in its place.',
      name: 'mashhad2',
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
