import 'package:adf_todo_list_provider/app/core/database/migrations/migration.dart';
import 'package:sqflite_common/sqlite_api.dart';

class MigrationV3 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('create table teste(id integer)');
  }

  @override
  void upgrade(Batch batch) {
    batch.execute('create table teste(id integer)');
  }
}
