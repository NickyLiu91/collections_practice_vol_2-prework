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
      current_name = name
      count += 1
    else
      array3 << {:name => current_name, :count => count}
      current_name = name
      count = 1
    end
  end
  array3 << {:name => current_name, :count => count}

  array4 = []
  array2.uniq.each do |name|
    array3.each do |hash|
      if hash[:name] == name
        array4 << hash
      end
    end
  end
  array4
end

def merge_data(data1, data2)
  data1.each do |hash|
    data2.each do |hash2|
      hash2.each do |name, info|
        if name == hash[:first_name]
          info.each do |tag, result|
            hash[tag] = result
          end
        end
      end
    end
  end
  data1
end

def find_cool(array)
  array2 = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      array2 << hash
    end
  end
  array2
end

def organize_schools(array)
  puts array
  array2 = []
  array.each do |hash|
    puts hash
    hash.each do |school, hash2|
      

      hash2.each do |key, location|
        array2 << [school, location]
      end
    end
  end

end
