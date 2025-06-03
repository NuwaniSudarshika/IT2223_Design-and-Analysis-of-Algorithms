%%start
%%step1:Take an array of numbers
%%step2:Repeat for all elements in the array
%%compare each pair of adjancent elements
%%if the left element is greater than the right element
%%swap them 

%%step3: continue this process until the entire array is sorted
%%largest elements will "bubblr up" to the end in each
%%pass

%%End arr=[64,34,25,12,22,11,90];

arr = [64, 34, 25, 12, 22, 11, 90]; % Define the array
n = length(arr);

for i = 1:n-1
    for j = 1:n-i
        if arr(j) > arr(j+1)
            % Swap elements
            temp = arr(j);
            arr(j) = arr(j+1);
            arr(j+1) = temp;
        end
    end
end

disp('Sorted array:');
disp(arr);
