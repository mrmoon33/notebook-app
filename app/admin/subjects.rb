ActiveAdmin.register Subject do
  permit_params :name, note_ids: []
  
  show title: 'My title' do 
    h3 'You have ' + pluralize(subject.notes.count, 'note') + ' for this subject'
    subject.notes.each do |note|
      div do
        h1 note.title
        h4 link_to "[#{note.id}]: You created this note on #{note.created_at.strftime('%H:%M:%S -%e %b %y')}", admin_note_path(note)
      end
    end
  end

  
  
  
   
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
