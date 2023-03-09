import 'class.dart';

void main() {
    print("Running");

    var cat = Cat(); // prefer this
    Cat cat2 = Cat();
    Cat cat3 = new Cat();

    cat.id = 1;
    print(cat.id);
}