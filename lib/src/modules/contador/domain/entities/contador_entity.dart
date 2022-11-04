class ContadorEntity {
  int value;
  int interval=1;
  ContadorEntity(this.value);

  void increment() {
    value+= interval;
  }

  void decrement() {
    value-= interval;
  }

  void reset() {
    value = 0;
    interval = 1;
  }

  void setInterval(int value) {
    interval = value;
  }
}
