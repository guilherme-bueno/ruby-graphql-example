class HelloController < ApplicationController
    def index
        text = { :hello => "World!" }
        render json: text
    end 
end