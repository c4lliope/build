function rb
  dcrun web rake db:rollback
  and dcrun -e RAILS_ENV=test web rake db:rollback
end
