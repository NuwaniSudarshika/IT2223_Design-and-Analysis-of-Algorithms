%%create array with 1000 numbers
%%Use tic/toc to measeure time for :
%%           Linear search
%%           Binary search(after sorting)
%%           Compare results


%% based on target binary and linear serach differently.
%% In target index is in first half linear search fastre
%% if target
arr = 1:1000;
target = 978;
n=length(arr);
found = false;

tic;
for  i=1:n
    if arr(i) == target
        found=true;
        index=i;
        break;
    end
end
if found
    fprintf("The target element is found at index %d\n",index);
else
    disp('')

    low =1;
    high=length(arr);
end

    tic;
    while low<=high
        mid=floor((low+high)/2);
        if arr(mid)==target
            fprintf("Element %d found at index 5d.\n",target,mid);
            break;
        elseif target<arr(mid)
            high = mid-1;
        else
            low=mid+1;
        end
    end

    if low>high
        fprintf('Element %d not found in the array.\n', target);
    end
    toc;