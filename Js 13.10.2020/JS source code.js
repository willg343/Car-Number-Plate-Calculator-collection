function findTheNumberPlate(n){
    var a = 'abcdefghijklmnopqrstuvwxyz'
    var right = Math.floor(Math.floor(n/999)/676)
    var middle = Math.floor((Math.floor(n/999)-676*l1)/26)
    var left = Math.floor(n/999)-l1*676-l2*26
    return `${a[left]}${a[middle]}${a[right]}` + (''+(n%999+1)).padStart(3,'0')
}
