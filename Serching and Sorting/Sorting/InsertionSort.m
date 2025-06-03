%%insertion Sort
%%start from the second element
%%Compare it with the previous element in the 
%%sorted portion of the array
%%Shift larger elements to the right.
%%Insert the current element in the correct position

arr = [64, 34, 25, 12, 22, 11, 90]; % Define the array
n = length(arr);

for i = 2:n
    key = arr(i);
    j = i - 1;
    
    % Shift elements to the right to make space for the key
    while j > 0 && arr(j) > key
        arr(j+1) = arr(j);
        j = j - 1;
    end
    
    arr(j+1) = key; % Insert the key in its correct position
end

disp('Sorted array:');
disp(arr);
