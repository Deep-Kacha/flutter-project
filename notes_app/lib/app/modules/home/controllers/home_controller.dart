import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/note_model.dart';
import '../../../data/repositories/note_repository.dart';
import '../../home/views/widgets/add_note_bottom_sheet.dart';

class HomeController extends GetxController {
  final NoteRepository _noteRepository;
  HomeController({required NoteRepository noteRepository})
      : _noteRepository = noteRepository;

  final RxList<NoteModel> _notes = <NoteModel>[].obs;
  final RxBool _isLoading = false.obs;
  final RxString _errorMessage = ''.obs;

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  List<NoteModel> get notes => _notes;
  bool get isLoading => _isLoading.value;
  String get errorMessage => _errorMessage.value;
  bool get hasNotes => _notes.isNotEmpty;

  Rx<NoteModel?> editingNote = Rx<NoteModel?>(null);

  @override
  void onInit() {
    super.onInit();
    fetchAllNotes();
  }

  @override
  void onClose() {
    titleController.dispose();
    descriptionController.dispose();
    super.onClose();
  }

  Future<void> fetchAllNotes() async {
    try {
      _isLoading.value = true;
      _errorMessage.value = '';
      final notes = await _noteRepository.getAllNotes();
      _notes.assignAll(notes);
    } catch (e) {
      _errorMessage.value = 'Failed to load notes: ${e.toString()}';
      _showErrorSnackbar('Failed to load notes');
    } finally {
      _isLoading.value = false;
    }
  }

  Future<void> createNote() async {
    if (!_validateNoteInput()) return;
    try {
      _isLoading.value = true;
      await _noteRepository.createNote(
        title: titleController.text.trim(),
        description: descriptionController.text.trim(),
      );
      _clearForm();
      await fetchAllNotes();
      Get.back();
      _showSuccessSnackbar('Note created successfully!');
    } catch (e) {
      _showErrorSnackbar('Failed to create note');
    } finally {
      _isLoading.value = false;
    }
  }

  Future<void> updateNote() async {
    if (editingNote.value == null || !_validateNoteInput()) return;
    try {
      _isLoading.value = true;
      final success = await _noteRepository.updateNote(
        id: editingNote.value!.id!,
        title: titleController.text.trim(),
        description: descriptionController.text.trim(),
      );
      if (success) {
        _clearForm();
        await fetchAllNotes();
        Get.back();
        _showSuccessSnackbar('Note updated successfully!');
      } else {
        _showErrorSnackbar('Failed to update note');
      }
    } catch (e) {
      _showErrorSnackbar('Failed to update note');
    } finally {
      _isLoading.value = false;
    }
  }

  Future<void> deleteNote(NoteModel note) async {
    final confirmed = await _showDeleteConfirmation();
    if (!confirmed) return;
    try {
      _isLoading.value = true;
      final success = await _noteRepository.deleteNote(note.id!);
      if (success) {
        await fetchAllNotes();
        _showSuccessSnackbar('Note deleted successfully!');
      } else {
        _showErrorSnackbar('Failed to delete note');
      }
    } catch (e) {
      _showErrorSnackbar('Failed to delete note');
    } finally {
      _isLoading.value = false;
    }
  }

  void showAddNoteBottomSheet() {
    editingNote.value = null;
    _clearForm();
    Get.bottomSheet(
      const AddNoteBottomSheet(),
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  void showEditNoteBottomSheet(NoteModel note) {
    editingNote.value = note;
    titleController.text = note.title;
    descriptionController.text = note.description;
    Get.bottomSheet(
      const AddNoteBottomSheet(),
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  bool _validateNoteInput() {
    final title = titleController.text.trim();
    final description = descriptionController.text.trim();
    if (title.isEmpty) {
      _showErrorSnackbar('Please enter a title');
      return false;
    }
    if (description.isEmpty) {
      _showErrorSnackbar('Please enter a description');
      return false;
    }
    return true;
  }

  void _clearForm() {
    titleController.clear();
    descriptionController.clear();
    editingNote.value = null;
  }

  void _showSuccessSnackbar(String message) {
    Get.snackbar(
      'Success',
      message,
      backgroundColor: Colors.green.withOpacity(0.8),
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  void _showErrorSnackbar(String message) {
    Get.snackbar(
      'Error',
      message,
      backgroundColor: Colors.red.withOpacity(0.8),
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
    );
  }

  Future<bool> _showDeleteConfirmation() async {
    final result = await Get.dialog<bool>(
      AlertDialog(
        title: const Text('Delete Note'),
        content: const Text('Are you sure you want to delete this note?'),
        actions: [
          TextButton(onPressed: () => Get.back(result: false), child: const Text('Cancel')),
          TextButton(onPressed: () => Get.back(result: true), style: TextButton.styleFrom(foregroundColor: Colors.red), child: const Text('Delete')),
        ],
      ),
    );
    return result ?? false;
  }

  Future<void> onRefresh() async {
    await fetchAllNotes();
  }
}
