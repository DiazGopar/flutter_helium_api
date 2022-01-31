import 'package:sqflite/sqflite.dart';

const String tableRewards = 'rewards';
const String columnId = 'id';
const String columnAccount = 'account';
const String columnAmount = 'amount';
const String columnBlock = 'block';
const String columnTimestamp = 'timestamp';

class RewardsRecord {
  final int? id;
  final String account;
  final int amount;
  final int block;
  final DateTime timestamp;

  RewardsRecord({
    this.id,
    required this.account,
    required this.amount,
    required this.block,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
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

  RewardsRecord.fromMap(Map<String, dynamic> map)
      : id = map[columnId]?.toInt() ?? 0,
        account = map[columnAccount] ?? "",
        amount = map[columnAmount] ?? 0,
        block = map[columnBlock] ?? 0,
        timestamp = DateTime.tryParse(map[columnTimestamp].toString()) ??
            DateTime(1900);
}

class RewardsProvider {
  late Database db;

  Future open(String path) async {
    db = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          create table $tableRewards ( 
            $columnId integer primary key autoincrement, 
            $columnAccount text not null,
            $columnAmount integer not null,
            $columnBlock integer not null,
            $columnTimestamp datetime not null)
          ''');
      },
    );
  }

  Future<int> insert(RewardsRecord reward) async {
    return await db.insert(
      tableRewards,
      reward.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<RewardsRecord?> getRewardRecord(int id) async {
    List<Map<String, dynamic>> maps = await db.query(
      tableRewards,
      columns: [
        columnId,
        columnAccount,
        columnAmount,
        columnBlock,
        columnTimestamp
      ],
      where: '$columnId = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return RewardsRecord.fromMap(maps.first);
    }
    return null;
  }

  Future<int> delete(int id) async {
    return await db
        .delete(tableRewards, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> update(RewardsRecord rewardsRecord) async {
    return await db.update(tableRewards, rewardsRecord.toMap(),
        where: '$columnId = ?', whereArgs: [rewardsRecord.id]);
  }

  Future close() async => db.close();
}
