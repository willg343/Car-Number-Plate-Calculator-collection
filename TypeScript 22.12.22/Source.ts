export function findTheNumberPlate(customerID: number) : string {
  var series: number = Math.floor(customerID / 999);
  var right : string = String.fromCharCode(Math.floor(series/676)+97);
  var middle: string = String.fromCharCode(Math.floor(series%676/26)+97);
  var  left : string = String.fromCharCode(Math.floor(series%676%26)+97);
  return `${left}${middle}${right}${String(customerID%999+1).padStart(3,'0')}`
}
