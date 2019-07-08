# coding: us-ascii
# method_visibility  - Get visibility for a method name.
# Copyright (c) 2012 Kenichi Kamiya

require 'visibility_predicates'


class Module

  # @param [Symbol, String, #to_sym] name
  # @return [Symbol]
  def instance_method_visibility(name)
    name = name.to_sym
    return :public if public_method_defined? name
    return :protected if protected_method_defined? name
    return :private if private_method_defined? name
    raise NameError, "'#{name}' is not defined"
  end

end


module Kernel

  # @param [Symbol, String, #to_sym] name
  # @return [Symbol]
  def method_visibility(name)
    name = name.to_sym
    unless (methods | private_methods).map(&:to_sym).include? name
      raise NameError, "'#{name}' is not defined"
    end

    return :public if public_method? name
    return :protected if protected_method? name
    return :private if private_method? name
    
    raise 'should not reach here'
  end

end