alph = "abcdefghijklmnopqrstuvwxyz"

findTheNumberPlate = (n) ->
    right = Math.floor(Math.floor(n / 999 ) / 676)
    mid = Math.floor((Math.floor(n / 999) - 676 * right) / 26)
    left = Math.floor(n/999)-right*676-mid*26
    return "#{alph.charAt(left)}#{alph.charAt(mid)}#{alph.charAt(right)}#{String(n%999+1).padStart(3,'0')}"
