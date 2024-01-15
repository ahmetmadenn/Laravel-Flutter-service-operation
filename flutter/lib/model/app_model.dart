class Task {
  final int id;
  final String name;
  final String surname;
  final int age;
  final String gender;
  final String title;
  final String description;
  final String createdAt;
  final String updatedAt;

  Task({
    required this.id,
    required this.name,
    required this.surname,
    required this.age,
    required this.gender,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      surname: json['surname'] ?? '',
      age: json['age'] ?? '',
      gender: json['gender'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
    );
  }
}
