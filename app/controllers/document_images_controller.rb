class DocumentImagesController < ApplicationController
  before_action :set_document_image, only: [:show, :edit, :update, :destroy]

  # GET /document_images
  # GET /document_images.json
  def index
    @document_images = DocumentImage.all
  end

  # GET /document_images/1
  # GET /document_images/1.json
  def show
  end

  # GET /document_images/new
  def new
    @document_image = DocumentImage.new
  end

  # GET /document_images/1/edit
  def edit
  end

  # POST /document_images
  # POST /document_images.json
  def create
    @document_image = DocumentImage.new(document_image_params)

    respond_to do |format|
      if @document_image.save
        format.html { redirect_to @document_image, notice: 'Document image was successfully created.' }
        format.json { render :show, status: :created, location: @document_image }
      else
        format.html { render :new }
        format.json { render json: @document_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /document_images/1
  # PATCH/PUT /document_images/1.json
  def update
    respond_to do |format|
      if @document_image.update(document_image_params)
        format.html { redirect_to @document_image, notice: 'Document image was successfully updated.' }
        format.json { render :show, status: :ok, location: @document_image }
      else
        format.html { render :edit }
        format.json { render json: @document_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_images/1
  # DELETE /document_images/1.json
  def destroy
    @document_image.destroy
    respond_to do |format|
      format.html { redirect_to document_images_url, notice: 'Document image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_image
      @document_image = DocumentImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_image_params
      params.require(:document_image).permit(:image_data, :image_order, :document_id)
    end
end
