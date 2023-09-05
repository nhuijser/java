int[] getallen = {1, 1, 1, 1, 5, 3, 6, 8, 9, 10};

void setup() {
  int count = numberFinder(1, getallen);
  println("Nummer 1 kwam " + count + " keer voor");
}

int numberFinder(int number, int[] array) {
  
  int count = 0;
  for(int i = 0; i < array.length; i++) {
    if(array[i] == number) count++;
  }
  
  return count;
  
}
