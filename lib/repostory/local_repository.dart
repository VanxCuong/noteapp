import 'package:sqflite/sqflite.dart';

class LocalRepository {
  // Xây dựng hàm tạo private
  LocalRepository._internal();

  // Lưu cache để ko tạo nhiêu đối tượng
  static final _cache = <String, LocalRepository>{};

  // putIfAbsent: Khởi tạo nếu như chưa có => Tạo duy nhất 1 lần
  // Tạo 1 getter để lấy chính nó ra 
  static LocalRepository get instance =>
      _cache.putIfAbsent("LocalPersistence", () => LocalRepository._internal());

  Database _db;

  Future _init() async {
    var databasesPath = await getDatabasesPath();

  }
}
