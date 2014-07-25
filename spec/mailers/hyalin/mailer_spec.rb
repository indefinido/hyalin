require "spec_helper"

describe Mailer do
  describe "hyalin_email" do
    let(:mail) { Mailer.hyalin_email }

    it "renders the headers" do
      mail.subject.should eq("Hyalin email")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
