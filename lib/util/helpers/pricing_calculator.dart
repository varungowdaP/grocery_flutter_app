
class TPricingCalculator{
  ///-- Calculate price on tax and shipping

  static double calculateTotalPrice(double productPrice ,String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount =productPrice * taxRate;
    double shippingCost =getShippingCost(location);
double totalPrice =productPrice + taxAmount+shippingCost;
return totalPrice;
  }
 /// --- Calculate shipping cost
 static String calculateShippingCost(double productprice,String location){
    double shippingCost=getShippingCost(location);
    return shippingCost.toStringAsFixed(2);

 }
 ///-- calculate tax
static String calculateTax(double productPrice,String location){

    double taxRate=getTaxRateForLocation(location);
    double taxAmount=productPrice*taxRate;
    return taxAmount.toStringAsFixed(2);

}
static double getTaxRateForLocation( String location){
    //look for tax rate for the given location from a tax rate database or api.
  // return the appropraite tax rate.
  return 1.10;//example tax rate is 10%
}
static double getShippingCost(String location){
    return 5.00;
}

///-- sum all cart values and return total amount
///static double calculateCartTotal(CartModel cart){
// return cart.items.map((e) => e.price).fold(0,(previousPrice,currentPrice) =>previous

}