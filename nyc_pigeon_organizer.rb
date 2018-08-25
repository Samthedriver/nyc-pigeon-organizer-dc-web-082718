def nyc_pigeon_organizer(data)
  # write your code here!
  organized_data = Hash.new
  temp_array = Array.new
  temp_string = String.new
  #get names
  data.each do |key, hash|
    hash.each do |color_key, array|
      array.each do |new_key|
        organized_data[new_key] = {}
      end
    end
  end

  #get
  organized_data.collect do |name, empty_hash|
    data.each do |key, hash|
      #if key == :lives
      #  organized_data[name][key] = {};
      #else
        organized_data[name][key] = [];
      #end
    end
  end

  data.each do |key, hash|
    if key == :lives
      hash.each do |color_key, array|
        puts color_key
        array.each do |value|
          temp_array = organized_data[value][key]
          temp_array.push(color_key)
          organized_data[value][key] = temp_array
        end
      end
    else
      hash.each do |color_key, array|
        array.each do |new_key|
          temp_array = organized_data[new_key][key]
          temp_array.push(color_key.to_s)
          organized_data[new_key][key] = temp_array
        end
      end
    end
  end
  organized_data
end
