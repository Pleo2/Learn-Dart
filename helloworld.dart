var string = 'string';
var number = 2007;
var flyByObject = ['jupiter', 'saturn', 'Uranus', 'Netune'];
var images = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};
var month = ['hello', 'april', 'june', 'decenbxer'];

void main() {
  // String -> int
  var one = int.parse('1');
  assert(one == 1);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  if (number > 2001) {
    print('21th century');
  } else {
    print('20th century');
  }

  for (int month = 1; month <= 3; month++) {
    print(month);
  }

  // final = let en js
  for (final object in flyByObject) {
    print(object);
  }

  while (number < 2016) {
    number += 1;
  }

  print(string);
  print(number);

  useRecord();
  useList();
  useSet();
  useMap();
  urlMethos();
}

//* functions Url
void urlMethos() {
  var uri = 'https://example.org/api?foo=some message';
  var encoded = Uri.encodeFull(uri);
  assert(encoded == 'https://example.org/api?foo=some%20message', 'isEncoded');
  var decoded = Uri.decodeFull(encoded);
  assert(uri == decoded, 'isDecoded');

  // parse Uri
  var uriToParse = Uri.parse('https://example.org:8080/foo/bar#frag');

  assert(uriToParse.scheme == 'https', 'http');
  assert(uriToParse.host == 'example.org', 'host');
  assert(uriToParse.path == '/foo/bar', 'path');
  assert(uriToParse.fragment == 'frag', 'fragment');
  assert(uriToParse.origin == 'https://example.org:8080', 'origin');
  var newUri = Uri(
      scheme: 'https',
      host: 'example.org',
      path: '/foo/bar',
      fragment: 'frag',
      queryParameters: {'lang': 'dart'});
  assert(uri.toString() == 'https://example.org/foo/bar?lang=dart#frag');

  print(newUri);

  var httpUri = Uri.http('example.org', '/foo/bar', {'lang': 'dart'});
  var httpsUri = Uri.https('example.org', '/foo/bar', {'lang': 'dart'});

  assert(httpUri.toString() == 'http://example.org/foo/bar?lang=dart');
  assert(httpsUri.toString() == 'https://example.org/foo/bar?lang=dart');
}

//* functions Records
// this is a map
final json = <String, dynamic>{
  'name': 'Dash',
  'age': 10,
  'color': 'blue',
};
void useRecord() {
  var record = ('first', a: 2, b: true, 'last');
  //assing type to record
  ({int r, int g, int b}) rgb = (r: 100, g: 100, b: 150);
  print(rgb);
  print(record.$1);
  print(record.a);
  print(record.b);
  print(record.$2);

  var (name, age) = getUserInfo(json);

  print({name, age});
  // check if the key exist
}

// function to record values in a record
(String name, int age) getUserInfo(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

//* function List
var list = ['Car', 'Boat', 'Plane'];
var length = list.length;
void useList() {
  //declarate type of a List
  var names = <String>[];
  names.add('hola');
  assert(names.length == 5);
  // names.add(19); this throw a error for the type

  var teas = ['green', 'black', 'chamomile', 'earl grey'];

  // foreach
  teas.forEach((tea) => print('I drink $tea'));

  // map
  var loudTeas = teas.map((tea) => tea.toUpperCase());
  loudTeas.forEach(print);
  var upperLoudTeas = teas.map((tea) => tea.toUpperCase()).toList();
  upperLoudTeas.forEach(print);
  // where == filter

  bool isDecaffeinated(String teaName) => teaName == 'chamomile';
  var descaffeinatdeTeas = teas.where((tea) => isDecaffeinated(tea));

  // Use any() to check whether at least one item in the
  // the any = find
  assert(teas.any(descaffeinatdeTeas as bool Function(String element)));
  // filter
  assert(!teas.every(isDecaffeinated));
}

//* Function Set
var set = <dynamic>{'string'};
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
void useSet() {
  set.add(string);
  set.addAll(halogens); // copy each element of the array
  print(set);
  // with const the variable is no mutabel throw error
  // final constantSet = const {
  //   'fluorine',
  //   'chlorine',
  //   'bromine',
  //   'iodine',
  //   'astatine',
  // };
  // constantSet.add('helium'); // This line will cause an error.

  // remove item from set
  //

  var ingredients = Set<String>();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

// Check whether an item is in the set.
  assert(ingredients.contains('titanium'));

// Check whether all the items are in the set.
  assert(ingredients.containsAll(['titanium', 'xenon']));

// Check congruence between 2 Set
  var element = Set<String>();
  element.addAll(['gold', 'titanium', 'xenon']);
// Create the intersection of two sets.
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  assert(intersection.length == 1);
  assert(intersection.contains('xenon'));
}

//* functions map
var gifts = <String, String>{
  'first': 'partrige',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};
var nobleGases = <int, String>{
  2: 'helium',
  10: 'neon',
  18: 'argon',
};
void useMap() {
  var gifts1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  assert(gifts1['first'] == 'partridge');

  var nobleGases2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  assert(nobleGases2[18] == 'helium');

  // Get all keys from map

  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

// Get all the keys as an unordered collection
// (an Iterable).
  var keys = hawaiianBeaches.keys;

  assert(keys.length == 3);
  assert(Set.from(keys).contains('Oahu'));

// Get all the values as an unordered collection
// (an Iterable of Lists).
  var values = hawaiianBeaches.values;
  assert(values.length == 3);
  assert(values.any((v) => v.contains('Waikiki')));

  // check whether a map contain a key
  assert(hawaiianBeaches.containsKey('Oahu'));
  assert(!hawaiianBeaches.containsKey('Florida'));
  print(Map<String, List>.of(hawaiianBeaches));

  // var teamAssignments = <String, String>{};
  // teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
  // assert(teamAssignments['Catcher'] != null);
}
// TODO Assert comprender y usos
