function sortedArray = quickSort(arr)
    if numel(arr) <= 1
        sortedArray = arr; 
        return;
    end
    
    pivot = arr(1);
    left = arr(arr < pivot);
    right = arr(arr > pivot);
    middle = arr(arr == pivot);
    
    sortedArray = [quickSort(left), middle, quickSort(right)];
end
