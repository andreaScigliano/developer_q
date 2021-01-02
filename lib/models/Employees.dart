class Employee{
  String name;
  String species;
  String gender;
  String url;
  Employee(this.name,this.species,this.gender,this.url);
  Employee.fromJson(Map<String,dynamic> json){
    name = json['name'];
    species = json['species'];
    gender = json['gender'];
    url = json['url'];  
  }
}