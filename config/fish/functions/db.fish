function db
  dcrun web rake db:migrate db:rollback
  and g d db/schema.rb
  and dcrun web rake db:migrate
  and g d db/schema.rb
  and dcrun -e RAILS_ENV=test web rake db:migrate
end
