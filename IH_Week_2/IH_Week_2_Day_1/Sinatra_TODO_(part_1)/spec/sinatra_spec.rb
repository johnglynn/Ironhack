require_relative("../lib/sinatra.rb")

RSpec.describe Task do

    it "the task is not complete" do
      expect(task.complete?)
    end
    it "the task has been completed" do
    	expect(task.complete!)
	end