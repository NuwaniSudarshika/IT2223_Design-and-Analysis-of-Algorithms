function sortedArray = mergeSort(arr)
 
    if numel(arr) <= 1
        sortedArray = arr;
        return;
    end
    mid = floor(numel(arr) / 2);

    leftHalf = mergeSort(arr(1:mid));
    rightHalf = mergeSort(arr(mid+1:end));

    sortedArray = merge(leftHalf, rightHalf);                                                 
end

function mergedArray = merge(leftHalf, rightHalf)
    mergedArray = [];
    i = 1; j = 1;
   
    while i <= numel(leftHalf) && j <= numel(rightHalf)
        if leftHalf(i) < rightHalf(j)
            mergedArray = [mergedArray, leftHalf(i)];
            i = i + 1;
        else
            mergedArray = [mergedArray, rightHalf(j)];
            j = j + 1;
        end
    end
    while i <= numel(leftHalf)
        mergedArray = [mergedArray, leftHalf(i)];
        i = i + 1;
    end
    while j <= numel(rightHalf)
        mergedArray = [mergedArray, rightHalf(j)];
        j = j + 1;
    end
end

