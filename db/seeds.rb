# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p 'Seeding Data for DBType'
3.times do |i|
    DbType.create!(name: "DBTYPE #{i}")
end

p 'Seeding Data for DBCred'
10.times do |i|
    if i < 4
        dt = DbType.first
    elsif i > 3 && i < 8
        dt = DbType.find(2)
    else
        dt = DbType.last
    end

    DbCred.create!(
        name: "DB CREDENTINAL #{i}",
        host: "#{i}.#{i}.#{i}.#{i}",
        location: i > 5 ? "hosted" : "local",
        version: "v#{i}.0.0",
        user: "USER #{i}",
        password: "PASSWORD #{i}",
        db_type: dt
    )
end

p 'Seeds run successfully'
