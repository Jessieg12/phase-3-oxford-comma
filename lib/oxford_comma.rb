require "pry"

def oxford_comm(array)
   if array.length == 1
    return array[0]
   elsif array.length == 2
    combine = array.join(" and ")
    return combine
   else
    range = array[0..-2].join(", ")
    combine = "#{range}, and #{array[-1]}"
    return combine
  end
end

def oxford_comma(array)
  return array.join(" and ") if array.size < 3

  # insert 'and ' in front of the last string in the array
  array[-1] = "and #{array[-1]}"

  array.join(", ")  
end