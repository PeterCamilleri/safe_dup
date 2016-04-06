# coding: utf-8

require_relative '../lib/safe_dup'
gem              'minitest'
require          'minitest/autorun'
require          'minitest_visible'

#Test the monkey patches applied to the Object class.
class SafeDupTester < Minitest::Test

  #Track mini-test progress.
  include MinitestVisible

  def test_for_safe_value_cloning
    assert_equal((6).safe_dup, 6)
    assert_equal((6).safe_dup.object_id, (6).object_id)

    assert_equal((:foo).safe_dup, :foo)
    assert_equal((:foo).safe_dup.object_id, (:foo).object_id)

    assert_equal((true).safe_dup, true)
    assert_equal((true).safe_dup.object_id, (true).object_id)

    assert_equal((false).safe_dup, false)
    assert_equal((false).safe_dup.object_id, (false).object_id)

    assert_equal((nil).safe_dup, nil)
    assert_equal((nil).safe_dup.object_id, (nil).object_id)

    rex = /ABC/
    assert_equal(rex.safe_dup, rex)
    assert_equal(rex.safe_dup.object_id, rex.object_id)
  end

  def test_for_reference_cloning
    str = "test"
    assert_equal(str.safe_dup, str)
    refute_equal(str.safe_dup.object_id, str.object_id)

    arra = [1,2,3]
    arrb = arra.safe_dup
    assert_equal(arrb, arra)
    refute_equal(arrb.object_id, arra.object_id)

    arrb << 4
    assert_equal([1,2,3],   arra)
    assert_equal([1,2,3,4], arrb)

    lam = lambda { puts 'hello world'}
    refute_equal(lam.safe_dup.object_id, lam.object_id)

  end

end
