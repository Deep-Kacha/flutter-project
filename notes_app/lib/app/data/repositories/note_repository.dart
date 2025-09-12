import '../models/note_model.dart';
import '../providers/database_provider.dart';

class NoteRepository {
  final DatabaseProvider _databaseProvider;

  NoteRepository({DatabaseProvider? databaseProvider})
      : _databaseProvider = databaseProvider ?? DatabaseProvider();

  Future<int> createNote({
    required String title,
    required String description,
  }) async {
    final now = DateTime.now();
    final note = NoteModel(
      title: title,
      description: description,
      createdAt: now,
      updatedAt: now,
    );
    return await _databaseProvider.insertNote(note);
  }

  Future<List<NoteModel>> getAllNotes() async {
    try {
      return await _databaseProvider.getAllNotes();
    } catch (e) {
      throw Exception('Failed to fetch notes: $e');
    }
  }

  Future<NoteModel?> getNoteById(int id) async {
    try {
      return await _databaseProvider.getNoteById(id);
    } catch (e) {
      throw Exception('Failed to fetch note: $e');
    }
  }

  Future<bool> updateNote({
    required int id,
    required String title,
    required String description,
  }) async {
    try {
      final existingNote = await _databaseProvider.getNoteById(id);
      if (existingNote == null) {
        throw Exception('Note not found');
      }
      final updatedNote = existingNote.copyWith(
        title: title,
        description: description,
        updatedAt: DateTime.now(),
      );
      final rowsAffected = await _databaseProvider.updateNote(updatedNote);
      return rowsAffected > 0;
    } catch (e) {
      throw Exception('Failed to update note: $e');
    }
  }

  Future<bool> deleteNote(int id) async {
    try {
      final rowsAffected = await _databaseProvider.deleteNote(id);
      return rowsAffected > 0;
    } catch (e) {
      throw Exception('Failed to delete note: $e');
    }
  }

  Future<int> getNotesCount() async {
    try {
      return await _databaseProvider.getNotesCount();
    } catch (e) {
      throw Exception('Failed to get notes count: $e');
    }
  }
}
