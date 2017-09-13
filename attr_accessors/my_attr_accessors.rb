require 'pry'

class Class
  private
  def my_attr_accessors(*args)
    args.each do |arg|
      self.class_eval("def #{arg};@#{arg};end")
      self.class_eval("def #{arg}=(params);@#{arg}=params;end")
    end
  end
end

class Test
  my_attr_accessors :my_param

  def self.my_second_attr_accessors(*args)
    args.each do |arg|
      define_method(arg) do
        instance_variable_get("@#{arg}")
      end

      define_method("#{arg}=") do |value|
        instance_variable_set("@#{arg}", value)
      end
    end
  end
  my_second_attr_accessors :my_param2
end
