class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy , :upvote , :downvote ]
  before_action :authenticate_admin_user!, only: [:het_el_kazi]
  # before_action :set_slug, :only => :create 

  require 'date'

  require 'rest-client'
  require 'json'

  add_document_URL = 'http://127.0.0.1:8080/add'

  # GET /documents
  # GET /documents.json
  def index
    if user_signed_in?
      # Get current user
      @user = current_user  

      # Get User Documents for defined level
      @user_documents = Document.user_documents(@user)
    end
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
    if user_signed_in?
      puts "Now in show controller #{@document}************************************************************************"
      DocumentHistory.create(user_id: current_user.id , document_id: @document.id)
      # Declare new comment
      @comment = Comment.new

      # Post response to display enonce document
      add_doc_enonce_response = RestClient.post  "http://127.0.0.1:8080/view" ,
                                           
            {'document_id'=>  @document.id.to_s + 'E'}.to_json,
        
            {content_type: :json, accept: :json}


      if (add_doc_enonce_response == 0)
        enonce_document_obj = JSON.parse(add_doc_enonce_response)
        @enonce_document_url = enonce_document_obj["url"] 
      end

      puts "*************************************"
      puts "#{@enonce_document_url}"
      puts "*************************************"

      # Post response to display corrige document
      if (not @document.pdf_file_corrige_file_name.nil? )
        add_doc_enonce_response = RestClient.post  "http://127.0.0.1:8080/view" ,
                                             
              {'document_id'=>  @document.id.to_s + 'C'}.to_json,
          
              {content_type: :json, accept: :json}

        corrige_document_obj = JSON.parse(add_doc_enonce_response)
        @corrige_document_url = corrige_document_obj["url"] 

        puts "*************************************"
        puts "#{@corrige_document_url}"
        puts "*************************************"
      end

    end
  end

  # GET /documents/new
  def new
    @document = Document.new
  end

  # GET /documents/1/edit
  def edit
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = Document.new(document_params)
    loop do
        @document.slug = SecureRandom.uuid
        break unless Document.where(slug: @document.slug).exists?
    end
    respond_to do |format|
      if @document.save
        format.html { redirect_to het_el_kazi_path, notice: 'Document ajouté avec succès.' }
        format.json { render :show, status: :created, location: @document }

        puts "Create action ********* #{@document.id}"

        # Add document enonce to API
        add_doc_enonce_response = RestClient.post  "http://127.0.0.1:8080/add" ,
                                           
        {'document_id'=> @document.id.to_s + 'E' ,'pdf_binary_file_path' => "/home/abderrahmen/Bureau/MonPrepa/public/corrige/#{@document.id}/#{@document.pdf_file_enonce_file_name}" }.to_json,
    
        {content_type: :json, accept: :json}


        if (not @document.pdf_file_corrige_file_name.nil? )
          # Add document corrige to API
          add_doc_corrige_response = RestClient.post  "http://127.0.0.1:8080/add" ,
                                         
          {'document_id'=> @document.id.to_s + 'C' ,'pdf_binary_file_path' => "/home/abderrahmen/Bureau/MonPrepa/public/corrige/#{@document.id}/#{@document.pdf_file_corrige_file_name}" }.to_json,
      
          {content_type: :json, accept: :json}
           
          puts "-------------------------------------------------------------"  
          puts "#{add_doc_corrige_response}"
          puts "-------------------------------------------------------------"  
        end

      else
        format.html { render :new }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to @document, notice: 'Document modifié avec succès.' }
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document.destroy
    respond_to do |format|

      # Delete Enonce Document 
      add_doc_enonce_response = RestClient.post  "http://127.0.0.1:8080/delete" ,
                                           
            { 'document_id'=>  @document.id.to_s + 'E'}.to_json, {content_type: :json, accept: :json}
      puts "-------------------------------------------------------------"  
      puts "#{add_doc_enonce_response}"
      puts "-------------------------------------------------------------" 

      if ( not @document.pdf_file_corrige_file_name.nil? )
        add_doc_corrige_response = RestClient.post  "http://127.0.0.1:8080/delete" ,
                                           
            {'document_id'=>  @document.id.to_s + 'C'}.to_json,
        
            {content_type: :json, accept: :json}
      end
         
        puts "-------------------------------------------------------------"  
        puts "#{add_doc_corrige_response}"
        puts "-------------------------------------------------------------"  

      format.html { redirect_to het_el_kazi_path, notice: 'Document supprimé avec succès.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @document.upvote_by current_user
    redirect_back(fallback_location: root_path)
    flash[:success] = "Ajouter au favoris!"
    DocumentFavori.create(user_id: current_user.id , document_id: @document.id)
  end


  def downvote
    @document.downvote_by current_user
    redirect_back(fallback_location: root_path)
    flash[:success] = "Supprimer des favoris!"
    DocumentFavori.where(user_id: current_user.id , document_id: @document.id).count
  end


  def welcome_for_documents

    if user_signed_in?

      # CountDown for User
      @countdown_date = current_user.created_at.strftime(" %b %d, %Y %H:%M:%S")
      @account_creation_date = current_user.created_at.to_i + 1.days.to_i
      @actual_date = DateTime.now.to_i

      @expired_time_days = ((@account_creation_date- @actual_date ) / 86400 ) 
      @expired_time_hours = (((@account_creation_date- @actual_date) % 86400 ) / 3600 ) 
      @expired_time_minutes = (((@account_creation_date- @actual_date) % 3600 ) / 60 ) 
      @expired_time_seconds = ((@account_creation_date- @actual_date) % 60  ) 

      puts "#{@expired_time_days}----------------------"
      puts "#{@expired_time_hours}----------------------"
      puts "#{@expired_time_minutes}----------------------"
      puts "#{@expired_time_seconds}----------------------"

      if ( @expired_time_days < 0 )  
        @session_expired = "false"
      else
        @session_expired = "true"
      end 


      # Get current user
      @user = current_user  

      # Get User Documents for defined level
      @user_documents = Document.user_documents(@user)

      # Get User Documents for all sections
      @all_sections = Document.all_sections(@user)


      # Preferred Documents
      @preferred_docs = DocumentFavori.where(user_id: current_user.id).select("distinct document_id")

      # Visited Documents
      @visited_docs = DocumentHistory.where(user_id: current_user.id).select("distinct document_id")

      # New documents added by the Admin in last days
      @new_documents = Document.where(" documents.created_at < ? " ,  Date.today + 3.days ) 

      # Get new messages
      @messages = Message.all.order("created_at DESC")

    end

    # Search documents by type, course and year
    if params[:search_type].present? and params[:search_course].present? and params[:search_year].present?

      @documents = Document.where("documents.document_type LIKE ? and documents.document_course LIKE ?
       and documents.document_year LIKE ?  ", "#{params[:search_type]}" , "#{params[:search_course]}" , "#{params[:search_year]}" )  

    elsif params[:search_type].present? and params[:search_course].present? 

      @documents = Document.where("documents.document_type LIKE ? and documents.document_course LIKE ? ", "#{params[:search_type]}" , "#{params[:search_course]}"  ) 

    elsif params[:search_course].present? and params[:search_year].present?
      
      @documents = Document.where("documents.document_course LIKE ? and documents.document_year LIKE ?  " , "#{params[:search_course]}" , "#{params[:search_year]}" )  
    elsif params[:search_type].present?  and params[:search_year].present?

      @documents = Document.where("documents.document_type LIKE ?  and documents.document_year LIKE ?  ", "#{params[:search_type]}" , "#{params[:search_year]}" )   
    else 
      @documents = Document.all
    end



  end

  def get_duration_hrs_and_mins(duration)
    hours = duration / (1000 * 60 * 60 * 24)
    minutes = duration / (1000 * 60 * 60) % 60
    "#{hours}h #{minutes}m" 
  rescue
    ""
  end

   def user_documents

    if user_signed_in?

      # Get current user
      @user = current_user  

      # CountDown for User
      @countdown_date = current_user.created_at.strftime(" %b %d, %Y %H:%M:%S")
      @account_creation_date = current_user.created_at.to_i + 1.days.to_i
      @actual_date = DateTime.now.to_i

      @expired_time_days = ((@account_creation_date- @actual_date ) / 86400 ) 
      @expired_time_hours = (((@account_creation_date- @actual_date) % 86400 ) / 3600 ) 
      @expired_time_minutes = (((@account_creation_date- @actual_date) % 3600 ) / 60 ) 
      @expired_time_seconds = ((@account_creation_date- @actual_date) % 60  ) 

      if ( @expired_time_days < 0  )  
        @session_expired = "true"
      else
        @session_expired = "false"
      end 

      # Get User Documents for defined level
      @user_documents = Document.user_documents(@user)

      # Get User Documents for all sections
      @all_sections = Document.all_sections(@user)


      @resumes = Document.resumes
      @concours = Document.concours
      @devoirs = Document.devoirs
      @series = Document.series
      @examens = Document.examens
    end

    # Search documents by type, course and year
    if params[:search_type] and params[:search_course] and params[:search_year]
      @documents = Document.where("documents.document_type LIKE ? and documents.document_course LIKE ?
       and documents.document_year LIKE ?  ", "#{params[:search_type]}" , "#{params[:search_course]}" , "#{params[:search_year]}" )  
    else
      @documents = Document.all
    end

  end

  def het_el_kazi   
    
    # New User declaration
    @user = User.new 
    # New document declaration
    @document = Document.new
    # New message declaration
    @message = Message.new
    # New institute declaration
    @institute = Institute.new
    # New section declaration
    @section = Section.new
    # New Comment declaration
    @comment = Comment.new

    # List of users
    @users = User.all
    # List of documents
    @documents = Document.all
    # List of messages
    @messages = Message.all
    # List of institutes
    @institutes = Institute.all
    # List of sections
    @sections = Section.all
    # List of comments
    @comments = Comment.all

    # For statistics
    @visited_docs = DocumentHistory.all
    @preferred_docs = DocumentFavori.all

    # Search users by phone number
    if params[:search]
      @users = User.where("users.phone_number LIKE ? ", "#{params[:search]}" )  
    else
      @users = User.all
    end

    # Search documents by type, course and year
    if params[:search_type].present? and params[:search_course].present? and params[:search_year].present?

      @documents = Document.where("documents.document_type LIKE ? and documents.document_course LIKE ?
       and documents.document_year LIKE ?  ", "#{params[:search_type]}" , "#{params[:search_course]}" , "#{params[:search_year]}" )  

    elsif params[:search_type].present? and params[:search_course].present? 

      @documents = Document.where("documents.document_type LIKE ? and documents.document_course LIKE ? ", "#{params[:search_type]}" , "#{params[:search_course]}"  ) 

    elsif params[:search_course].present? and params[:search_year].present?
      
      @documents = Document.where("documents.document_course LIKE ? and documents.document_year LIKE ?  " , "#{params[:search_course]}" , "#{params[:search_year]}" )  

    elsif params[:search_type].present?  and params[:search_year].present?

      @documents = Document.where("documents.document_type LIKE ?  and documents.document_year LIKE ?  ", "#{params[:search_type]}" , "#{params[:search_year]}" ) 

    elsif params[:search_type].present?

      @documents = Document.where("documents.document_type LIKE ?  ", "#{params[:search_type]}"  ) 

    elsif params[:search_course].present? 

      @documents = Document.where("documents.document_course LIKE ? ", "#{params[:search_course]}"  ) 

    elsif params[:search_year].present? 

      @documents = Document.where("documents.document_year LIKE ? ", "#{params[:search_year]}"   ) 

    else 
      @documents = Document.all
    end


  end

  def preferred_documents
    # Preferred Documents
    if user_signed_in?
      @preferred_docs = DocumentFavori.where(user_id: current_user.id).select("distinct document_id")
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find_by_slug(params[:slug])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:document_key, :document_section, :document_level, :slug,
       :document_course, :document_type, :document_subject, :document_year, :document_data,
       :document_trimestre, :pdf_file_enonce , :pdf_file_corrige , :enonce_data , :corrige_data)
    end

    # Set slug for document creation
    def set_slug
      loop do
        slug = SecureRandom.uuid
        break unless Document.where(slug: slug).exists?
      end
    end

end
