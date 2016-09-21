configure :production, :development, :test do |env|
  db = URI.parse(ENV['DATABASE_URL'] || "postgres://localhost/coop_#{env.environment.to_s}")

  ActiveRecord::Base.establish_connection(
      :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
      :host     => db.host,
      :username => db.user,
      :password => db.password,
      :database => db.path[1..-1],
      :encoding => 'utf8'
  )
end