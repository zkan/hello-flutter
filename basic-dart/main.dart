import 'async.dart';
import 'class.dart';
import 'marketing.dart';
import 'marketing-exception.dart';

void main() async {
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
      salePrice: 100000.2,
  );

  // print(marketing.id);
  // print(marketing.firstName);
  // print(marketing.lastName);

  marketing.toInfo();

  // Option 1: Use then
  getName().then((value) => print(value));
  print("----------");

  // Option 2: Use async & await
  String name = await getName();
  print(name);
  print("----------");

  await marketing.fetchMarketing();
  print("----------");

  Marketing future_marketing = await fetchMarketing(10002);
  future_marketing.toInfo();
  print("----------");

  fetchMarketing(10002).then((marketing) => marketing.toInfo());
  print("----------");

  // fetchMarketingWithError()
  //   .then(
  //     (marketing) => marketing.toInfo(), 
  //     onError: (e) => print(e),
  //   ).catchError(print);

  try {
    await fetchMarketingWithError();
  } on Exception catch (e) {
    print("On Exception");
    print(e);
  } catch (e) {
    print(e);
  }
  print("----------");

  try {
    await fetchMarketing(99);
  } on MarketingException catch (e) {
    print(e.message);
    print("Code: ${e.code}");
  }
  print("----------");

}