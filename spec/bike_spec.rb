require "bike"

describe Bike do
  it "responds to working" do
    expect(subject).to respond_to(:working?)
  end

  it "returns a broken bike" do
    bike = Bike.new
    bike.report_broken
    expect(bike.working?).to eq(false)
  end

  it 'can be reported as broken' do
    subject.report_broken
    expect(subject).to be_broken
  end
end