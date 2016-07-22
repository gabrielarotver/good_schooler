class HomeController < ApplicationController

  layout "my_little_layout", except: [:show]

  # layout "my_little_layout", only: [:show]

  def index
    @codeschools = CodeSchool.all

    # update the user's session cookie when they go to the index.
    session[:logged_in] = true

    #changes the default behavior that rails does. Just like REDIRECT! Now the view it's going to go to will not be index.html.erb, it will be 'all_the_schools.html.erb'
    # render 'all_the_schools'


    # using redirect_to will let you redirect to anything! Even google! Not just things in your file! BUT YOU NEED THE HTTP OR HTTPS!!!!
    # redirect_to "http://www.google.com"

    #or something inside your own application. But if you deploy this, it won't work because you're using localhost
    # redirect_to "http://localhost:3000/2"

    #this is a better way, it'll just redirect to whatever your domain is /to
    # redirect_to "/2"

    #redirect_to users_url

    # redirect_to User.first or User.first.id

    #what are you?
    # oh a user?
    #let me try user_url and pass in your id
    #user_url returns the string
    # the string is passed as the final redirect_to argument.

    # redirect_to @codeschools.first

  end

  def index2
    @codeschools = CodeSchool.all
    # render 'jerreh'
    # render json: {mosthe: "0in10"}

    # redirect_to User.first
    #we can also redirect to instances

    # layouts have views!!!!
    # render 'users/whateverisgood', layout: "my_little_layout"
  end

  def show
    render 'users/whateverisgood'
  end

  def post
    if session[:logged_in]
      render json: session
    else
      render plain: "NOT LOGGED IN!"
    end
  end

  def logout
    # session[:logged_in] = false
    session.delete :logged_in
    redirect_to '/3'
  end

  def giraffe_tails
  end
end
