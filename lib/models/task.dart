import 'dart:convert';
class Task {
  int? id;
  String? title;
  String? note;
  int? isCompleted;
  String? date;
  String? startTime;
  String? endTime;
  int? color;
  int? remind;
  String? repeat;

//<editor-fold desc="Data Methods">

  Task({
    this.title,
    this.note,
    this.isCompleted,
    this.date,
    this.startTime,
    this.endTime,
    this.color,
    this.remind,
    this.repeat,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Task &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          note == other.note &&
          isCompleted == other.isCompleted &&
          date == other.date &&
          startTime == other.startTime &&
          endTime == other.endTime &&
          color == other.color &&
          remind == other.remind);

  @override
  int get hashCode =>
      title.hashCode ^
      note.hashCode ^
      isCompleted.hashCode ^
      date.hashCode ^
      startTime.hashCode ^
      endTime.hashCode ^
      color.hashCode ^
      remind.hashCode;

  @override
  String toString() {
    return 'Task{' +
        ' title: $title,' +
        ' note: $note,' +
        ' isCompleted: $isCompleted,' +
        ' date: $date,' +
        ' startTime: $startTime,' +
        ' endTime: $endTime,' +
        ' color: $color,' +
        ' remind: $remind,' +
        '}';
  }

  Task copyWith({
    String? title,
    String? note,
    int? isCompleted,
    String? date,
    String? startTime,
    String? endTime,
    int? color,
    int? remind,
    String? repeat,
  }) {
    return Task(
      title: title ?? this.title,
      note: note ?? this.note,
      isCompleted: isCompleted ?? this.isCompleted,
      date: date ?? this.date,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      color: color ?? this.color,
      remind: remind ?? this.remind,
      repeat: repeat ?? this.repeat,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id' : id,
      'title': title,
      'note': note,
      'isCompleted': isCompleted,
      'date': date,
      'startTime': startTime,
      'endTime': endTime,
      'color': color,
      'remind': remind,
      'repeat': repeat,
    };
  }

    Task.fromJson(Map<String, dynamic> json) {
      title = json['title'] as String;
      note = json['note'] as String;
      isCompleted = json['isCompleted'] as int;
      date = json['date'] as String;
      startTime = json['startTime'] as String;
      endTime = json['endTime'] as String;
      color = json['color'] as int;
      remind = json['remind'] as int;
      repeat = json['repeat'] as String;
  }


//</editor-fold>
}
