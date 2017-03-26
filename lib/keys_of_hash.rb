require 'pry'

class Hash
  def keys_of(*arguments)
    return_array = []
    arguments.each do |argument|
      self.each do |key, value|
        return_array.push(key) if value == argument
      end
    end
    return_array
  end
end
