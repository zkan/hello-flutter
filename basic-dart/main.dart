import 'class.dart';
import 'marketing.dart';

void main() {
    print("Running");

    var cat = Cat(); // Prefer this
    Cat cat2 = Cat();
    Cat cat3 = new Cat();

    cat.id = 1;
    print(cat.id);

    // We can't do this since it's a private variable
    // print(cat._private_id);

    // var marketing = Marketing();
    // marketing.id = 1;
    // marketing.firstName = "Kan";
    // marketing.lastName = "Ouivirach";

    var marketing = Marketing(
        id: 1,
        firstName: "Kan",
        lastName: "Ouivirach",
    );

    print(marketing.id);
    print(marketing.firstName);
    print(marketing.lastName);
}