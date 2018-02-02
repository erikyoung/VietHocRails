class StudyhabitsController < ApplicationController

	def index
		@studyhabits = Studyhabit.all
	end

	def new
		@studyhabit = Studyhabit.new
	end

	def create
		Studyhabit.create(studyhabit_params)
		redirect_to root_path
	end

	private

	def studyhabit_params
		params.require(:studyhabit).permit(:title, :body)
	end

end
