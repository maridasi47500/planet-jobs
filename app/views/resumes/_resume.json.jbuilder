json.extract! resume, :id, :user_id, :poste_convoite, :nom_complet, :ville, :permis, :projet_professionnel, :email, :phone, :created_at, :updated_at
json.url resume_url(resume, format: :json)
