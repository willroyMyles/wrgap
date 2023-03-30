enum Status {
  New("new"),
  InProgress("In Progress"),
  Complated("Completed"),
  Abandonded("Abandonded");

  final String name;
  const Status(this.name);
}
