# method_visibility  - Get visibility for a method name.
# Copyright (c) 2012 Kenichi Kamiya

require 'visibility_predicates'


class Module

  # @param [Symbol, String, #to_sym] name
  # @return [Symbol, String] 1.8: String, 1.9: Symbol
  def instance_method_visibility(name)
    return RUBY_VERSION < '1.9' ? "public" : :public if public_method_defined? name
    return RUBY_VERSION < '1.9' ? "protected" : :protected if protected_method_defined? name
    return RUBY_VERSION < '1.9' ? "private" : :private if private_method_defined? name
    raise NameError, "'#{name}' is not defined"
  end

end


module Kernel

  # @param [Symbol, String, #to_sym] name
  # @return [Symbol, String] 1.8: String, 1.9: Symbol
  # @note
  #   for 1.8.7 compatibility coding
  #     * &to_sym for cast method names
  def method_visibility(name)
    name = name.to_sym
    unless (methods | private_methods).map(&:to_sym).include? name
      raise NameError, "'#{name}' is not defined"
    end

    return RUBY_VERSION < '1.9' ? "public" : :public if public_method? name
    return RUBY_VERSION < '1.9' ? "protected" : :protected if protected_method? name
    return RUBY_VERSION < '1.9' ? "private" : :private if private_method? name
    
    raise 'should not reach here'
  end

end