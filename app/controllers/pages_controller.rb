class PagesController < ApplicationController
  def show
  	@page = Page.find(params[:id])
  	if @page.is_published == false
  		redirect_to root_path, alert:"Page doesn't exist"
  	end
  	@sections = Section.all;
  end
end
