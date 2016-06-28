require "sinatra"
require "sinatra/reloader"

require_relative("lib/task.rb")
require_relative("lib/to_do_list.rb")

my_list = TodoList.new