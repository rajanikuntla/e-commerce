class ApplicationController < ActionController::Base

	def home
		@products = Product.all.paginate(page: params[:page])
	end
end
