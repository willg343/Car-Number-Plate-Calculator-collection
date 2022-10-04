const alph = "abcdefghijklmnopqrstuvwxyz"

function findTheNumberPlate(n){
    var right = Math.floor(Math.floor(n/999)/676)
    var middle = Math.floor((Math.floor(n/999)-676*right)/26)
    var left = Math.floor(n/999)-right*676-middle*26
    return `${alph[left]}${alph[middle]}${alph[right]}` + (''+(n%999+1)).padStart(3,'0')
}
