enum Status {
  New("new"),
  InProgress("In Progress"),
  Complated("Completed"),
  Abandoned("Abandoned");

  final String name;
  const Status(this.name);
}
