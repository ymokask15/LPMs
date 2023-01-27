# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lend.create(name: "わかやま" ,loaned_out:0 ,loaned_date: "2023-01-20", return_date: "2023-01-26")
Lend.create(name: "やまさき" ,loaned_out:2 ,loaned_date: "2023-01-21", return_date: "2023-01-27")

Inquiry.create(name: "わかやま",matter:0,detail: "スマホを落としました")
Inquiry.create(name: "やまさき",matter:2,detail: "落し物はどこに取りに行けばいいのか")