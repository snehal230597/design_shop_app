class AddressModel {
  String? title;
  String? name;
  String? number;
  String? address;
  String? state;
  String? pincod;

  AddressModel(
      {this.title,
      this.name,
      this.number,
      this.address,
      this.state,
      this.pincod});
}

class AddressData {
  List<AddressModel> addreassList = [];

  addAddress({required String title, name, number, pincod, state, address}) {
    addreassList.add(AddressModel(
        title: title,
        address: address,
        name: name,
        number: number,
        pincod: pincod,
        state: state));
  }
}
