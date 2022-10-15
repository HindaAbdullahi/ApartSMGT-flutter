import 'dart:convert';
List<Emp> userFromJson(String str) => List<Emp>.from(json.decode(str).map((x) => Emp.fromJson(x)));

String userToJson(List<Emp> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Emp {
    Emp({
        required this.id,
        required this.empName,
        required this.empPhone,
        required this.email,
        required this.gender,
        required this.address,
        required this.empDept,
        required this.salary,
        required this.status,
        required this.empEmage,
        required this.createdAt,
        required this.updatedAt,
    });

    String id;
    String empName;
    int empPhone;
    String email;
    String gender;
    String address;
    String empDept;
    double salary;
    String status;
    String empEmage;
    DateTime createdAt;
    DateTime updatedAt;

    factory Emp.fromJson(Map<String, dynamic> json) => Emp(
        id: json["_id"],
        empName: json["empName"],
        empPhone: json["empPhone"],
        email: json["email"],
        gender: json["gender"],
        address: json[" address"],
        empDept: json["empDept"], 
        salary: json["salary"],
        status: json["status"],
        empEmage: json["empEmage"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "empName": empName,
        "empPhone": empPhone, 
        "email": email,
        "address": address,
        "empDept": empDept,
        "salary": salary,
        "status": status  ,
        "empImage": empEmage,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
    };
}