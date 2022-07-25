// TODO: Put public facing types in this file.

late final Swell _swell;

class Swell {
  final Uri _url;
  final String _store;
  final String _key;

  get url => _url;
  get store => _store;
  get key => _key;

  static get instance => _swell;

  //Swell(this.store, this.key);
  static init({required String store, required String key}) =>
      _swell = Swell._(store: store, key: key);

  Swell._({required String store, required String key})
      : _url = Uri.parse('https://$store.swell.store/api'),
        _key = key,
        _store = store;
}
