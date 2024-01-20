arr = c(1,2,3,4,5,6,7,8,9)
target = 11

s = 1L
e = 9L

mid = floor((s+e)/2L)

index = -1

while(s<=e) {
  mid = floor((s+e)/2L)
  if(arr[mid]==target) {
    index = mid
    break
  }
  if(target<arr[mid]) {
    e = mid-1
  }
  else {
    s = mid+1
  }
}

if(index!=-1) {
  print(paste("The element is found at index - ",index))
}else {
  print("The element is not found in array")
}