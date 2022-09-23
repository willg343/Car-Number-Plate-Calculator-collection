def find_the_number_plate(n):
    series = n//999
    right = series//26**2
    middle = series%26**2//26
    left = series%26**2%26
    return ''.join(map(chr,[97+left,97+middle,97+right]))+str(n%999+1).rjust(3,'0')
