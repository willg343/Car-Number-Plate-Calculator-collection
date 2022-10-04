const alph = "abcdefghijklmnopqrstuvwxyz"

function findTheNumberPlate(n){
    var right = Math.floor(Math.floor(n/999)/676)
    var mid = Math.floor((Math.floor(n/999)-676*right)/26)
    var left = Math.floor(n/999)-right*676-mid*26
    return `${alph[left]}${alph[mid]}${alph[right]}` + (''+(n%999+1)).padStart(3,'0')
}
