require "pry"

def begins_with_r(array)
  newArray = []
  i = 0
              while i < array.length
                word = array[i]
                isTrue = word.start_with?("r")
                newArray << isTrue
                i += 1
              end
  if newArray.include?(false)
   return false
  else
    return true
  end
end

def contain_a(array)
   newArray = []
  i = 0
              while i < array.length
                word = array[i]
                  if word.include?(?a) == true
                    newArray << word
                  end
                i += 1
              end
return newArray
end

def first_wa(array)
  i = 0
  newArray = []
  while i < array.length
    word = array[i]
    word = word.to_s
      if word.start_with?("wa") == true
        newArray << word
      end
    i += 1  
  end  
  return newArray.first
end

def remove_non_strings(array)
  i = 0
    newArray = []
  while i < array.length
  word = array[i]
      if word.class == String
        newArray << word
      end
  i += 1
  end
  return newArray
end

def count_elements(array)
  uniqArray = array.uniq
  countArray = []
  array.uniq.each do |entry|
    countArray << {:name => entry[:name], :count => array.count(entry)}
  end
  countArray
end


def merge_data(keys, data)
    i = 0
    newArray = []
    newerArray = []
 #  while i < keys.length
      firstName = keys[i][:first_name]
      attributes = data[0][firstName]
      newArray.push(keys[i])
      newArray.push(attributes)
      newArray[i] = newArray[i].merge(newArray[i+1])
      newerArray << [newArray.slice(i)]
   # i += 1
 # end
return 
end

def find_cool(cool)
end

def organize_schools(schools)
end


 #   {[{:first_name => "blake"}, {:first_name => "ashley"}]}

  #  [{"blake" => { :awesomeness => 10, :height => "74", :last_name => "johnson"}, "ashley" => { :awesomeness => 9, :height => 60, :last_name => "dubs"}}]