require 'spec_helper'

describe "ExternalApiHelper" do

	context "fetch_json_with_cache" do
		# this is still todo, because it is very difficult to simulate chache problems
	end

	context "fetch_json" do
		it "should not return nil if url is not reachable" do
			ExternalApiHelper.fetch_json('a really invalid url').should_not be_nil
		end
		it "should return empty string for invalid url" do
			ExternalApiHelper.fetch_json('a really invalid url').should == ""
		end
		it "should not raise any error if url is not reachable" do
			expect {
				ExternalApiHelper.fetch_json('a really invalid url')
			}.to_not raise_error
		end
		it "should not return blank if the url is valid and reachable" do
			ExternalApiHelper.fetch_json('http://stream.reliveradio.de:8000/json.xsl').should_not be_blank
		end
	end

end