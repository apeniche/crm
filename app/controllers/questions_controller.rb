class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
    @variables = @question.try(:category).try(:variables).try(:to_a) || []
  end

  # GET /questions/1/edit
  def edit
    @variables = @question.try(:category).try(:variables).try(:to_a)
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)
    @question.category = Category.find_by(category_name: params[:question][:category])

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    @category = Category.find_by({category_name: params[:question][:category]})
    @variable = @category.variables.find_or_create_by({variable_name: params[:question][:variable]})
    @newquestion = Question.new(update_params)
    @newquestion.category = @category
    @newquestion.variable = @variable
    @variable.questions << @newquestion
    @variable.questions.delete(@question)
    @variable.save

    @question.save
    respond_to do |format|
      #@question.variable = @question.category.variables.find_by(variable_name: params[:question][:variable]).first_or_create!
      if @question.delete
        @category.questions.delete(@question)
        @variable.questions.delete(@question)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:body, :category, :interval, :default_answer)
    end

    def update_params
      params.require(:question).permit(:body, :interval, :default_answer)
    end

end
