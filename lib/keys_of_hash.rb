require 'pry'

def animals
  hash = {
    "sugar glider"=>"Australia",
    "aye-aye"=> "Madagascar",
    "red-footed tortoise"=>"Panama",
    "kangaroo"=> "Australia",
    "tomato frog"=>"Madagascar",
    "koala"=>"Australia"
  }
end

class Hash
  def keys_of(*arguments)
    return_array = []
    arguments.each do |argument|
      self.each do |key, value|
        return_array.push(key) if value == argument
        # binding.pry
      end
    end
    return_array
  end
end

puts animals.keys_of("Panama", "Australia")
