import 'dart:convert';

class Notes {
  int id;
  String notes;
  Notes({
    required this.id,
    required this.notes,
  });

  Notes copyWith({
    int? id,
    String? notes,
  }) {
    return Notes(
      id: id ?? this.id,
      notes: notes ?? this.notes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'body': notes,
    };
  }

  factory Notes.fromMap(Map<String, dynamic> map) {
    return Notes(
      id: map['id']?.toInt() ?? 0,
      notes: map['body'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Notes.fromJson(String source) => Notes.fromMap(json.decode(source));

  @override
  String toString() => 'Notes(id: $id, notes: $notes)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Notes && other.id == id && other.notes == notes;
  }

  @override
  int get hashCode => id.hashCode ^ notes.hashCode;
}
