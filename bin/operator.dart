// ============== Operator
// operator adalah method dengan nama yang spesial
// dart memperbolehkan kita membuat method dengan nama operator

// ====================================================
// <          +          |        >>>
// >          /          ^        []
// <=        ~/          &        []=
// >=        *          <<        ~
// -         %          >>        ==

// ============== membuat Operator
// untuk membuat operator, kita bisa membuat method, namun nama method diganti menjadi kata kunci operator diikuti dengan operatornya

class Orange {
  int qunatity = 0;

  // Orange add(Orange other) {
  //   var result = Orange();
  //   result.qunatity = qunatity + other.qunatity;
  //   return result;
  // }

  Orange operator +(Orange other) {
    var result = Orange();
    result.qunatity = qunatity + other.qunatity;
    return result;
  }
}

void main() {
  var orange1 = Orange();
  orange1.qunatity = 10;

  var orange2 = Orange();
  orange2.qunatity = 10;

  var orange3 = orange1 + orange2;
  print(orange3.qunatity);
}
