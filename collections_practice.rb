# your code goes here
def begins_with_r(array)
  return true if array.all? {|word| word[0] == "r"}
  false
end

def contain_a(array)
  array2 = []
  array.each do |word|
    array2 << word if word.include?("a")
  end
  array2
end

def first_wa(array)
  array.each do |word|
    return word if word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if {|item| !item.is_a? String}
end

def count_elements(array)
  hash = {}
  array2 = []
  array.each do |hash|
    array2 << hash[:name]
  end

  array3 = []
  current_name = ""
  count = 0
  array2.sort.each do |name|
    if current_name == "" || current_name == name
      # count += 1
      puts current_name
    else
      # array3 << {:name => current_name, :count => count}
      # current_name = name
      # count = 1
      puts current_name
    end
  end
  # array3 << {:name => current_name, :count => count}
  puts array3
end
