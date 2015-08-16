require "spec_helper"

describe Product do

  describe "#subtotal" do

    context "given a CPM product" do

      subject { described_class.new("Half Banner", 1000, "CPM") }

      it "return U$ 10.00" do
        expect(subject.subtotal(1000)).to be_eql 1000
      end
    end

    context "given a CPC product" do

      subject { described_class.new("Super Banner", 30, "CPC") }

      it "return U$ 30.00" do
        expect(subject.subtotal(100)).to be_eql 3000
      end
    end

    context "given another type product" do

      subject { described_class.new("Social Interaction", 5000, "SOCIAL") }

      it "return U$ 50.00" do
        expect(subject.subtotal(13)).to be_eql 5000
      end

    end
  end


end
