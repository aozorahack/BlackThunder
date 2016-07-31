class OriginalTextsController < ApplicationController
  before_action :set_original_text, only: [:show, :edit, :update, :destroy]

  # GET /original_texts
  # GET /original_texts.json
  def index
    @original_texts = OriginalText.all
  end

  # GET /original_texts/1
  # GET /original_texts/1.json
  def show
  end

  # GET /original_texts/new
  def new
    @original_text = OriginalText.new
  end

  # GET /original_texts/1/edit
  def edit
  end

  # POST /original_texts
  # POST /original_texts.json
  def create
    @original_text = OriginalText.new(original_text_params)

    respond_to do |format|
      if @original_text.save
        format.html { redirect_to @original_text, notice: 'Original text was successfully created.' }
        format.json { render :show, status: :created, location: @original_text }
      else
        format.html { render :new }
        format.json { render json: @original_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /original_texts/1
  # PATCH/PUT /original_texts/1.json
  def update
    respond_to do |format|
      if @original_text.update(original_text_params)
        format.html { redirect_to @original_text, notice: 'Original text was successfully updated.' }
        format.json { render :show, status: :ok, location: @original_text }
      else
        format.html { render :edit }
        format.json { render json: @original_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /original_texts/1
  # DELETE /original_texts/1.json
  def destroy
    @original_text.destroy
    respond_to do |format|
      format.html { redirect_to original_texts_url, notice: 'Original text was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_original_text
      @original_text = OriginalText.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def original_text_params
      params.require(:original_text).permit(:card_id, :book_title, :book_publisher, :book_publish_year)
    end
end
