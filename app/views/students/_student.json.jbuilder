json.extract! student, :id, :school, :administrator_id, :user_id, :grade, :created_at, :updated_at
json.url student_url(student, format: :json)
