class District {
  String name;
  District(this.name);

  static List<District> districtList = [
    District('Nyarugenge'),
    District('Gasabo'),
    District('Rubavu'),
    District('Karongi'),
    District('Rusizi'),
  ];

  @override
  String toString() {
    return name;
  }
}
