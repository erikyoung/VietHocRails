class StudyhabitsController < ApplicationController

	def index
		@studyhabits = Studyhabit.all
	end

	def new
		@studyhabit = Studyhabit.new
	end

	def show
		@studyhabit = Studyhabit.find(params[:id])
	end

	def create
		@studyhabit = studyhabits.create(studyhabit_params)
		if @studyhabit.valid?
		redirect_to studyhabits_path
	else 
		render :new, status: :unprocessable_entity
	end
	end

	private

	def studyhabit_params
		params.require(:studyhabit).permit(:title, :body)
	end

end
