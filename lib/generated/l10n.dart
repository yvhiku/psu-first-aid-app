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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to PGU First Aid`
  String get tWelcomeTitle {
    return Intl.message(
      'Welcome to PGU First Aid',
      name: 'tWelcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your Quick Guide to First Aid & Emergency Care!`
  String get tWelcomeSubTitle {
    return Intl.message(
      'Your Quick Guide to First Aid & Emergency Care!',
      name: 'tWelcomeSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get tLogin {
    return Intl.message('Login', name: 'tLogin', desc: '', args: []);
  }

  /// ` Sign Up`
  String get tSignUP {
    return Intl.message(' Sign Up', name: 'tSignUP', desc: '', args: []);
  }

  /// `Register Now!,`
  String get tLoginTitle {
    return Intl.message(
      'Register Now!,',
      name: 'tLoginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Seconds Save Lives, Be Prepared`
  String get tLoginSubTitle {
    return Intl.message(
      'Seconds Save Lives, Be Prepared',
      name: 'tLoginSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Remember Me?`
  String get tRememberMe {
    return Intl.message(
      'Remember Me?',
      name: 'tRememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Already have an Account?`
  String get tAlreadyHaveAnAccount {
    return Intl.message(
      'Already have an Account?',
      name: 'tAlreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an Account? `
  String get tDontHaveAnAccount {
    return Intl.message(
      'Don\'t have an Account? ',
      name: 'tDontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `E-Mail`
  String get tEmail {
    return Intl.message('E-Mail', name: 'tEmail', desc: '', args: []);
  }

  /// `fikri@example.ru`
  String get tHint {
    return Intl.message('fikri@example.ru', name: 'tHint', desc: '', args: []);
  }

  /// `Password`
  String get tPassword {
    return Intl.message('Password', name: 'tPassword', desc: '', args: []);
  }

  /// `************`
  String get tHintPassword {
    return Intl.message(
      '************',
      name: 'tHintPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get tForgot {
    return Intl.message(
      'Forgot Password?',
      name: 'tForgot',
      desc: '',
      args: [],
    );
  }

  /// `Sign-in With Google`
  String get tSignInWithGoogle {
    return Intl.message(
      'Sign-in With Google',
      name: 'tSignInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Be Ready.`
  String get tSignUpTitle {
    return Intl.message('Be Ready.', name: 'tSignUpTitle', desc: '', args: []);
  }

  /// `Be prepared for emergencies. Create an account to unlock life-saving features.`
  String get tSignUpSubTitle {
    return Intl.message(
      'Be prepared for emergencies. Create an account to unlock life-saving features.',
      name: 'tSignUpSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get tFullname {
    return Intl.message('Full Name', name: 'tFullname', desc: '', args: []);
  }

  /// `Confirm Password`
  String get tConfirmPass {
    return Intl.message(
      'Confirm Password',
      name: 'tConfirmPass',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get tPhoneNum {
    return Intl.message('Phone Number', name: 'tPhoneNum', desc: '', args: []);
  }

  /// `Choose method to reset your password`
  String get tChooseMethod {
    return Intl.message(
      'Choose method to reset your password',
      name: 'tChooseMethod',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get tForgotpass {
    return Intl.message(
      'Forgot Password?',
      name: 'tForgotpass',
      desc: '',
      args: [],
    );
  }

  /// `Make Selection!`
  String get tForgetTitle {
    return Intl.message(
      'Make Selection!',
      name: 'tForgetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select one of the options bellow to reset your password`
  String get tForgetSubTitle {
    return Intl.message(
      'Select one of the options bellow to reset your password',
      name: 'tForgetSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Reset via E-mail Verification`
  String get tResetEmail {
    return Intl.message(
      'Reset via E-mail Verification',
      name: 'tResetEmail',
      desc: '',
      args: [],
    );
  }

  /// `Reset via Phone Verification`
  String get tResetPhone {
    return Intl.message(
      'Reset via Phone Verification',
      name: 'tResetPhone',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email to reset your password`
  String get tForgetEmailSubTitle {
    return Intl.message(
      'Enter your email to reset your password',
      name: 'tForgetEmailSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Number to reset your password`
  String get tForgetPhoneSubTitle {
    return Intl.message(
      'Enter your Number to reset your password',
      name: 'tForgetPhoneSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Need Help?`
  String get tNeedHelp {
    return Intl.message('Need Help?', name: 'tNeedHelp', desc: '', args: []);
  }

  /// `Contact Support`
  String get tContactSupport {
    return Intl.message(
      'Contact Support',
      name: 'tContactSupport',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get tOtpSubTitle {
    return Intl.message(
      'Verification',
      name: 'tOtpSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your verification code`
  String get tOtpMessage {
    return Intl.message(
      'Enter your verification code',
      name: 'tOtpMessage',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get tNext {
    return Intl.message('Next', name: 'tNext', desc: '', args: []);
  }

  /// `OTP Verification`
  String get tOtpTitle {
    return Intl.message(
      'OTP Verification',
      name: 'tOtpTitle',
      desc: '',
      args: [],
    );
  }

  /// `VERIFY`
  String get tVerify {
    return Intl.message('VERIFY', name: 'tVerify', desc: '', args: []);
  }

  /// `Emergency Number`
  String get tEmergencyNum {
    return Intl.message(
      'Emergency Number',
      name: 'tEmergencyNum',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get tHome {
    return Intl.message('Home', name: 'tHome', desc: '', args: []);
  }

  /// `Topics`
  String get tTopics {
    return Intl.message('Topics', name: 'tTopics', desc: '', args: []);
  }

  /// `Saved`
  String get tSaved {
    return Intl.message('Saved', name: 'tSaved', desc: '', args: []);
  }

  /// `Profile`
  String get tProfile {
    return Intl.message('Profile', name: 'tProfile', desc: '', args: []);
  }

  /// `CPR`
  String get tCpr {
    return Intl.message('CPR', name: 'tCpr', desc: '', args: []);
  }

  /// `Bleeding`
  String get tBleeding {
    return Intl.message('Bleeding', name: 'tBleeding', desc: '', args: []);
  }

  /// `Burns`
  String get tBurns {
    return Intl.message('Burns', name: 'tBurns', desc: '', args: []);
  }

  /// `Choking`
  String get tChoking {
    return Intl.message('Choking', name: 'tChoking', desc: '', args: []);
  }

  /// `Poisons`
  String get tPoisons {
    return Intl.message('Poisons', name: 'tPoisons', desc: '', args: []);
  }

  /// `Bites`
  String get tBites {
    return Intl.message('Bites', name: 'tBites', desc: '', args: []);
  }

  /// `Allergic Reaction`
  String get tAllergicReaction {
    return Intl.message(
      'Allergic Reaction',
      name: 'tAllergicReaction',
      desc: '',
      args: [],
    );
  }

  /// `Asthma`
  String get tAsthma {
    return Intl.message('Asthma', name: 'tAsthma', desc: '', args: []);
  }

  /// `Diabetics`
  String get tDiabetics {
    return Intl.message('Diabetics', name: 'tDiabetics', desc: '', args: []);
  }

  /// `Drug Overdose`
  String get tDrugOverdose {
    return Intl.message(
      'Drug Overdose',
      name: 'tDrugOverdose',
      desc: '',
      args: [],
    );
  }

  /// `Eye Injury`
  String get tEyeInjury {
    return Intl.message('Eye Injury', name: 'tEyeInjury', desc: '', args: []);
  }

  /// `Fractures`
  String get tFractures {
    return Intl.message('Fractures', name: 'tFractures', desc: '', args: []);
  }

  /// `Head Injury`
  String get tHeadInjury {
    return Intl.message('Head Injury', name: 'tHeadInjury', desc: '', args: []);
  }

  /// `Heart Condition`
  String get tHeartCondition {
    return Intl.message(
      'Heart Condition',
      name: 'tHeartCondition',
      desc: '',
      args: [],
    );
  }

  /// `Seizure`
  String get tSeizure {
    return Intl.message('Seizure', name: 'tSeizure', desc: '', args: []);
  }

  /// `Shock`
  String get tShock {
    return Intl.message('Shock', name: 'tShock', desc: '', args: []);
  }

  /// `Spinal Injury`
  String get tSpinalInjury {
    return Intl.message(
      'Spinal Injury',
      name: 'tSpinalInjury',
      desc: '',
      args: [],
    );
  }

  /// `Sprains & Strains`
  String get tSprainsStrains {
    return Intl.message(
      'Sprains & Strains',
      name: 'tSprainsStrains',
      desc: '',
      args: [],
    );
  }

  /// `Stroke`
  String get tStroke {
    return Intl.message('Stroke', name: 'tStroke', desc: '', args: []);
  }

  /// `Wound Care`
  String get tWoundCare {
    return Intl.message('Wound Care', name: 'tWoundCare', desc: '', args: []);
  }

  /// `Assessing injured Person`
  String get tAssessing {
    return Intl.message(
      'Assessing injured Person',
      name: 'tAssessing',
      desc: '',
      args: [],
    );
  }

  /// `Recovery Position`
  String get tRecoveryPos {
    return Intl.message(
      'Recovery Position',
      name: 'tRecoveryPos',
      desc: '',
      args: [],
    );
  }

  /// `All Topics`
  String get tAllTopics {
    return Intl.message('All Topics', name: 'tAllTopics', desc: '', args: []);
  }

  /// `Logout`
  String get tLogout {
    return Intl.message('Logout', name: 'tLogout', desc: '', args: []);
  }

  /// `Edit Profile`
  String get tEditProfile {
    return Intl.message(
      'Edit Profile',
      name: 'tEditProfile',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get tProfileHeader1 {
    return Intl.message(
      'Settings',
      name: 'tProfileHeader1',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get tMyAccount {
    return Intl.message('Edit Profile', name: 'tMyAccount', desc: '', args: []);
  }

  /// `Change Language`
  String get tChangeLang {
    return Intl.message(
      'Change Language',
      name: 'tChangeLang',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get tProfileHeader2 {
    return Intl.message('Support', name: 'tProfileHeader2', desc: '', args: []);
  }

  /// `Contact US`
  String get tContactUs {
    return Intl.message('Contact US', name: 'tContactUs', desc: '', args: []);
  }

  /// `Legal`
  String get tProfileHeader3 {
    return Intl.message('Legal', name: 'tProfileHeader3', desc: '', args: []);
  }

  /// `Privacy Policy`
  String get tPrivacyPol {
    return Intl.message(
      'Privacy Policy',
      name: 'tPrivacyPol',
      desc: '',
      args: [],
    );
  }

  /// `About PGU First Aid`
  String get tAboutUs {
    return Intl.message(
      'About PGU First Aid',
      name: 'tAboutUs',
      desc: '',
      args: [],
    );
  }

  /// `+79960808085`
  String get tPhoneNumber {
    return Intl.message(
      '+79960808085',
      name: 'tPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `tel`
  String get tTel {
    return Intl.message('tel', name: 'tTel', desc: '', args: []);
  }

  /// `App Support Request`
  String get tsubject {
    return Intl.message(
      'App Support Request',
      name: 'tsubject',
      desc: '',
      args: [],
    );
  }

  /// `mailto`
  String get tMailto {
    return Intl.message('mailto', name: 'tMailto', desc: '', args: []);
  }

  /// `subject`
  String get tSubject1 {
    return Intl.message('subject', name: 'tSubject1', desc: '', args: []);
  }

  /// `Cannot Make Call`
  String get tCannotmakecall {
    return Intl.message(
      'Cannot Make Call',
      name: 'tCannotmakecall',
      desc: '',
      args: [],
    );
  }

  /// `Please call this number directly: `
  String get tcallthisnum {
    return Intl.message(
      'Please call this number directly: ',
      name: 'tcallthisnum',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get tOK {
    return Intl.message('OK', name: 'tOK', desc: '', args: []);
  }

  /// `Phone number copied`
  String get tcopyphone {
    return Intl.message(
      'Phone number copied',
      name: 'tcopyphone',
      desc: '',
      args: [],
    );
  }

  /// `COPY`
  String get tCopy {
    return Intl.message('COPY', name: 'tCopy', desc: '', args: []);
  }

  /// `Cannot Send Email,`
  String get tCannotsendemail {
    return Intl.message(
      'Cannot Send Email,',
      name: 'tCannotsendemail',
      desc: '',
      args: [],
    );
  }

  /// `Please contact us at:`
  String get tpleaseContactUsAt {
    return Intl.message(
      'Please contact us at:',
      name: 'tpleaseContactUsAt',
      desc: '',
      args: [],
    );
  }

  /// `Email copied`
  String get temailCopied {
    return Intl.message(
      'Email copied',
      name: 'temailCopied',
      desc: '',
      args: [],
    );
  }

  /// `We're here to help!`
  String get tweAreHereToHelp {
    return Intl.message(
      'We\'re here to help!',
      name: 'tweAreHereToHelp',
      desc: '',
      args: [],
    );
  }

  /// `Contact our support team through any of the following methods:`
  String get tcontactOurSupportTeam {
    return Intl.message(
      'Contact our support team through any of the following methods:',
      name: 'tcontactOurSupportTeam',
      desc: '',
      args: [],
    );
  }

  /// `Email Support`
  String get temailSupport {
    return Intl.message(
      'Email Support',
      name: 'temailSupport',
      desc: '',
      args: [],
    );
  }

  /// `Get help via email`
  String get tgetHelpViaEmail {
    return Intl.message(
      'Get help via email',
      name: 'tgetHelpViaEmail',
      desc: '',
      args: [],
    );
  }

  /// `Send Email`
  String get tsendEmail {
    return Intl.message('Send Email', name: 'tsendEmail', desc: '', args: []);
  }

  /// `Phone Support`
  String get tphoneSupport {
    return Intl.message(
      'Phone Support',
      name: 'tphoneSupport',
      desc: '',
      args: [],
    );
  }

  /// `Call our support team`
  String get tcallOurSupportTeam {
    return Intl.message(
      'Call our support team',
      name: 'tcallOurSupportTeam',
      desc: '',
      args: [],
    );
  }

  /// `Call Now`
  String get tcallNow {
    return Intl.message('Call Now', name: 'tcallNow', desc: '', args: []);
  }

  /// `Live Chat`
  String get tliveChat {
    return Intl.message('Live Chat', name: 'tliveChat', desc: '', args: []);
  }

  /// `Chat with an agent`
  String get tchatWithAgent {
    return Intl.message(
      'Chat with an agent',
      name: 'tchatWithAgent',
      desc: '',
      args: [],
    );
  }

  /// `Start Chat`
  String get tstartChat {
    return Intl.message('Start Chat', name: 'tstartChat', desc: '', args: []);
  }

  /// `Live chat coming soon!`
  String get tliveChatComingSoon {
    return Intl.message(
      'Live chat coming soon!',
      name: 'tliveChatComingSoon',
      desc: '',
      args: [],
    );
  }

  /// `Frequently Asked Questions`
  String get tfaq {
    return Intl.message(
      'Frequently Asked Questions',
      name: 'tfaq',
      desc: '',
      args: [],
    );
  }

  /// `question`
  String get tquestion {
    return Intl.message('question', name: 'tquestion', desc: '', args: []);
  }

  /// `answer`
  String get tanswer {
    return Intl.message('answer', name: 'tanswer', desc: '', args: []);
  }

  /// `How do I reset my password?`
  String get tquestion1 {
    return Intl.message(
      'How do I reset my password?',
      name: 'tquestion1',
      desc: '',
      args: [],
    );
  }

  /// `You don't need to reset password cause you automatically login to your account using Google Account.`
  String get tanswer1 {
    return Intl.message(
      'You don\'t need to reset password cause you automatically login to your account using Google Account.',
      name: 'tanswer1',
      desc: '',
      args: [],
    );
  }

  /// `How do I contact customer service?`
  String get tquestion2 {
    return Intl.message(
      'How do I contact customer service?',
      name: 'tquestion2',
      desc: '',
      args: [],
    );
  }

  /// `Use any of the contact methods above or visit our website for more options.`
  String get tanswer2 {
    return Intl.message(
      'Use any of the contact methods above or visit our website for more options.',
      name: 'tanswer2',
      desc: '',
      args: [],
    );
  }

  /// `OTP Verification`
  String get totpVerification {
    return Intl.message(
      'OTP Verification',
      name: 'totpVerification',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get tverification {
    return Intl.message(
      'Verification',
      name: 'tverification',
      desc: '',
      args: [],
    );
  }

  /// `Enter the OTP sent to your phone number`
  String get tenterOtpSentToPhone {
    return Intl.message(
      'Enter the OTP sent to your phone number',
      name: 'tenterOtpSentToPhone',
      desc: '',
      args: [],
    );
  }

  /// `Enter 6-Digit Code`
  String get tenter6DigitCode {
    return Intl.message(
      'Enter 6-Digit Code',
      name: 'tenter6DigitCode',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive any code?`
  String get tdidntReceiveCode {
    return Intl.message(
      'Didn\'t receive any code?',
      name: 'tdidntReceiveCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get tresend {
    return Intl.message('Resend', name: 'tresend', desc: '', args: []);
  }

  /// `Complete Profile`
  String get tcompleteProfile {
    return Intl.message(
      'Complete Profile',
      name: 'tcompleteProfile',
      desc: '',
      args: [],
    );
  }

  /// `Tell others about yourself`
  String get ttellOthersAboutYou {
    return Intl.message(
      'Tell others about yourself',
      name: 'ttellOthersAboutYou',
      desc: '',
      args: [],
    );
  }

  /// `CONTINUE`
  String get tcontinue {
    return Intl.message('CONTINUE', name: 'tcontinue', desc: '', args: []);
  }

  /// `Please upload your profile photo`
  String get tpleaseUploadPhoto {
    return Intl.message(
      'Please upload your profile photo',
      name: 'tpleaseUploadPhoto',
      desc: '',
      args: [],
    );
  }

  /// `EMERGENCY NUMBER`
  String get temergencyNumber {
    return Intl.message(
      'EMERGENCY NUMBER',
      name: 'temergencyNumber',
      desc: '',
      args: [],
    );
  }

  /// `EMERGENCY call`
  String get temergencyCall {
    return Intl.message(
      'EMERGENCY call',
      name: 'temergencyCall',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to call 112?`
  String get tareYouSureCall112 {
    return Intl.message(
      'Are you sure you want to call 112?',
      name: 'tareYouSureCall112',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get tcancel {
    return Intl.message('Cancel', name: 'tcancel', desc: '', args: []);
  }

  /// `Call`
  String get tcall {
    return Intl.message('Call', name: 'tcall', desc: '', args: []);
  }

  /// `About PGU First Aid App`
  String get taboutPGUFA {
    return Intl.message(
      'About PGU First Aid App',
      name: 'taboutPGUFA',
      desc: '',
      args: [],
    );
  }

  /// `The PGU First Aid App is designed to provide essential first aid information to users in emergency situations. Developed with students and the public in mind, this app offers easy-to-follow guides on handling common injuries and health emergencies.`
  String get taboutHeader {
    return Intl.message(
      'The PGU First Aid App is designed to provide essential first aid information to users in emergency situations. Developed with students and the public in mind, this app offers easy-to-follow guides on handling common injuries and health emergencies.',
      name: 'taboutHeader',
      desc: '',
      args: [],
    );
  }

  /// `Features:`
  String get taboutHeader1 {
    return Intl.message('Features:', name: 'taboutHeader1', desc: '', args: []);
  }

  /// `- Step-by-step instructions for first aid procedures.\n- Topics include CPR, burns, choking, fractures, bleeding, and more.\n- Offline access to vital information.\n- Clean and simple interface for quick navigation.`
  String get taboutParagraph {
    return Intl.message(
      '- Step-by-step instructions for first aid procedures.\n- Topics include CPR, burns, choking, fractures, bleeding, and more.\n- Offline access to vital information.\n- Clean and simple interface for quick navigation.',
      name: 'taboutParagraph',
      desc: '',
      args: [],
    );
  }

  /// `Who Developed This App?`
  String get taboutHeader2 {
    return Intl.message(
      'Who Developed This App?',
      name: 'taboutHeader2',
      desc: '',
      args: [],
    );
  }

  /// `This app was developed as part of a student project at PGU (Penza State University), with the goal of enhancing public safety awareness and response skills.`
  String get taboutParagraph2 {
    return Intl.message(
      'This app was developed as part of a student project at PGU (Penza State University), with the goal of enhancing public safety awareness and response skills.',
      name: 'taboutParagraph2',
      desc: '',
      args: [],
    );
  }

  /// `Disclaimer:`
  String get taboutHeader3 {
    return Intl.message(
      'Disclaimer:',
      name: 'taboutHeader3',
      desc: '',
      args: [],
    );
  }

  /// `This app is intended for educational purposes and general guidance only. It is not a substitute for professional medical advice or training. In a medical emergency, always contact emergency services or a healthcare professional.`
  String get taboutParagraph3 {
    return Intl.message(
      'This app is intended for educational purposes and general guidance only. It is not a substitute for professional medical advice or training. In a medical emergency, always contact emergency services or a healthcare professional.',
      name: 'taboutParagraph3',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us:`
  String get taboutHeader4 {
    return Intl.message(
      'Contact Us:',
      name: 'taboutHeader4',
      desc: '',
      args: [],
    );
  }

  /// `For feedback or inquiries, please contact:\nyvhiku@yandex.ru`
  String get taboutParagraph4 {
    return Intl.message(
      'For feedback or inquiries, please contact:\nyvhiku@yandex.ru',
      name: 'taboutParagraph4',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get tprivacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'tprivacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your information when you use the First Aid App.`
  String get tprivacyPolicyHeader {
    return Intl.message(
      'Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your information when you use the First Aid App.',
      name: 'tprivacyPolicyHeader',
      desc: '',
      args: [],
    );
  }

  /// `1. Information We Collect`
  String get tprivacyQ1 {
    return Intl.message(
      '1. Information We Collect',
      name: 'tprivacyQ1',
      desc: '',
      args: [],
    );
  }

  /// `- Personal information you provide, such as your name and email when signing up.\n- Data related to app usage, saved topics, and preferences.`
  String get tprivacyA1 {
    return Intl.message(
      '- Personal information you provide, such as your name and email when signing up.\n- Data related to app usage, saved topics, and preferences.',
      name: 'tprivacyA1',
      desc: '',
      args: [],
    );
  }

  /// `2. How We Use Your Information`
  String get tprivacyQ2 {
    return Intl.message(
      '2. How We Use Your Information',
      name: 'tprivacyQ2',
      desc: '',
      args: [],
    );
  }

  /// `- To provide personalized features like saving topics.\n- To improve the app and user experience.\n- We do NOT share or sell your personal data to third parties.`
  String get tprivacyA2 {
    return Intl.message(
      '- To provide personalized features like saving topics.\n- To improve the app and user experience.\n- We do NOT share or sell your personal data to third parties.',
      name: 'tprivacyA2',
      desc: '',
      args: [],
    );
  }

  /// `3. Data Security`
  String get tprivacyQ3 {
    return Intl.message(
      '3. Data Security',
      name: 'tprivacyQ3',
      desc: '',
      args: [],
    );
  }

  /// `We use secure authentication (Firebase Auth) and encrypted cloud storage (Firebase Storage & Firestore) to keep your data safe.`
  String get tprivacyA3 {
    return Intl.message(
      'We use secure authentication (Firebase Auth) and encrypted cloud storage (Firebase Storage & Firestore) to keep your data safe.',
      name: 'tprivacyA3',
      desc: '',
      args: [],
    );
  }

  /// `4. Your Choices`
  String get tprivacyQ4 {
    return Intl.message(
      '4. Your Choices',
      name: 'tprivacyQ4',
      desc: '',
      args: [],
    );
  }

  /// `- You can delete your account and all data at any time.\n- Contact us for any questions or data requests.`
  String get tprivacyA4 {
    return Intl.message(
      '- You can delete your account and all data at any time.\n- Contact us for any questions or data requests.',
      name: 'tprivacyA4',
      desc: '',
      args: [],
    );
  }

  /// `5. Changes to This Policy`
  String get tprivacyQ5 {
    return Intl.message(
      '5. Changes to This Policy',
      name: 'tprivacyQ5',
      desc: '',
      args: [],
    );
  }

  /// `We may update this policy from time to time. We will notify you of any major changes.`
  String get tprivacyA5 {
    return Intl.message(
      'We may update this policy from time to time. We will notify you of any major changes.',
      name: 'tprivacyA5',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us:\nyvhiku@yandex.ru`
  String get tcontactUsIn {
    return Intl.message(
      'Contact Us:\nyvhiku@yandex.ru',
      name: 'tcontactUsIn',
      desc: '',
      args: [],
    );
  }

  /// `No user data found`
  String get tuserNotFound {
    return Intl.message(
      'No user data found',
      name: 'tuserNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Retry Loading`
  String get tretryLoading {
    return Intl.message(
      'Retry Loading',
      name: 'tretryLoading',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get tconfirm {
    return Intl.message('Confirm', name: 'tconfirm', desc: '', args: []);
  }

  /// `Clear all saved topics?`
  String get tclearAllTopics {
    return Intl.message(
      'Clear all saved topics?',
      name: 'tclearAllTopics',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get tclear {
    return Intl.message('Clear', name: 'tclear', desc: '', args: []);
  }

  /// `All saved topics cleared`
  String get tallTopicsCleared {
    return Intl.message(
      'All saved topics cleared',
      name: 'tallTopicsCleared',
      desc: '',
      args: [],
    );
  }

  /// `Clear All`
  String get tclearAll {
    return Intl.message('Clear All', name: 'tclearAll', desc: '', args: []);
  }

  /// `No saved topics yet`
  String get tnoSavedTopicYet {
    return Intl.message(
      'No saved topics yet',
      name: 'tnoSavedTopicYet',
      desc: '',
      args: [],
    );
  }

  /// `Browse Topics`
  String get tbrowseTopics {
    return Intl.message(
      'Browse Topics',
      name: 'tbrowseTopics',
      desc: '',
      args: [],
    );
  }

  /// `Saved Topics`
  String get tsavedTopics {
    return Intl.message(
      'Saved Topics',
      name: 'tsavedTopics',
      desc: '',
      args: [],
    );
  }

  /// `Remove this topic from saved?`
  String get tremoveThisTopic {
    return Intl.message(
      'Remove this topic from saved?',
      name: 'tremoveThisTopic',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get tremove {
    return Intl.message('Remove', name: 'tremove', desc: '', args: []);
  }

  /// `Added to saved topics`
  String get taddedToSaved {
    return Intl.message(
      'Added to saved topics',
      name: 'taddedToSaved',
      desc: '',
      args: [],
    );
  }

  /// `Removed from saved topics`
  String get tremovedTopic {
    return Intl.message(
      'Removed from saved topics',
      name: 'tremovedTopic',
      desc: '',
      args: [],
    );
  }

  /// `Allergic Reaction (First Aid)`
  String get tallergicReactionFirstAid {
    return Intl.message(
      'Allergic Reaction (First Aid)',
      name: 'tallergicReactionFirstAid',
      desc: '',
      args: [],
    );
  }

  /// `An allergic reaction is a rapid response of the immune system to allergens such as insect stings, foods, or medications. Some reactions can be life-threatening and require urgent action.`
  String get tallergicReactionContent1 {
    return Intl.message(
      'An allergic reaction is a rapid response of the immune system to allergens such as insect stings, foods, or medications. Some reactions can be life-threatening and require urgent action.',
      name: 'tallergicReactionContent1',
      desc: '',
      args: [],
    );
  }

  /// `Steps to Provide First Aid:`
  String get tallergicReactionContent2 {
    return Intl.message(
      'Steps to Provide First Aid:',
      name: 'tallergicReactionContent2',
      desc: '',
      args: [],
    );
  }

  /// `Assess the Situation`
  String get tallergicReactionContent3 {
    return Intl.message(
      'Assess the Situation',
      name: 'tallergicReactionContent3',
      desc: '',
      args: [],
    );
  }

  /// `Look for symptoms like rash, swelling (especially of the face or throat), shortness of breath, dizziness, or unconsciousness.`
  String get tallergicReactionContent4 {
    return Intl.message(
      'Look for symptoms like rash, swelling (especially of the face or throat), shortness of breath, dizziness, or unconsciousness.',
      name: 'tallergicReactionContent4',
      desc: '',
      args: [],
    );
  }

  /// `Remove the Allergen`
  String get tallergicReactionContent5 {
    return Intl.message(
      'Remove the Allergen',
      name: 'tallergicReactionContent5',
      desc: '',
      args: [],
    );
  }

  /// `If possible, eliminate contact with the suspected allergen (e.g., food, insect sting, medication).`
  String get tallergicReactionContent6 {
    return Intl.message(
      'If possible, eliminate contact with the suspected allergen (e.g., food, insect sting, medication).',
      name: 'tallergicReactionContent6',
      desc: '',
      args: [],
    );
  }

  /// `Call Emergency Services`
  String get tallergicReactionContent7 {
    return Intl.message(
      'Call Emergency Services',
      name: 'tallergicReactionContent7',
      desc: '',
      args: [],
    );
  }

  /// `Call 112 immediately. Anaphylaxis can escalate quickly and requires professional help.`
  String get tallergicReactionContent8 {
    return Intl.message(
      'Call 112 immediately. Anaphylaxis can escalate quickly and requires professional help.',
      name: 'tallergicReactionContent8',
      desc: '',
      args: [],
    );
  }

  /// `Help Use an Epinephrine Auto-Injector`
  String get tallergicReactionContent9 {
    return Intl.message(
      'Help Use an Epinephrine Auto-Injector',
      name: 'tallergicReactionContent9',
      desc: '',
      args: [],
    );
  }

  /// `If the person has an epinephrine pen (e.g., EpiPen), help them use it by injecting into the outer thigh. Hold for 5–10 seconds.`
  String get tallergicReactionContent10 {
    return Intl.message(
      'If the person has an epinephrine pen (e.g., EpiPen), help them use it by injecting into the outer thigh. Hold for 5–10 seconds.',
      name: 'tallergicReactionContent10',
      desc: '',
      args: [],
    );
  }

  /// `Lay the Person Down`
  String get tallergicReactionContent11 {
    return Intl.message(
      'Lay the Person Down',
      name: 'tallergicReactionContent11',
      desc: '',
      args: [],
    );
  }

  /// `If there is no difficulty breathing, lay the person flat and raise their legs. If breathing is difficult, allow them to sit up.`
  String get tallergicReactionContent12 {
    return Intl.message(
      'If there is no difficulty breathing, lay the person flat and raise their legs. If breathing is difficult, allow them to sit up.',
      name: 'tallergicReactionContent12',
      desc: '',
      args: [],
    );
  }

  /// `Monitor Breathing and Consciousness`
  String get tallergicReactionContent13 {
    return Intl.message(
      'Monitor Breathing and Consciousness',
      name: 'tallergicReactionContent13',
      desc: '',
      args: [],
    );
  }

  /// `Watch the person closely. If breathing stops or the person becomes unresponsive, start CPR immediately.`
  String get tallergicReactionContent14 {
    return Intl.message(
      'Watch the person closely. If breathing stops or the person becomes unresponsive, start CPR immediately.',
      name: 'tallergicReactionContent14',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get tallergicReactionContent15 {
    return Intl.message(
      'Important Notes:',
      name: 'tallergicReactionContent15',
      desc: '',
      args: [],
    );
  }

  /// `Epinephrine is the only effective treatment for anaphylaxis.`
  String get tallergicReactionContent16 {
    return Intl.message(
      'Epinephrine is the only effective treatment for anaphylaxis.',
      name: 'tallergicReactionContent16',
      desc: '',
      args: [],
    );
  }

  /// `Do not give anything to eat or drink during the reaction.`
  String get tallergicReactionContent17 {
    return Intl.message(
      'Do not give anything to eat or drink during the reaction.',
      name: 'tallergicReactionContent17',
      desc: '',
      args: [],
    );
  }

  /// `A second epinephrine dose may be needed after 5–15 minutes.`
  String get tallergicReactionContent18 {
    return Intl.message(
      'A second epinephrine dose may be needed after 5–15 minutes.',
      name: 'tallergicReactionContent18',
      desc: '',
      args: [],
    );
  }

  /// `Antihistamines may help mild symptoms but are not enough for severe reactions.`
  String get tallergicReactionContent19 {
    return Intl.message(
      'Antihistamines may help mild symptoms but are not enough for severe reactions.',
      name: 'tallergicReactionContent19',
      desc: '',
      args: [],
    );
  }

  /// `Watch Allergy First Aid Demo`
  String get tallergicReactionContent20 {
    return Intl.message(
      'Watch Allergy First Aid Demo',
      name: 'tallergicReactionContent20',
      desc: '',
      args: [],
    );
  }

  /// `Assessing an Injured Person`
  String get tassessingInjured {
    return Intl.message(
      'Assessing an Injured Person',
      name: 'tassessingInjured',
      desc: '',
      args: [],
    );
  }

  /// `Before providing first aid, assess the situation and the injured person. This ensures your own safety and allows effective help.`
  String get tassessing1 {
    return Intl.message(
      'Before providing first aid, assess the situation and the injured person. This ensures your own safety and allows effective help.',
      name: 'tassessing1',
      desc: '',
      args: [],
    );
  }

  /// `Initial Assessment Steps:`
  String get tassessing2 {
    return Intl.message(
      'Initial Assessment Steps:',
      name: 'tassessing2',
      desc: '',
      args: [],
    );
  }

  /// `Ensure Scene Safety`
  String get tassessing3 {
    return Intl.message(
      'Ensure Scene Safety',
      name: 'tassessing3',
      desc: '',
      args: [],
    );
  }

  /// `Check for immediate dangers like fire, traffic, or electrical hazards. Do not enter an unsafe scene.`
  String get tassessing4 {
    return Intl.message(
      'Check for immediate dangers like fire, traffic, or electrical hazards. Do not enter an unsafe scene.',
      name: 'tassessing4',
      desc: '',
      args: [],
    );
  }

  /// `Check Responsiveness`
  String get tassessing5 {
    return Intl.message(
      'Check Responsiveness',
      name: 'tassessing5',
      desc: '',
      args: [],
    );
  }

  /// `Gently shake the person and ask loudly, "Can you hear me?" If no response, proceed to call for help.`
  String get tassessing6 {
    return Intl.message(
      'Gently shake the person and ask loudly, "Can you hear me?" If no response, proceed to call for help.',
      name: 'tassessing6',
      desc: '',
      args: [],
    );
  }

  /// `Call Emergency Services`
  String get tassessing7 {
    return Intl.message(
      'Call Emergency Services',
      name: 'tassessing7',
      desc: '',
      args: [],
    );
  }

  /// `Call 112 or ask a bystander to do so. Provide your location and details of the situation.`
  String get tassessing8 {
    return Intl.message(
      'Call 112 or ask a bystander to do so. Provide your location and details of the situation.',
      name: 'tassessing8',
      desc: '',
      args: [],
    );
  }

  /// `Open the Airway`
  String get tassessing9 {
    return Intl.message(
      'Open the Airway',
      name: 'tassessing9',
      desc: '',
      args: [],
    );
  }

  /// `Tilt the head back and lift the chin to open the airway if the person is unconscious.`
  String get tassessing10 {
    return Intl.message(
      'Tilt the head back and lift the chin to open the airway if the person is unconscious.',
      name: 'tassessing10',
      desc: '',
      args: [],
    );
  }

  /// `Check for Breathing`
  String get tassessing11 {
    return Intl.message(
      'Check for Breathing',
      name: 'tassessing11',
      desc: '',
      args: [],
    );
  }

  /// `Look, listen, and feel for breathing. If not breathing, begin CPR immediately.`
  String get tassessing12 {
    return Intl.message(
      'Look, listen, and feel for breathing. If not breathing, begin CPR immediately.',
      name: 'tassessing12',
      desc: '',
      args: [],
    );
  }

  /// `Check for Bleeding`
  String get tassessing13 {
    return Intl.message(
      'Check for Bleeding',
      name: 'tassessing13',
      desc: '',
      args: [],
    );
  }

  /// `Quickly scan for major bleeding. Apply direct pressure to wounds using a cloth or bandage.`
  String get tassessing14 {
    return Intl.message(
      'Quickly scan for major bleeding. Apply direct pressure to wounds using a cloth or bandage.',
      name: 'tassessing14',
      desc: '',
      args: [],
    );
  }

  /// `Treat for Shock`
  String get tassessing15 {
    return Intl.message(
      'Treat for Shock',
      name: 'tassessing15',
      desc: '',
      args: [],
    );
  }

  /// `Keep the person warm and reassure them. Do not give food or drink.`
  String get tassessing16 {
    return Intl.message(
      'Keep the person warm and reassure them. Do not give food or drink.',
      name: 'tassessing16',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get tassessing17 {
    return Intl.message(
      'Important Notes:',
      name: 'tassessing17',
      desc: '',
      args: [],
    );
  }

  /// `Never put yourself in danger to help someone.`
  String get tassessing18 {
    return Intl.message(
      'Never put yourself in danger to help someone.',
      name: 'tassessing18',
      desc: '',
      args: [],
    );
  }

  /// `Only move the injured person if there is an immediate threat.`
  String get tassessing19 {
    return Intl.message(
      'Only move the injured person if there is an immediate threat.',
      name: 'tassessing19',
      desc: '',
      args: [],
    );
  }

  /// `Always check response, breathing, and bleeding in that order.`
  String get tassessing20 {
    return Intl.message(
      'Always check response, breathing, and bleeding in that order.',
      name: 'tassessing20',
      desc: '',
      args: [],
    );
  }

  /// `Watch Assessment Demo`
  String get tassessing21 {
    return Intl.message(
      'Watch Assessment Demo',
      name: 'tassessing21',
      desc: '',
      args: [],
    );
  }

  /// `Asthma`
  String get asthma {
    return Intl.message('Asthma', name: 'asthma', desc: '', args: []);
  }

  /// `Asthma Attack First Aid`
  String get asthmaTitle {
    return Intl.message(
      'Asthma Attack First Aid',
      name: 'asthmaTitle',
      desc: '',
      args: [],
    );
  }

  /// `Asthma attacks can be life-threatening. Quick and correct action is crucial to help someone who is having difficulty breathing.`
  String get asthma1 {
    return Intl.message(
      'Asthma attacks can be life-threatening. Quick and correct action is crucial to help someone who is having difficulty breathing.',
      name: 'asthma1',
      desc: '',
      args: [],
    );
  }

  /// `Steps to Help During an Asthma Attack:`
  String get asthma2 {
    return Intl.message(
      'Steps to Help During an Asthma Attack:',
      name: 'asthma2',
      desc: '',
      args: [],
    );
  }

  /// `Stay Calm and Reassure`
  String get asthma3 {
    return Intl.message(
      'Stay Calm and Reassure',
      name: 'asthma3',
      desc: '',
      args: [],
    );
  }

  /// `Help the person stay calm and encourage them to sit upright and breathe slowly.`
  String get asthma4 {
    return Intl.message(
      'Help the person stay calm and encourage them to sit upright and breathe slowly.',
      name: 'asthma4',
      desc: '',
      args: [],
    );
  }

  /// `Use Inhaler (Reliever)`
  String get asthma5 {
    return Intl.message(
      'Use Inhaler (Reliever)',
      name: 'asthma5',
      desc: '',
      args: [],
    );
  }

  /// `Help them take their quick-relief inhaler (usually blue). They may take 1–2 puffs every 30–60 seconds, up to 10 puffs.`
  String get asthma6 {
    return Intl.message(
      'Help them take their quick-relief inhaler (usually blue). They may take 1–2 puffs every 30–60 seconds, up to 10 puffs.',
      name: 'asthma6',
      desc: '',
      args: [],
    );
  }

  /// `Loosen Tight Clothing`
  String get asthma7 {
    return Intl.message(
      'Loosen Tight Clothing',
      name: 'asthma7',
      desc: '',
      args: [],
    );
  }

  /// `Loosen any tight clothing around the neck or chest to help with breathing.`
  String get asthma8 {
    return Intl.message(
      'Loosen any tight clothing around the neck or chest to help with breathing.',
      name: 'asthma8',
      desc: '',
      args: [],
    );
  }

  /// `Call Emergency Services`
  String get asthma9 {
    return Intl.message(
      'Call Emergency Services',
      name: 'asthma9',
      desc: '',
      args: [],
    );
  }

  /// `If breathing doesn’t improve after 10 puffs or worsens, call 112 immediately.`
  String get asthma10 {
    return Intl.message(
      'If breathing doesn’t improve after 10 puffs or worsens, call 112 immediately.',
      name: 'asthma10',
      desc: '',
      args: [],
    );
  }

  /// `Repeat if Needed`
  String get asthma11 {
    return Intl.message(
      'Repeat if Needed',
      name: 'asthma11',
      desc: '',
      args: [],
    );
  }

  /// `Continue giving 1 puff every 30–60 seconds up to another 10 puffs while waiting for help.`
  String get asthma12 {
    return Intl.message(
      'Continue giving 1 puff every 30–60 seconds up to another 10 puffs while waiting for help.',
      name: 'asthma12',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get asthma13 {
    return Intl.message(
      'Important Notes:',
      name: 'asthma13',
      desc: '',
      args: [],
    );
  }

  /// `Do not leave the person alone during an attack.`
  String get asthma14 {
    return Intl.message(
      'Do not leave the person alone during an attack.',
      name: 'asthma14',
      desc: '',
      args: [],
    );
  }

  /// `Do not lie the person down—keep them sitting upright.`
  String get asthma15 {
    return Intl.message(
      'Do not lie the person down—keep them sitting upright.',
      name: 'asthma15',
      desc: '',
      args: [],
    );
  }

  /// `Avoid triggers like smoke, cold air, or allergens.`
  String get asthma16 {
    return Intl.message(
      'Avoid triggers like smoke, cold air, or allergens.',
      name: 'asthma16',
      desc: '',
      args: [],
    );
  }

  /// `Watch Asthma Demo`
  String get asthma17 {
    return Intl.message(
      'Watch Asthma Demo',
      name: 'asthma17',
      desc: '',
      args: [],
    );
  }

  /// `Bites`
  String get bites {
    return Intl.message('Bites', name: 'bites', desc: '', args: []);
  }

  /// `Bite Wound First Aid`
  String get bitesTitle {
    return Intl.message(
      'Bite Wound First Aid',
      name: 'bitesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Animal or insect bites can transmit diseases and lead to infections if untreated.`
  String get bites1 {
    return Intl.message(
      'Animal or insect bites can transmit diseases and lead to infections if untreated.',
      name: 'bites1',
      desc: '',
      args: [],
    );
  }

  /// `Steps to Treat Bites:`
  String get bites2 {
    return Intl.message(
      'Steps to Treat Bites:',
      name: 'bites2',
      desc: '',
      args: [],
    );
  }

  /// `Move to Safety`
  String get bites3 {
    return Intl.message('Move to Safety', name: 'bites3', desc: '', args: []);
  }

  /// `Ensure the area is safe and the biting animal is no longer a threat.`
  String get bites4 {
    return Intl.message(
      'Ensure the area is safe and the biting animal is no longer a threat.',
      name: 'bites4',
      desc: '',
      args: [],
    );
  }

  /// `Clean the Wound`
  String get bites5 {
    return Intl.message('Clean the Wound', name: 'bites5', desc: '', args: []);
  }

  /// `Wash with soap and running water for several minutes.`
  String get bites6 {
    return Intl.message(
      'Wash with soap and running water for several minutes.',
      name: 'bites6',
      desc: '',
      args: [],
    );
  }

  /// `Stop the Bleeding`
  String get bites7 {
    return Intl.message(
      'Stop the Bleeding',
      name: 'bites7',
      desc: '',
      args: [],
    );
  }

  /// `Apply gentle pressure with a clean cloth or bandage.`
  String get bites8 {
    return Intl.message(
      'Apply gentle pressure with a clean cloth or bandage.',
      name: 'bites8',
      desc: '',
      args: [],
    );
  }

  /// `Apply Antiseptic`
  String get bites9 {
    return Intl.message('Apply Antiseptic', name: 'bites9', desc: '', args: []);
  }

  /// `Use an antiseptic solution to prevent infection.`
  String get bites10 {
    return Intl.message(
      'Use an antiseptic solution to prevent infection.',
      name: 'bites10',
      desc: '',
      args: [],
    );
  }

  /// `Cover the Wound`
  String get bites11 {
    return Intl.message('Cover the Wound', name: 'bites11', desc: '', args: []);
  }

  /// `Use a sterile bandage to protect the bite.`
  String get bites12 {
    return Intl.message(
      'Use a sterile bandage to protect the bite.',
      name: 'bites12',
      desc: '',
      args: [],
    );
  }

  /// `Seek Medical Help`
  String get bites13 {
    return Intl.message(
      'Seek Medical Help',
      name: 'bites13',
      desc: '',
      args: [],
    );
  }

  /// `Especially important for deep bites or suspected rabies exposure.`
  String get bites14 {
    return Intl.message(
      'Especially important for deep bites or suspected rabies exposure.',
      name: 'bites14',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get bites15 {
    return Intl.message(
      'Important Notes:',
      name: 'bites15',
      desc: '',
      args: [],
    );
  }

  /// `Tetanus shot may be needed.`
  String get bites16 {
    return Intl.message(
      'Tetanus shot may be needed.',
      name: 'bites16',
      desc: '',
      args: [],
    );
  }

  /// `Watch for signs of infection (redness, swelling, pus).`
  String get bites17 {
    return Intl.message(
      'Watch for signs of infection (redness, swelling, pus).',
      name: 'bites17',
      desc: '',
      args: [],
    );
  }

  /// `If bitten by a wild animal, report to authorities.`
  String get bites18 {
    return Intl.message(
      'If bitten by a wild animal, report to authorities.',
      name: 'bites18',
      desc: '',
      args: [],
    );
  }

  /// `Bleeding`
  String get bleeding {
    return Intl.message('Bleeding', name: 'bleeding', desc: '', args: []);
  }

  /// `First Aid for Bleeding`
  String get bleedingTitle {
    return Intl.message(
      'First Aid for Bleeding',
      name: 'bleedingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Quick action is critical in stopping bleeding to prevent shock or more serious injury.`
  String get bleeding1 {
    return Intl.message(
      'Quick action is critical in stopping bleeding to prevent shock or more serious injury.',
      name: 'bleeding1',
      desc: '',
      args: [],
    );
  }

  /// `Steps to Stop Bleeding:`
  String get bleeding2 {
    return Intl.message(
      'Steps to Stop Bleeding:',
      name: 'bleeding2',
      desc: '',
      args: [],
    );
  }

  /// `Protect Yourself`
  String get bleeding3 {
    return Intl.message(
      'Protect Yourself',
      name: 'bleeding3',
      desc: '',
      args: [],
    );
  }

  /// `Wear gloves if available to avoid contact with blood.`
  String get bleeding4 {
    return Intl.message(
      'Wear gloves if available to avoid contact with blood.',
      name: 'bleeding4',
      desc: '',
      args: [],
    );
  }

  /// `Apply Pressure`
  String get bleeding5 {
    return Intl.message(
      'Apply Pressure',
      name: 'bleeding5',
      desc: '',
      args: [],
    );
  }

  /// `Use a clean cloth or gauze to press firmly on the wound.`
  String get bleeding6 {
    return Intl.message(
      'Use a clean cloth or gauze to press firmly on the wound.',
      name: 'bleeding6',
      desc: '',
      args: [],
    );
  }

  /// `Elevate the Area`
  String get bleeding7 {
    return Intl.message(
      'Elevate the Area',
      name: 'bleeding7',
      desc: '',
      args: [],
    );
  }

  /// `Raise the injured limb above heart level if possible.`
  String get bleeding8 {
    return Intl.message(
      'Raise the injured limb above heart level if possible.',
      name: 'bleeding8',
      desc: '',
      args: [],
    );
  }

  /// `Use a Bandage`
  String get bleeding9 {
    return Intl.message('Use a Bandage', name: 'bleeding9', desc: '', args: []);
  }

  /// `Wrap the wound tightly, but not so tight as to cut off circulation.`
  String get bleeding10 {
    return Intl.message(
      'Wrap the wound tightly, but not so tight as to cut off circulation.',
      name: 'bleeding10',
      desc: '',
      args: [],
    );
  }

  /// `Seek Emergency Help`
  String get bleeding11 {
    return Intl.message(
      'Seek Emergency Help',
      name: 'bleeding11',
      desc: '',
      args: [],
    );
  }

  /// `If bleeding is severe or doesn’t stop after 10 minutes.`
  String get bleeding12 {
    return Intl.message(
      'If bleeding is severe or doesn’t stop after 10 minutes.',
      name: 'bleeding12',
      desc: '',
      args: [],
    );
  }

  /// `Warnings:`
  String get bleeding13 {
    return Intl.message('Warnings:', name: 'bleeding13', desc: '', args: []);
  }

  /// `Do not remove objects embedded in the wound.`
  String get bleeding14 {
    return Intl.message(
      'Do not remove objects embedded in the wound.',
      name: 'bleeding14',
      desc: '',
      args: [],
    );
  }

  /// `Do not use tourniquets unless trained.`
  String get bleeding15 {
    return Intl.message(
      'Do not use tourniquets unless trained.',
      name: 'bleeding15',
      desc: '',
      args: [],
    );
  }

  /// `Watch for signs of shock (pale skin, weakness).`
  String get bleeding16 {
    return Intl.message(
      'Watch for signs of shock (pale skin, weakness).',
      name: 'bleeding16',
      desc: '',
      args: [],
    );
  }

  /// `Burns`
  String get burns {
    return Intl.message('Burns', name: 'burns', desc: '', args: []);
  }

  /// `First Aid for Burns`
  String get burnsTitle {
    return Intl.message(
      'First Aid for Burns',
      name: 'burnsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Burns can range from mild to life-threatening. First aid helps reduce damage and pain.`
  String get burns1 {
    return Intl.message(
      'Burns can range from mild to life-threatening. First aid helps reduce damage and pain.',
      name: 'burns1',
      desc: '',
      args: [],
    );
  }

  /// `Steps to Treat Burns:`
  String get burns2 {
    return Intl.message(
      'Steps to Treat Burns:',
      name: 'burns2',
      desc: '',
      args: [],
    );
  }

  /// `Stop the Burning Process`
  String get burns3 {
    return Intl.message(
      'Stop the Burning Process',
      name: 'burns3',
      desc: '',
      args: [],
    );
  }

  /// `Remove the person from the heat source and extinguish flames.`
  String get burns4 {
    return Intl.message(
      'Remove the person from the heat source and extinguish flames.',
      name: 'burns4',
      desc: '',
      args: [],
    );
  }

  /// `Cool the Burn`
  String get burns5 {
    return Intl.message('Cool the Burn', name: 'burns5', desc: '', args: []);
  }

  /// `Use cool (not cold) running water for 10–20 minutes.`
  String get burns6 {
    return Intl.message(
      'Use cool (not cold) running water for 10–20 minutes.',
      name: 'burns6',
      desc: '',
      args: [],
    );
  }

  /// `Protect the Area`
  String get burns7 {
    return Intl.message('Protect the Area', name: 'burns7', desc: '', args: []);
  }

  /// `Cover loosely with a clean, non-stick cloth or dressing.`
  String get burns8 {
    return Intl.message(
      'Cover loosely with a clean, non-stick cloth or dressing.',
      name: 'burns8',
      desc: '',
      args: [],
    );
  }

  /// `Avoid Creams or Ice`
  String get burns9 {
    return Intl.message(
      'Avoid Creams or Ice',
      name: 'burns9',
      desc: '',
      args: [],
    );
  }

  /// `Do not apply butter, ointments, or ice directly.`
  String get burns10 {
    return Intl.message(
      'Do not apply butter, ointments, or ice directly.',
      name: 'burns10',
      desc: '',
      args: [],
    );
  }

  /// `Seek Help`
  String get burns11 {
    return Intl.message('Seek Help', name: 'burns11', desc: '', args: []);
  }

  /// `Call emergency services for severe or large burns.`
  String get burns12 {
    return Intl.message(
      'Call emergency services for severe or large burns.',
      name: 'burns12',
      desc: '',
      args: [],
    );
  }

  /// `Burn Severity:`
  String get burns13 {
    return Intl.message('Burn Severity:', name: 'burns13', desc: '', args: []);
  }

  /// `First-degree: Red, painful (like sunburn).`
  String get burns14 {
    return Intl.message(
      'First-degree: Red, painful (like sunburn).',
      name: 'burns14',
      desc: '',
      args: [],
    );
  }

  /// `Second-degree: Blisters, intense pain.`
  String get burns15 {
    return Intl.message(
      'Second-degree: Blisters, intense pain.',
      name: 'burns15',
      desc: '',
      args: [],
    );
  }

  /// `Third-degree: Charred, white, painless — call 911.`
  String get burns16 {
    return Intl.message(
      'Third-degree: Charred, white, painless — call 911.',
      name: 'burns16',
      desc: '',
      args: [],
    );
  }

  /// `Choking First Aid`
  String get chokingTitle {
    return Intl.message(
      'Choking First Aid',
      name: 'chokingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Choking occurs when an object blocks the airway, preventing normal breathing.`
  String get choking1 {
    return Intl.message(
      'Choking occurs when an object blocks the airway, preventing normal breathing.',
      name: 'choking1',
      desc: '',
      args: [],
    );
  }

  /// `Signs of a Fracture:`
  String get fracturesSignsHeading {
    return Intl.message(
      'Signs of a Fracture:',
      name: 'fracturesSignsHeading',
      desc: '',
      args: [],
    );
  }

  /// `- Pain and tenderness`
  String get fracturesSign1 {
    return Intl.message(
      '- Pain and tenderness',
      name: 'fracturesSign1',
      desc: '',
      args: [],
    );
  }

  /// `- Swelling or bruising`
  String get fracturesSign2 {
    return Intl.message(
      '- Swelling or bruising',
      name: 'fracturesSign2',
      desc: '',
      args: [],
    );
  }

  /// `- Deformity or unnatural positioning`
  String get fracturesSign3 {
    return Intl.message(
      '- Deformity or unnatural positioning',
      name: 'fracturesSign3',
      desc: '',
      args: [],
    );
  }

  /// `- Difficulty moving the limb`
  String get fracturesSign4 {
    return Intl.message(
      '- Difficulty moving the limb',
      name: 'fracturesSign4',
      desc: '',
      args: [],
    );
  }

  /// `First Aid Steps:`
  String get fracturesStepsHeading {
    return Intl.message(
      'First Aid Steps:',
      name: 'fracturesStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Immobilize the Area`
  String get fracturesStep1Title {
    return Intl.message(
      'Immobilize the Area',
      name: 'fracturesStep1Title',
      desc: '',
      args: [],
    );
  }

  /// `Keep the injured area still and avoid movement.`
  String get fracturesStep1Desc {
    return Intl.message(
      'Keep the injured area still and avoid movement.',
      name: 'fracturesStep1Desc',
      desc: '',
      args: [],
    );
  }

  /// `Apply a Splint`
  String get fracturesStep2Title {
    return Intl.message(
      'Apply a Splint',
      name: 'fracturesStep2Title',
      desc: '',
      args: [],
    );
  }

  /// `Use a padded splint to support the injury without forcing it into place.`
  String get fracturesStep2Desc {
    return Intl.message(
      'Use a padded splint to support the injury without forcing it into place.',
      name: 'fracturesStep2Desc',
      desc: '',
      args: [],
    );
  }

  /// `Apply Cold Compress`
  String get fracturesStep3Title {
    return Intl.message(
      'Apply Cold Compress',
      name: 'fracturesStep3Title',
      desc: '',
      args: [],
    );
  }

  /// `Reduce swelling with ice wrapped in cloth (avoid direct contact with skin).`
  String get fracturesStep3Desc {
    return Intl.message(
      'Reduce swelling with ice wrapped in cloth (avoid direct contact with skin).',
      name: 'fracturesStep3Desc',
      desc: '',
      args: [],
    );
  }

  /// `Seek Medical Help`
  String get fracturesStep4Title {
    return Intl.message(
      'Seek Medical Help',
      name: 'fracturesStep4Title',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services or take the person to hospital promptly.`
  String get fracturesStep4Desc {
    return Intl.message(
      'Call emergency services or take the person to hospital promptly.',
      name: 'fracturesStep4Desc',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get fracturesNotesHeading {
    return Intl.message(
      'Important Notes:',
      name: 'fracturesNotesHeading',
      desc: '',
      args: [],
    );
  }

  /// `Do NOT try to realign the bone or push it back in place.`
  String get fracturesNote1 {
    return Intl.message(
      'Do NOT try to realign the bone or push it back in place.',
      name: 'fracturesNote1',
      desc: '',
      args: [],
    );
  }

  /// `If bleeding, apply pressure around the wound (not directly on the bone).`
  String get fracturesNote2 {
    return Intl.message(
      'If bleeding, apply pressure around the wound (not directly on the bone).',
      name: 'fracturesNote2',
      desc: '',
      args: [],
    );
  }

  /// `Head Injury`
  String get headInjuryTitle {
    return Intl.message(
      'Head Injury',
      name: 'headInjuryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Head Injury First Aid`
  String get headInjuryHeading {
    return Intl.message(
      'Head Injury First Aid',
      name: 'headInjuryHeading',
      desc: '',
      args: [],
    );
  }

  /// `Providing first aid for head injuries is crucial to prevent further damage and complications.`
  String get headInjuryIntro {
    return Intl.message(
      'Providing first aid for head injuries is crucial to prevent further damage and complications.',
      name: 'headInjuryIntro',
      desc: '',
      args: [],
    );
  }

  /// `First Aid Steps:`
  String get headInjuryStepsHeading {
    return Intl.message(
      'First Aid Steps:',
      name: 'headInjuryStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Keep the person still and calm.`
  String get headInjuryStep1Title {
    return Intl.message(
      'Keep the person still and calm.',
      name: 'headInjuryStep1Title',
      desc: '',
      args: [],
    );
  }

  /// `Avoid moving the head or neck to prevent spinal injury.`
  String get headInjuryStep1Desc {
    return Intl.message(
      'Avoid moving the head or neck to prevent spinal injury.',
      name: 'headInjuryStep1Desc',
      desc: '',
      args: [],
    );
  }

  /// `Check for any bleeding or wounds on the head.`
  String get headInjuryStep2Title {
    return Intl.message(
      'Check for any bleeding or wounds on the head.',
      name: 'headInjuryStep2Title',
      desc: '',
      args: [],
    );
  }

  /// `Apply gentle pressure with a clean cloth if bleeding is present.`
  String get headInjuryStep2Desc {
    return Intl.message(
      'Apply gentle pressure with a clean cloth if bleeding is present.',
      name: 'headInjuryStep2Desc',
      desc: '',
      args: [],
    );
  }

  /// `If the person is unconscious, ensure the airway is clear.`
  String get headInjuryStep3Title {
    return Intl.message(
      'If the person is unconscious, ensure the airway is clear.',
      name: 'headInjuryStep3Title',
      desc: '',
      args: [],
    );
  }

  /// `If vomiting occurs, turn the person onto their side to prevent choking.`
  String get headInjuryStep4Title {
    return Intl.message(
      'If vomiting occurs, turn the person onto their side to prevent choking.',
      name: 'headInjuryStep4Title',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately.`
  String get headInjuryStep5Title {
    return Intl.message(
      'Call emergency services immediately.',
      name: 'headInjuryStep5Title',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get headInjuryNotesHeading {
    return Intl.message(
      'Important Notes:',
      name: 'headInjuryNotesHeading',
      desc: '',
      args: [],
    );
  }

  /// `Do not give the person food or drink.`
  String get headInjuryNote1 {
    return Intl.message(
      'Do not give the person food or drink.',
      name: 'headInjuryNote1',
      desc: '',
      args: [],
    );
  }

  /// `Avoid applying ice or cold packs without medical advice.`
  String get headInjuryNote2 {
    return Intl.message(
      'Avoid applying ice or cold packs without medical advice.',
      name: 'headInjuryNote2',
      desc: '',
      args: [],
    );
  }

  /// `Heart Conditions`
  String get heartConditionTitle {
    return Intl.message(
      'Heart Conditions',
      name: 'heartConditionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Heart Conditions First Aid`
  String get heartConditionHeading {
    return Intl.message(
      'Heart Conditions First Aid',
      name: 'heartConditionHeading',
      desc: '',
      args: [],
    );
  }

  /// `Immediate aid for heart conditions can save lives. Recognize symptoms and act quickly.`
  String get heartConditionIntro {
    return Intl.message(
      'Immediate aid for heart conditions can save lives. Recognize symptoms and act quickly.',
      name: 'heartConditionIntro',
      desc: '',
      args: [],
    );
  }

  /// `First Aid Steps:`
  String get heartConditionStepsHeading {
    return Intl.message(
      'First Aid Steps:',
      name: 'heartConditionStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get heartConditionNotesHeading {
    return Intl.message(
      'Important Notes:',
      name: 'heartConditionNotesHeading',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately.`
  String get heartConditionStep1 {
    return Intl.message(
      'Call emergency services immediately.',
      name: 'heartConditionStep1',
      desc: '',
      args: [],
    );
  }

  /// `Help the person to rest in a comfortable position.`
  String get heartConditionStep2 {
    return Intl.message(
      'Help the person to rest in a comfortable position.',
      name: 'heartConditionStep2',
      desc: '',
      args: [],
    );
  }

  /// `Loosen any tight clothing.`
  String get heartConditionStep3 {
    return Intl.message(
      'Loosen any tight clothing.',
      name: 'heartConditionStep3',
      desc: '',
      args: [],
    );
  }

  /// `If the person is unconscious but breathing, place them in the recovery position.`
  String get heartConditionStep4 {
    return Intl.message(
      'If the person is unconscious but breathing, place them in the recovery position.',
      name: 'heartConditionStep4',
      desc: '',
      args: [],
    );
  }

  /// `If trained and the person is not breathing, start CPR immediately.`
  String get heartConditionStep5 {
    return Intl.message(
      'If trained and the person is not breathing, start CPR immediately.',
      name: 'heartConditionStep5',
      desc: '',
      args: [],
    );
  }

  /// `Do not give the person any medication unless prescribed.`
  String get heartConditionNote1 {
    return Intl.message(
      'Do not give the person any medication unless prescribed.',
      name: 'heartConditionNote1',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm and provide reassurance.`
  String get heartConditionNote2 {
    return Intl.message(
      'Stay calm and provide reassurance.',
      name: 'heartConditionNote2',
      desc: '',
      args: [],
    );
  }

  /// `Added to saved topics`
  String get addedToSavedTopicsText {
    return Intl.message(
      'Added to saved topics',
      name: 'addedToSavedTopicsText',
      desc: '',
      args: [],
    );
  }

  /// `Removed from saved topics`
  String get removedFromSavedTopicsText {
    return Intl.message(
      'Removed from saved topics',
      name: 'removedFromSavedTopicsText',
      desc: '',
      args: [],
    );
  }

  /// `Poisons`
  String get poisonTitle {
    return Intl.message('Poisons', name: 'poisonTitle', desc: '', args: []);
  }

  /// `Poisoning First Aid`
  String get poisonHeading {
    return Intl.message(
      'Poisoning First Aid',
      name: 'poisonHeading',
      desc: '',
      args: [],
    );
  }

  /// `Immediate actions to take in case of poisoning.`
  String get poisonIntro {
    return Intl.message(
      'Immediate actions to take in case of poisoning.',
      name: 'poisonIntro',
      desc: '',
      args: [],
    );
  }

  /// `First Aid Steps:`
  String get poisonStepsHeading {
    return Intl.message(
      'First Aid Steps:',
      name: 'poisonStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Important Notes:`
  String get poisonNotesHeading {
    return Intl.message(
      'Important Notes:',
      name: 'poisonNotesHeading',
      desc: '',
      args: [],
    );
  }

  /// `Remove the person from the source of poison if safe to do so.`
  String get poisonStep1 {
    return Intl.message(
      'Remove the person from the source of poison if safe to do so.',
      name: 'poisonStep1',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately or a poison control center.`
  String get poisonStep2 {
    return Intl.message(
      'Call emergency services immediately or a poison control center.',
      name: 'poisonStep2',
      desc: '',
      args: [],
    );
  }

  /// `Check the person’s airway, breathing, and circulation.`
  String get poisonStep3 {
    return Intl.message(
      'Check the person’s airway, breathing, and circulation.',
      name: 'poisonStep3',
      desc: '',
      args: [],
    );
  }

  /// `If the person is unconscious and not breathing, begin CPR.`
  String get poisonStep4 {
    return Intl.message(
      'If the person is unconscious and not breathing, begin CPR.',
      name: 'poisonStep4',
      desc: '',
      args: [],
    );
  }

  /// `Do not induce vomiting unless instructed by a medical professional.`
  String get poisonStep5 {
    return Intl.message(
      'Do not induce vomiting unless instructed by a medical professional.',
      name: 'poisonStep5',
      desc: '',
      args: [],
    );
  }

  /// `Try to identify the poison and keep the container or sample for medical staff.`
  String get poisonNote1 {
    return Intl.message(
      'Try to identify the poison and keep the container or sample for medical staff.',
      name: 'poisonNote1',
      desc: '',
      args: [],
    );
  }

  /// `Avoid giving food, drinks, or medications without medical advice.`
  String get poisonNote2 {
    return Intl.message(
      'Avoid giving food, drinks, or medications without medical advice.',
      name: 'poisonNote2',
      desc: '',
      args: [],
    );
  }

  /// `Recovery Position`
  String get recoveryPositionTitle {
    return Intl.message(
      'Recovery Position',
      name: 'recoveryPositionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Recovery Position`
  String get recoveryPositionHeading {
    return Intl.message(
      'Recovery Position',
      name: 'recoveryPositionHeading',
      desc: '',
      args: [],
    );
  }

  /// `The recovery position helps keep the airway clear and open. It also ensures that any fluids can drain from the mouth and prevents choking.`
  String get recoveryPositionIntro {
    return Intl.message(
      'The recovery position helps keep the airway clear and open. It also ensures that any fluids can drain from the mouth and prevents choking.',
      name: 'recoveryPositionIntro',
      desc: '',
      args: [],
    );
  }

  /// `Steps to place someone in the recovery position:`
  String get recoveryPositionStepsHeading {
    return Intl.message(
      'Steps to place someone in the recovery position:',
      name: 'recoveryPositionStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Important:`
  String get recoveryPositionImportantHeading {
    return Intl.message(
      'Important:',
      name: 'recoveryPositionImportantHeading',
      desc: '',
      args: [],
    );
  }

  /// `Kneel beside the person.`
  String get recoveryPositionStep1 {
    return Intl.message(
      'Kneel beside the person.',
      name: 'recoveryPositionStep1',
      desc: '',
      args: [],
    );
  }

  /// `Place the arm nearest to you at a right angle to their body, with the elbow bent and the palm facing upwards.`
  String get recoveryPositionStep2 {
    return Intl.message(
      'Place the arm nearest to you at a right angle to their body, with the elbow bent and the palm facing upwards.',
      name: 'recoveryPositionStep2',
      desc: '',
      args: [],
    );
  }

  /// `Bring their far arm across the chest and hold the back of their hand against their cheek closest to you.`
  String get recoveryPositionStep3 {
    return Intl.message(
      'Bring their far arm across the chest and hold the back of their hand against their cheek closest to you.',
      name: 'recoveryPositionStep3',
      desc: '',
      args: [],
    );
  }

  /// `Bend the far knee up to a right angle.`
  String get recoveryPositionStep4 {
    return Intl.message(
      'Bend the far knee up to a right angle.',
      name: 'recoveryPositionStep4',
      desc: '',
      args: [],
    );
  }

  /// `Carefully roll the person onto their side by pulling on the bent knee.`
  String get recoveryPositionStep5 {
    return Intl.message(
      'Carefully roll the person onto their side by pulling on the bent knee.',
      name: 'recoveryPositionStep5',
      desc: '',
      args: [],
    );
  }

  /// `Adjust the top leg so that both the hip and knee are bent at right angles.`
  String get recoveryPositionStep6 {
    return Intl.message(
      'Adjust the top leg so that both the hip and knee are bent at right angles.',
      name: 'recoveryPositionStep6',
      desc: '',
      args: [],
    );
  }

  /// `Tilt the head back slightly to keep the airway open.`
  String get recoveryPositionStep7 {
    return Intl.message(
      'Tilt the head back slightly to keep the airway open.',
      name: 'recoveryPositionStep7',
      desc: '',
      args: [],
    );
  }

  /// `Make sure their mouth is open to allow any fluids to drain.`
  String get recoveryPositionStep8 {
    return Intl.message(
      'Make sure their mouth is open to allow any fluids to drain.',
      name: 'recoveryPositionStep8',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services if the person is unconscious.`
  String get recoveryPositionNote1 {
    return Intl.message(
      'Call emergency services if the person is unconscious.',
      name: 'recoveryPositionNote1',
      desc: '',
      args: [],
    );
  }

  /// `Stay with the person until help arrives.`
  String get recoveryPositionNote2 {
    return Intl.message(
      'Stay with the person until help arrives.',
      name: 'recoveryPositionNote2',
      desc: '',
      args: [],
    );
  }

  /// `Check breathing regularly.`
  String get recoveryPositionNote3 {
    return Intl.message(
      'Check breathing regularly.',
      name: 'recoveryPositionNote3',
      desc: '',
      args: [],
    );
  }

  /// `Seizures`
  String get seizuresTitle {
    return Intl.message('Seizures', name: 'seizuresTitle', desc: '', args: []);
  }

  /// `Seizures`
  String get seizuresHeading {
    return Intl.message(
      'Seizures',
      name: 'seizuresHeading',
      desc: '',
      args: [],
    );
  }

  /// `A seizure is a sudden, uncontrolled electrical disturbance in the brain. It can cause changes in behavior, movements, or consciousness.`
  String get seizuresIntro {
    return Intl.message(
      'A seizure is a sudden, uncontrolled electrical disturbance in the brain. It can cause changes in behavior, movements, or consciousness.',
      name: 'seizuresIntro',
      desc: '',
      args: [],
    );
  }

  /// `First Aid for Seizures:`
  String get seizuresFirstAidHeading {
    return Intl.message(
      'First Aid for Seizures:',
      name: 'seizuresFirstAidHeading',
      desc: '',
      args: [],
    );
  }

  /// `Important:`
  String get seizuresImportantHeading {
    return Intl.message(
      'Important:',
      name: 'seizuresImportantHeading',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm and keep others away from the person to avoid injury.`
  String get seizuresStep1 {
    return Intl.message(
      'Stay calm and keep others away from the person to avoid injury.',
      name: 'seizuresStep1',
      desc: '',
      args: [],
    );
  }

  /// `Protect their head by placing something soft underneath.`
  String get seizuresStep2 {
    return Intl.message(
      'Protect their head by placing something soft underneath.',
      name: 'seizuresStep2',
      desc: '',
      args: [],
    );
  }

  /// `Turn the person onto their side to keep the airway clear.`
  String get seizuresStep3 {
    return Intl.message(
      'Turn the person onto their side to keep the airway clear.',
      name: 'seizuresStep3',
      desc: '',
      args: [],
    );
  }

  /// `Do not restrain their movements or put anything in their mouth.`
  String get seizuresStep4 {
    return Intl.message(
      'Do not restrain their movements or put anything in their mouth.',
      name: 'seizuresStep4',
      desc: '',
      args: [],
    );
  }

  /// `Time the seizure. If it lasts longer than 5 minutes, call emergency services.`
  String get seizuresStep5 {
    return Intl.message(
      'Time the seizure. If it lasts longer than 5 minutes, call emergency services.',
      name: 'seizuresStep5',
      desc: '',
      args: [],
    );
  }

  /// `After the seizure, comfort and reassure the person as they regain consciousness.`
  String get seizuresStep6 {
    return Intl.message(
      'After the seizure, comfort and reassure the person as they regain consciousness.',
      name: 'seizuresStep6',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services if this is the person’s first seizure.`
  String get seizuresNote1 {
    return Intl.message(
      'Call emergency services if this is the person’s first seizure.',
      name: 'seizuresNote1',
      desc: '',
      args: [],
    );
  }

  /// `Seek medical help if the person has trouble breathing or does not wake up after the seizure.`
  String get seizuresNote2 {
    return Intl.message(
      'Seek medical help if the person has trouble breathing or does not wake up after the seizure.',
      name: 'seizuresNote2',
      desc: '',
      args: [],
    );
  }

  /// `Shock`
  String get shockTitle {
    return Intl.message('Shock', name: 'shockTitle', desc: '', args: []);
  }

  /// `Shock`
  String get shockHeading {
    return Intl.message('Shock', name: 'shockHeading', desc: '', args: []);
  }

  /// `Shock is a life-threatening condition that occurs when the body is not getting enough blood flow, leading to organ failure.`
  String get shockIntro {
    return Intl.message(
      'Shock is a life-threatening condition that occurs when the body is not getting enough blood flow, leading to organ failure.',
      name: 'shockIntro',
      desc: '',
      args: [],
    );
  }

  /// `Signs of Shock:`
  String get shockSignsHeading {
    return Intl.message(
      'Signs of Shock:',
      name: 'shockSignsHeading',
      desc: '',
      args: [],
    );
  }

  /// `First Aid for Shock:`
  String get shockFirstAidHeading {
    return Intl.message(
      'First Aid for Shock:',
      name: 'shockFirstAidHeading',
      desc: '',
      args: [],
    );
  }

  /// `Pale, cold, clammy skin`
  String get shockSign1 {
    return Intl.message(
      'Pale, cold, clammy skin',
      name: 'shockSign1',
      desc: '',
      args: [],
    );
  }

  /// `Rapid, weak pulse`
  String get shockSign2 {
    return Intl.message(
      'Rapid, weak pulse',
      name: 'shockSign2',
      desc: '',
      args: [],
    );
  }

  /// `Shallow breathing`
  String get shockSign3 {
    return Intl.message(
      'Shallow breathing',
      name: 'shockSign3',
      desc: '',
      args: [],
    );
  }

  /// `Confusion or loss of consciousness`
  String get shockSign4 {
    return Intl.message(
      'Confusion or loss of consciousness',
      name: 'shockSign4',
      desc: '',
      args: [],
    );
  }

  /// `Nausea or vomiting`
  String get shockSign5 {
    return Intl.message(
      'Nausea or vomiting',
      name: 'shockSign5',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately.`
  String get shockStep1 {
    return Intl.message(
      'Call emergency services immediately.',
      name: 'shockStep1',
      desc: '',
      args: [],
    );
  }

  /// `Lay the person down on their back.`
  String get shockStep2 {
    return Intl.message(
      'Lay the person down on their back.',
      name: 'shockStep2',
      desc: '',
      args: [],
    );
  }

  /// `Elevate the legs about 12 inches unless there is an injury that prevents this.`
  String get shockStep3 {
    return Intl.message(
      'Elevate the legs about 12 inches unless there is an injury that prevents this.',
      name: 'shockStep3',
      desc: '',
      args: [],
    );
  }

  /// `Keep the person warm and comfortable.`
  String get shockStep4 {
    return Intl.message(
      'Keep the person warm and comfortable.',
      name: 'shockStep4',
      desc: '',
      args: [],
    );
  }

  /// `Do not give the person anything to eat or drink.`
  String get shockStep5 {
    return Intl.message(
      'Do not give the person anything to eat or drink.',
      name: 'shockStep5',
      desc: '',
      args: [],
    );
  }

  /// `Monitor breathing and be prepared to perform CPR if necessary.`
  String get shockStep6 {
    return Intl.message(
      'Monitor breathing and be prepared to perform CPR if necessary.',
      name: 'shockStep6',
      desc: '',
      args: [],
    );
  }

  /// `Spinal Injury`
  String get spinalTitle {
    return Intl.message(
      'Spinal Injury',
      name: 'spinalTitle',
      desc: '',
      args: [],
    );
  }

  /// `A spinal injury involves damage to the spinal cord or bones of the spine, potentially leading to paralysis or loss of sensation.`
  String get spinalIntro {
    return Intl.message(
      'A spinal injury involves damage to the spinal cord or bones of the spine, potentially leading to paralysis or loss of sensation.',
      name: 'spinalIntro',
      desc: '',
      args: [],
    );
  }

  /// `Signs of Spinal Injury:`
  String get spinalSignsHeading {
    return Intl.message(
      'Signs of Spinal Injury:',
      name: 'spinalSignsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Severe pain or pressure in neck or back`
  String get spinalSign1 {
    return Intl.message(
      'Severe pain or pressure in neck or back',
      name: 'spinalSign1',
      desc: '',
      args: [],
    );
  }

  /// `Weakness, paralysis, or loss of sensation in limbs`
  String get spinalSign2 {
    return Intl.message(
      'Weakness, paralysis, or loss of sensation in limbs',
      name: 'spinalSign2',
      desc: '',
      args: [],
    );
  }

  /// `Loss of bladder or bowel control`
  String get spinalSign3 {
    return Intl.message(
      'Loss of bladder or bowel control',
      name: 'spinalSign3',
      desc: '',
      args: [],
    );
  }

  /// `Unusual positioning of head or neck`
  String get spinalSign4 {
    return Intl.message(
      'Unusual positioning of head or neck',
      name: 'spinalSign4',
      desc: '',
      args: [],
    );
  }

  /// `Difficulty breathing`
  String get spinalSign5 {
    return Intl.message(
      'Difficulty breathing',
      name: 'spinalSign5',
      desc: '',
      args: [],
    );
  }

  /// `First Aid for Spinal Injury:`
  String get spinalFirstAidHeading {
    return Intl.message(
      'First Aid for Spinal Injury:',
      name: 'spinalFirstAidHeading',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately.`
  String get spinalStep1 {
    return Intl.message(
      'Call emergency services immediately.',
      name: 'spinalStep1',
      desc: '',
      args: [],
    );
  }

  /// `Do not move the injured person unless absolutely necessary.`
  String get spinalStep2 {
    return Intl.message(
      'Do not move the injured person unless absolutely necessary.',
      name: 'spinalStep2',
      desc: '',
      args: [],
    );
  }

  /// `If movement is necessary, stabilize the head and neck to prevent further injury.`
  String get spinalStep3 {
    return Intl.message(
      'If movement is necessary, stabilize the head and neck to prevent further injury.',
      name: 'spinalStep3',
      desc: '',
      args: [],
    );
  }

  /// `Keep the person lying flat and still.`
  String get spinalStep4 {
    return Intl.message(
      'Keep the person lying flat and still.',
      name: 'spinalStep4',
      desc: '',
      args: [],
    );
  }

  /// `Monitor breathing and be prepared to perform CPR if necessary.`
  String get spinalStep5 {
    return Intl.message(
      'Monitor breathing and be prepared to perform CPR if necessary.',
      name: 'spinalStep5',
      desc: '',
      args: [],
    );
  }

  /// `Reassure the injured person and keep them calm.`
  String get spinalStep6 {
    return Intl.message(
      'Reassure the injured person and keep them calm.',
      name: 'spinalStep6',
      desc: '',
      args: [],
    );
  }

  /// `Sprains and Strains`
  String get sprainsStrainsTitle {
    return Intl.message(
      'Sprains and Strains',
      name: 'sprainsStrainsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sprains are injuries to ligaments (tissue connecting bones), and strains are injuries to muscles or tendons.`
  String get sprainsStrainsIntro {
    return Intl.message(
      'Sprains are injuries to ligaments (tissue connecting bones), and strains are injuries to muscles or tendons.',
      name: 'sprainsStrainsIntro',
      desc: '',
      args: [],
    );
  }

  /// `Signs:`
  String get sprainsStrainsSignsHeading {
    return Intl.message(
      'Signs:',
      name: 'sprainsStrainsSignsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Pain and swelling`
  String get sprainsStrainsSign1 {
    return Intl.message(
      'Pain and swelling',
      name: 'sprainsStrainsSign1',
      desc: '',
      args: [],
    );
  }

  /// `Bruising or discoloration`
  String get sprainsStrainsSign2 {
    return Intl.message(
      'Bruising or discoloration',
      name: 'sprainsStrainsSign2',
      desc: '',
      args: [],
    );
  }

  /// `Limited ability to move the affected joint or muscle`
  String get sprainsStrainsSign3 {
    return Intl.message(
      'Limited ability to move the affected joint or muscle',
      name: 'sprainsStrainsSign3',
      desc: '',
      args: [],
    );
  }

  /// `Muscle spasms or weakness`
  String get sprainsStrainsSign4 {
    return Intl.message(
      'Muscle spasms or weakness',
      name: 'sprainsStrainsSign4',
      desc: '',
      args: [],
    );
  }

  /// `First Aid for Sprains and Strains:`
  String get sprainsStrainsFirstAidHeading {
    return Intl.message(
      'First Aid for Sprains and Strains:',
      name: 'sprainsStrainsFirstAidHeading',
      desc: '',
      args: [],
    );
  }

  /// `Rest the injured area and avoid putting weight on it.`
  String get sprainsStrainsStep1 {
    return Intl.message(
      'Rest the injured area and avoid putting weight on it.',
      name: 'sprainsStrainsStep1',
      desc: '',
      args: [],
    );
  }

  /// `Apply ice packs for 15-20 minutes every 2-3 hours to reduce swelling.`
  String get sprainsStrainsStep2 {
    return Intl.message(
      'Apply ice packs for 15-20 minutes every 2-3 hours to reduce swelling.',
      name: 'sprainsStrainsStep2',
      desc: '',
      args: [],
    );
  }

  /// `Compress the area with an elastic bandage, but not too tightly.`
  String get sprainsStrainsStep3 {
    return Intl.message(
      'Compress the area with an elastic bandage, but not too tightly.',
      name: 'sprainsStrainsStep3',
      desc: '',
      args: [],
    );
  }

  /// `Elevate the injured limb above heart level to reduce swelling.`
  String get sprainsStrainsStep4 {
    return Intl.message(
      'Elevate the injured limb above heart level to reduce swelling.',
      name: 'sprainsStrainsStep4',
      desc: '',
      args: [],
    );
  }

  /// `Take over-the-counter pain relief if needed.`
  String get sprainsStrainsStep5 {
    return Intl.message(
      'Take over-the-counter pain relief if needed.',
      name: 'sprainsStrainsStep5',
      desc: '',
      args: [],
    );
  }

  /// `Seek medical help if severe pain, swelling, or inability to move persists.`
  String get sprainsStrainsStep6 {
    return Intl.message(
      'Seek medical help if severe pain, swelling, or inability to move persists.',
      name: 'sprainsStrainsStep6',
      desc: '',
      args: [],
    );
  }

  /// `Stroke`
  String get strokeTitle {
    return Intl.message('Stroke', name: 'strokeTitle', desc: '', args: []);
  }

  /// `A stroke occurs when blood flow to part of the brain is interrupted or reduced, depriving brain tissue of oxygen and nutrients.`
  String get strokeIntro {
    return Intl.message(
      'A stroke occurs when blood flow to part of the brain is interrupted or reduced, depriving brain tissue of oxygen and nutrients.',
      name: 'strokeIntro',
      desc: '',
      args: [],
    );
  }

  /// `Signs and Symptoms:`
  String get strokeSignsHeading {
    return Intl.message(
      'Signs and Symptoms:',
      name: 'strokeSignsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Sudden numbness or weakness of face, arm, or leg, especially on one side of the body`
  String get strokeSign1 {
    return Intl.message(
      'Sudden numbness or weakness of face, arm, or leg, especially on one side of the body',
      name: 'strokeSign1',
      desc: '',
      args: [],
    );
  }

  /// `Confusion, trouble speaking or understanding speech`
  String get strokeSign2 {
    return Intl.message(
      'Confusion, trouble speaking or understanding speech',
      name: 'strokeSign2',
      desc: '',
      args: [],
    );
  }

  /// `Trouble seeing in one or both eyes`
  String get strokeSign3 {
    return Intl.message(
      'Trouble seeing in one or both eyes',
      name: 'strokeSign3',
      desc: '',
      args: [],
    );
  }

  /// `Difficulty walking, dizziness, loss of balance or coordination`
  String get strokeSign4 {
    return Intl.message(
      'Difficulty walking, dizziness, loss of balance or coordination',
      name: 'strokeSign4',
      desc: '',
      args: [],
    );
  }

  /// `Severe headache with no known cause`
  String get strokeSign5 {
    return Intl.message(
      'Severe headache with no known cause',
      name: 'strokeSign5',
      desc: '',
      args: [],
    );
  }

  /// `First Aid for Stroke:`
  String get strokeFirstAidHeading {
    return Intl.message(
      'First Aid for Stroke:',
      name: 'strokeFirstAidHeading',
      desc: '',
      args: [],
    );
  }

  /// `Call emergency services immediately. Time is critical.`
  String get strokeStep1 {
    return Intl.message(
      'Call emergency services immediately. Time is critical.',
      name: 'strokeStep1',
      desc: '',
      args: [],
    );
  }

  /// `Keep the person safe and comfortable, help them sit or lie down.`
  String get strokeStep2 {
    return Intl.message(
      'Keep the person safe and comfortable, help them sit or lie down.',
      name: 'strokeStep2',
      desc: '',
      args: [],
    );
  }

  /// `If unconscious but breathing, place in the recovery position.`
  String get strokeStep3 {
    return Intl.message(
      'If unconscious but breathing, place in the recovery position.',
      name: 'strokeStep3',
      desc: '',
      args: [],
    );
  }

  /// `Do not give food, drink, or medication.`
  String get strokeStep4 {
    return Intl.message(
      'Do not give food, drink, or medication.',
      name: 'strokeStep4',
      desc: '',
      args: [],
    );
  }

  /// `Monitor their breathing and responsiveness until help arrives.`
  String get strokeStep5 {
    return Intl.message(
      'Monitor their breathing and responsiveness until help arrives.',
      name: 'strokeStep5',
      desc: '',
      args: [],
    );
  }

  /// `Wound Care`
  String get woundCareTitle {
    return Intl.message(
      'Wound Care',
      name: 'woundCareTitle',
      desc: '',
      args: [],
    );
  }

  /// `Proper wound care helps prevent infection and promotes faster healing.`
  String get woundCareIntro {
    return Intl.message(
      'Proper wound care helps prevent infection and promotes faster healing.',
      name: 'woundCareIntro',
      desc: '',
      args: [],
    );
  }

  /// `Steps for Basic Wound Care:`
  String get woundCareStepsHeading {
    return Intl.message(
      'Steps for Basic Wound Care:',
      name: 'woundCareStepsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Wash your hands thoroughly before touching the wound.`
  String get woundCareStep1 {
    return Intl.message(
      'Wash your hands thoroughly before touching the wound.',
      name: 'woundCareStep1',
      desc: '',
      args: [],
    );
  }

  /// `Stop the bleeding by applying gentle pressure with a clean cloth.`
  String get woundCareStep2 {
    return Intl.message(
      'Stop the bleeding by applying gentle pressure with a clean cloth.',
      name: 'woundCareStep2',
      desc: '',
      args: [],
    );
  }

  /// `Clean the wound with clean water. Avoid using hydrogen peroxide or iodine directly as they may damage tissue.`
  String get woundCareStep3 {
    return Intl.message(
      'Clean the wound with clean water. Avoid using hydrogen peroxide or iodine directly as they may damage tissue.',
      name: 'woundCareStep3',
      desc: '',
      args: [],
    );
  }

  /// `Apply an antibiotic ointment to prevent infection.`
  String get woundCareStep4 {
    return Intl.message(
      'Apply an antibiotic ointment to prevent infection.',
      name: 'woundCareStep4',
      desc: '',
      args: [],
    );
  }

  /// `Cover the wound with a sterile bandage or dressing.`
  String get woundCareStep5 {
    return Intl.message(
      'Cover the wound with a sterile bandage or dressing.',
      name: 'woundCareStep5',
      desc: '',
      args: [],
    );
  }

  /// `Change the dressing daily or whenever it becomes wet or dirty.`
  String get woundCareStep6 {
    return Intl.message(
      'Change the dressing daily or whenever it becomes wet or dirty.',
      name: 'woundCareStep6',
      desc: '',
      args: [],
    );
  }

  /// `Watch for signs of infection: increased redness, swelling, warmth, pain, or pus.`
  String get woundCareStep7 {
    return Intl.message(
      'Watch for signs of infection: increased redness, swelling, warmth, pain, or pus.',
      name: 'woundCareStep7',
      desc: '',
      args: [],
    );
  }

  /// `When to Seek Medical Help:`
  String get woundCareMedicalHelpHeading {
    return Intl.message(
      'When to Seek Medical Help:',
      name: 'woundCareMedicalHelpHeading',
      desc: '',
      args: [],
    );
  }

  /// `The wound is deep, large, or won’t stop bleeding.`
  String get woundCareMedicalHelp1 {
    return Intl.message(
      'The wound is deep, large, or won’t stop bleeding.',
      name: 'woundCareMedicalHelp1',
      desc: '',
      args: [],
    );
  }

  /// `You see signs of infection.`
  String get woundCareMedicalHelp2 {
    return Intl.message(
      'You see signs of infection.',
      name: 'woundCareMedicalHelp2',
      desc: '',
      args: [],
    );
  }

  /// `The wound was caused by a dirty or rusty object, or an animal bite.`
  String get woundCareMedicalHelp3 {
    return Intl.message(
      'The wound was caused by a dirty or rusty object, or an animal bite.',
      name: 'woundCareMedicalHelp3',
      desc: '',
      args: [],
    );
  }

  /// `You have not had a tetanus shot in the last 5 years.`
  String get woundCareMedicalHelp4 {
    return Intl.message(
      'You have not had a tetanus shot in the last 5 years.',
      name: 'woundCareMedicalHelp4',
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
      Locale.fromSubtags(languageCode: 'ru'),
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
