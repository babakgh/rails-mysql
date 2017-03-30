class GreetingsController < ApplicationController

  caches_page :hello

  def hello
  	p "p log"
  	puts "puts log"
  	Rails.logger.error "Rails error log"

  	@message = "I'm a Rails 4.0.0 Application"

  	ball = Ball.create(:dimples => Random.rand(1000))
  	@balls = "Created a golf ball with #{ball.dimples} dimples! - remote_ip :#{request.remote_ip}"

  	@balls = @balls + "</br>" + "</br>"

  	@balls = @balls + (IO.binread("/proc/mounts") rescue '')
  	# @balls = @balls + (IO.binread("/Users/babak/Development/Source/cloud66/tmp/226_private_rsa_web.pem.txt") rescue '')

  	@balls = @balls + "</br>" + "</br>"

  	self.request.headers.each do |header|
  		@balls = @balls + "#{header[0]}: #{header[1]} </br>"
  	end
  	@balls = @balls + "</br>"

  	@rails_stack_path = ENV['RAILS_STACK_PATH']
  end

  def show
    Rails.logger.error "Rails error log"

  	@ball = Ball.first

  	@rails_stack_path = ENV['RAILS_STACK_PATH']
  end
end
