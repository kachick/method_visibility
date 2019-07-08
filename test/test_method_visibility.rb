# coding: us-ascii

require 'test/unit'

require_relative '../lib/method_visibility'


class Foo
  def public_foo; end
  protected; def protected_foo; end
  private; def private_foo; end
end

class Bar < Foo
end


class Test_GetInstanceMethodVisibility < Test::Unit::TestCase

  def test_public
    assert_same :public, Bar.instance_method_visibility(:public_foo).to_sym
  end

  def test_public_with_string_name
    assert_same :public, Bar.instance_method_visibility("public_foo").to_sym
  end

  def test_protected
    assert_same :protected, Bar.instance_method_visibility(:protected_foo).to_sym
  end

  def test_private
    assert_same :private, Bar.instance_method_visibility(:private_foo).to_sym
  end

  def test_errors
    assert_raises NameError do
      Bar.instance_method_visibility(:none)
    end

    assert_raises NoMethodError do
      Bar.instance_method_visibility(1)
    end
  end

end


class Test_GetMethodVisibility < Test::Unit::TestCase

  BAR = Bar.new

  def test_public
    assert_same :public, BAR.method_visibility(:public_foo).to_sym
  end

  def test_public_with_string_name
    assert_same :public, BAR.method_visibility("public_foo").to_sym
  end

  def test_protected
    assert_same :protected, BAR.method_visibility(:protected_foo).to_sym
  end

  def test_private
    assert_same :private, BAR.method_visibility(:private_foo).to_sym
  end

  def test_errors
    assert_raises NameError do
      BAR.method_visibility(:none)
    end

    assert_raises NoMethodError do
      BAR.method_visibility(1)
    end
  end

end

class Test_GetMethodVisibility_README < Test::Unit::TestCase

  class Foo
    private; def modified_foobar; end
  end

  class Bar < Foo
    protected :modified_foobar
  end

  def test_return_value 
    assert_equal :protected, Bar.new.method_visibility(:modified_foobar)
  end

end