class ContadorEntity {
  int value;
  ContadorEntity(this.value);

  void increment() {
    value++;
  }

  void decrement() {
    value--;
  }

  void reset() {
    value = 0;
  }
}
