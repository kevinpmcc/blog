require 'get_process_mem'

class ApplicationController < ActionController::Base
  before_action :print_before_memory
  after_action :print_after_memory
  protect_from_forgery with: :exception

  def print_usage(description)
    mb = GetProcessMem.new.mb
    puts "#{ description } - MEMORY USAGE(MB): #{ mb.round }"
  end

  def print_before_memory
    print_usage("Before")
  end

  def print_after_memory
    print_usage("After")
  end
end
