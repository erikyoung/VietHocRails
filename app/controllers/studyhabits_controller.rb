class StudyhabitsController < ApplicationController

	def index
		@studyhabits = Studyhabit.all
	end

	def new
		@studyhabit = Studyhabit.(params[:id])
	end

	def show
		@studyhabit = Studyhabit.find(params[:id])
	end

	def create
		current_user.studyhabits.create(studyhabit_params)
		redirect_to studyhabits_path
	end

	private

	def studyhabit_params
		params.require(:studyhabit).permit(:title, :body)
	end

end
