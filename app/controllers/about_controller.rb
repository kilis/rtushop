class AboutController < ApplicationController
    def show
      if valid_page?
        render template: "about/#{params[:page]}"
      else
        render file: "public/404.html", status: :not_found
      end
    end

    private
    def valid_page?
      File.exist?(Pathname.new(Rails.root + "app/views/about/#{params[:page]}.html.erb"))
    end
end
