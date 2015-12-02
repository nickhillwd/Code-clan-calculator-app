require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'

get '/' do
  erb :home
end

get '/about_us' do
  erb :about_us
end

get '/calculate' do
  @first = params[:first].to_f
  @second = params[:second].to_f
  @operator = params[:operator]

  @result = case @operator
    when '+' then @first + @second
    when '-' then @first - @second
    when '*' then @first * @second
    when '/' then @first / @second
  end

  erb :result
end

get '/contact_us' do

  erb :contact_us
end

get '/submit' do
  @first_name = params[:first_name]
  @last_name = params[:last_name]
  @email = params[:email]
  @message = params[:message]

  erb :thank_you
end

get '/thank_you' do

  erb :thank_you
end

# get '/multiply/:x/:y' do
  # @result = params[:x].to_f * params[:y].to_f
  # erb :result
# end


# Extend the demo sinatra app you created this morning to have a contact_us page.

# Create a 'contact us' page that takes in the name and email of a user and a message and returns these details back to them (No need to save the details of the message, we will look at persistence in a web application tomorrow).

# Create a new route for 'contact us'.
# Add a link to the nav for the route.
# Route should take the user to a contact us page with a form to take in name, email and message.
# Submitted form should return a thank you for contacting us page with the repeating the details.