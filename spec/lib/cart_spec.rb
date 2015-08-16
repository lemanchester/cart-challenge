require "spec_helper"

describe Cart do

  describe "#total" do

    context "given a cart with three differents products type" do
      let(:products_and_quantity) do
        [
          { product: Product.new("Half Banner", 1500, "CPM"),    quantity: 2000 },
          { product: Product.new("Banner",      10,   "CPC"),    quantity:  100 },
          { product: Product.new("Social",      3000, "SOCIAL"), quantity:  nil }
        ]

      end
      subject { described_class.new(products_and_quantity) }

      it "return U$ 70.00" do
        expect(subject.total).to be_eql 7000
      end
    end


  end

end
