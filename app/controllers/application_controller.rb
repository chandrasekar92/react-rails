class ApplicationController < ActionController::Base
  def hello
    render html: "hello Rails"
  end
end
