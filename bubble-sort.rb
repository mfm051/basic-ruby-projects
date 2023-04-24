def bubble_sort nums
    return 'error! only nums' unless nums.all? Numeric
    changed = nil
    until changed == false
        nums.each_with_index do |current_val, current_index|
            next if current_index == 0
            if current_val < nums[current_index - 1]
                nums[current_index] = nums[current_index - 1]
                nums[current_index - 1] = current_val
                changed = true
            end
        end
        changed == nil ? changed = false : changed = nil
    end
    nums
end