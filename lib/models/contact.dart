class Contact {
  final int id;
  final String name;
  final int accountNumber;

  Contact(this.id, this.name, this.accountNumber) : assert(name != null && accountNumber != null && accountNumber > 0);

  Contact.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        accountNumber = json['accountNumber'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'accountNumber': accountNumber};

  @override
  String toString() => 'Contatc(id: $id, name: $name, accountNumber: $accountNumber)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Contact && o.name == name && o.accountNumber == accountNumber;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ accountNumber.hashCode;
}
