class AddDocumentToUpload < ActiveRecord::Migration
  def change
    add_column :uploads, :document_file_name, :string    
    add_column :uploads, :document_content_type, :string    
    add_column :uploads, :document_file_size, :integer
    add_column :uploads, :document_updated_at, :string      
  end
end
