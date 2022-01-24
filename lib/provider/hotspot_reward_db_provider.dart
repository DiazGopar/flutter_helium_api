import 'package:sqflite/sqflite.dart';

const String tableRewards = 'rewards';
const String columnId = 'id';
const String columnAccount = 'account';
const String columnAmount = 'amount';
const String columnBlock = 'block';
const String columnTimestamp = 'timestamp';

class RewardsRecord {
  int id;
  String account;
  int amount;
  int block;
  DateTime timestamp;

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      columnAccount: account,
      columnAmount: amount,
      columnBlock: block,
      columnTimestamp: timestamp,
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  RewardsRecord(this.id, this.account, this.amount, this.block, this.timestamp);

  RewardsRecord.fromMap(Map<String, Object?> map) {
    id = map[columnId];
    account = map[columnAccount];
    amount = map[columnAmount];
    block = map[columnBlock] ?? 0;
    timestamp =
        DateTime.tryParse(map[columnTimestamp].toString()) ?? DateTime(1900);
  }
}

class RewardsProvider {
  Database db;

  Future open(String path) async {
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
create table $tableRewards ( 
  $columnId integer primary key autoincrement, 
  $columnAccount text not null,
  $columnAmount integer not null,
  $columnBlock integer not null,
  $columnTimestamp datetime not null)
''');
    });
  }

  Future<RewardsRecord> insert(RewardsRecord reward) async {
    reward.id = await db.insert(tableRewards, reward.toMap());
    return reward;
  }

  Future<Todo> getTodo(int id) async {
    List<Map> maps = await db.query(tableTodo,
        columns: [columnId, columnDone, columnTitle],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.length > 0) {
      return Todo.fromMap(maps.first);
    }
    return null;
  }

  Future<int> delete(int id) async {
    return await db.delete(tableTodo, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> update(Todo todo) async {
    return await db.update(tableTodo, todo.toMap(),
        where: '$columnId = ?', whereArgs: [todo.id]);
  }

  Future close() async => db.close();
}
