require "spec_helper"

describe Lita::Handlers::Days, lita_handler: true do

  it { is_expected.to route("90 days") }
  it { is_expected.to route("100 days") }
  it { is_expected.to route("1 day") }
  it { is_expected.to route("1 days") }

  it "should respond with 90 days from now" do
    t = DateTime.now
    t90 = (t + 90).to_time
    send_message("90 days")
    expect(replies.last).to eq("#{t90}")
  end

  it "should respond with 100 days from now" do
    t = DateTime.now
    t100 = (t + 100).to_time
    send_message("100 days")
    expect(replies.last).to eq("#{t100}")
  end

  it "should respond with 1 day from now" do
    t = DateTime.now
    t1 = (t + 1).to_time
    send_message("1 day")
    expect(replies.last).to eq("#{t1}")
  end

  it "should respond with 1 days from now" do
    t = DateTime.now
    t1 = (t + 1).to_time
    send_message("1 days")
    expect(replies.last).to eq("#{t1}")
  end


end
