def merge_sort(arr)
    if arr.length < 2
      return arr
      #Returns the original array in case the array size is less than 2
    else
      b = 0;c = 0;a = 0;
      #a,b,c act as pointers that travervse through the arrays.They are basically the indices 
      new_arr = []
      #new_arr will be the final merged array
      arr_b = merge_sort(arr.slice(0..arr.length/2-1))
      arr_c = merge_sort(arr.slice(arr.length/2..arr.length))
      #We split the original input array recursively into arr_a and arr_b 
      while b < arr_b.length && c < arr_c.length
        if arr_b[b] < arr_c[c]
          new_arr[a] = arr_b[b]
          b = b + 1
        else
          new_arr[a] = arr_c[c];
          c = c + 1
        end
        a = a + 1;
      end
    end
    #Now we will compare the first element from arr_b with first element from arr_c,if it is smaller,we will append it as first element of new_arr
    #And then increase the pointer and compare again,we will repeat the steps untill we exhaust all the elements in arr_b & arr_c
    #The index for new_arr i.e. 'a' will increase in both cases 
    new_arr.concat(arr_b[b..-1]) if b < arr_b.length
    new_arr.concat(arr_c[c..-1]) if c < arr_c.length
    #The above 2 lines will concat the remaining elements from arr_b & arr_c,it makes sure that none of the elements is left when merging the elements
    return new_arr;  
  end
  
  p merge_sort([3,4,5,21,0,6,2])
    
    
    
  
  merge_sort([4,5,6,10,21])