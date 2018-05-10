class WentsController < ApplicationController
	before_action :set_went, only: [:show, :edit, :update, :destroy]
	before_action :authorize, except: [:show, :index]

	def index
		@wents = Went.where(["country LIKE ?", "%#{params[:search]}%"])
	end

	def show
		@went = Went.find(params[:id])
	end

	def new
		@went = Went.new
	end

	def create
		@went = current_user.wents.new(went_params)

		if @went.save
			redirect_to wents_path
		else
			render 'new'
		end
	end

	def edit
		@went = Went.find(params[:id])
	end

	def update
		@went = Went.find(params[:id])
		if @went.update_attributes(went_params)
			redirect_to wents_path
		else
			render 'new'
		end
	end

	def destroy
		@went = Went.find(params[:id])
		@went.destroy
		redirect_to wents_path
	end

	private

		def set_went
			@went = Went.find(params[:id])
		end

		def went_params
			params.require(:went).permit(:user_id, :country, :destination, :duration, :activity, :address, :price, :description)
		end

		def authorize
			if current_user.nil?
				redirect_to login_url, alert: "Not authorized! Please log in"
			elsif
			  @went && @went.user != current_user
					redirect_to root_path, alert: "Not authorized. You're not the went user"
			end
		end
	end
