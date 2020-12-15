import 'package:composta_app/dataModel/composta/compost.dart';
import 'package:composta_app/dataModel/database.dart';
import 'package:sembast/sembast.dart';

class CompostDao {
  static const String STORE_NAME = "Compostas";

  final _store = intMapStoreFactory.store(STORE_NAME);

  Future<Database> get _db async => await DBController.instance.database;

  //insert _todo to store
  Future insert(Compost p) async {
    var key = await _store.add(await _db, p.data);
    if (key != null) {
      p.id = key;
    }
    p.data['_id'] = p.id.toString();
    update(p);
  }

  //update _todo item in db
  Future update(Compost p) async {
    // finder is used to filter the object out for update
    final finder = Finder(filter: Filter.byKey(p.id));
    print("P.data: " + p.data.toString());
    await _store.update(await _db, p.data, finder: finder);
  }

  //delete _todo item
  Future delete(int id) async {
    //get refence to object to be deleted using the finder method of sembast,
    //specifying it's id
    final finder = Finder(filter: Filter.byKey(id));
    await _store.delete(await _db, finder: finder);
  }

  //get all listem from the db
  Future<List<Compost>> getAll() async {
    //sort the _todo item in order of their timestamp
    //that is entry time
    final finder = Finder();

    //get the data
    final snapshot = await _store.find(
      await _db,
      finder: finder,
    );

    //call the map operator on the data
    //this is so we can assign the correct value to the id from the store
    //After we return it as a list
    return snapshot.map((snapshot) {
      final todo = Compost.fromMap(snapshot.key, snapshot.value);
      print('Compostas: ' + todo.data.toString());
      return todo;
    }).toList();
  }
}
