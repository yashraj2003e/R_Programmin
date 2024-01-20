value <- "noon"
i <- 1
lenVal <- nchar(value)

while (i <= lenVal) {
  if (substring(value, i, i) != substring(value, lenVal, lenVal)) {
    print("The String is not a palindrome")
    break
  }
  i <- i + 1
  lenVal <- lenVal - 1
}

if (i > lenVal) {
  print("The string is a palindrome")
}
