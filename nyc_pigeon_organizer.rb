require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
 
  sorted_hash = {}
  
  data.each do |attribute, set_of_attributes|
    set_of_attributes.each do |detail, names|
      names.each do |name|
        sorted_hash[name] = {}
      end
    end
  end

  data.each do |attribute, set_of_attributes|
    set_of_attributes.each do |detail, names|
      names.each do |name|
        sorted_hash[name][attribute] = []
      end
    end
  end
  
  data.each do |attribute, set_of_attributes|
    set_of_attributes.each do |detail, names|
      names.each do |name|
        sorted_hash[name][attribute] << detail.to_s
      end
    end
  end
  
  sorted_hash
end