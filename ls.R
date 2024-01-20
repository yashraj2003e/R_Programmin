arr = c(6,3,6,2,5,1,2,4,6,3,5)
target = 4

lenArr = length(arr)

i = 1L

while(i<=lenArr) {
  if(arr[i]==target) {
    print(paste("The element is found at index - ",i))
    break
  }
  i=i+1
}

if(i==lenArr+1) {
  print("The element is not found in array")
}
