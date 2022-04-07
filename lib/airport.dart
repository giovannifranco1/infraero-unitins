class Airport {
  String? name;
  String city;
  String state;

  Airport({
    required this.city,
    required this.state,
    this.name,
  });

  @override
  String toString() {
    return '\nname: $name \ncity: $city \nstate: $state\n';
  }
}
