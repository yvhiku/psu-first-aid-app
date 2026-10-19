const supportEmail = 'yvhiku@yandex.ru';
const supportPhone = '+79960808085';

Uri supportEmailUri(String subject) => Uri(
  scheme: 'mailto',
  path: supportEmail,
  query: 'subject=${Uri.encodeComponent(subject)}',
);

Uri get supportPhoneUri => Uri(scheme: 'tel', path: supportPhone);
