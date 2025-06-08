require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "product attributes should not be empty" do
    product =Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:price].any?
  end

  test "product price should be postive" do
    product = Product.new(title: "My book Ttile",
                           description: "sample description",
                           image_url: "shy.jpg")
    product.price =-1
    assert product.invalid?
    assert_equal [ "must be greater than or equal to 0.01" ], product.errors[:price]

    product.price = 0
    assert product.invalid?
    assert_equal [ "must be greater than or equal to 0.01" ], product.errors[:price]

    product.price = 1
    assert product.valid?
  end

  def new_product(image_url)
    Product.new(title: "sample_title", description: "sample description", price: 1, image_url: image_url)
  end

  test "image url" do
    ok = %w[ fried.gif fed.jpg fred.png fred.Jpg http://a.b.c/x/y/z/fred.gif ]
    bad = %w[ fred.doc fred.pdf fred.word fred.gif.more]

    ok.each do |image_url|
      assert new_product(image_url).valid?, "#{image_url} must be valid"
    end

    bad.each do |image_url|
      assert new_product(image_url).invalid?, "#{image_url} must be invalid"
    end
  end
end
