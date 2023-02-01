# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lend.create(name: "わかやま" ,loaned_out:0 ,loaned_date: "2023-01-20", return_date: "2023-01-26")
Lend.create(name: "やまさき" ,loaned_out:2 ,loaned_date: "2023-01-21", return_date: "2023-01-27")
 
LostItem.create(item_name: "スマホ" ,date_picked: "2023-10-28", where_picked: "学校", feature: "赤い", storage_period: "2023-10-31", category: 0)
LostItem.create(item_name: "スマホ" ,date_picked: "2023-10-29", where_picked: "学校", feature: "青い", storage_period: "2023-11-01", category: 0)
LostItem.create(item_name: "スマホ" ,date_picked: "2023-10-30", where_picked: "学校", feature: "白い", storage_period: "2023-11-02", category: 0)
LostItem.create(item_name: "財布" ,date_picked: "2023-10-28", where_picked: "学校", feature: "長財布", storage_period: "2023-10-31", category: 1)
LostItem.create(item_name: "財布" ,date_picked: "2023-10-29", where_picked: "学校", feature: "鳥柄", storage_period: "2023-11-01", category: 1)
LostItem.create(item_name: "財布" ,date_picked: "2023-10-30", where_picked: "学校", feature: "水玉", storage_period: "2023-11-02", category: 1)
LostItem.create(item_name: "キーホルダー" ,date_picked: "2023-10-28", where_picked: "学校", feature: "アクリル", storage_period: "2023-10-31", category: 2)
LostItem.create(item_name: "キーホルダー" ,date_picked: "2023-10-29", where_picked: "学校", feature: "ラバー", storage_period: "2023-11-01", category: 2)
LostItem.create(item_name: "キーホルダー" ,date_picked: "2023-10-30", where_picked: "学校", feature: "丸い", storage_period: "2023-11-02", category: 2)
LostItem.create(item_name: "ハンカチ・タオル" ,date_picked: "2023-10-28", where_picked: "学校", feature: "黄色", storage_period: "2023-10-31", category: 3)
LostItem.create(item_name: "ハンカチ・タオル" ,date_picked: "2023-10-29", where_picked: "学校", feature: "花柄", storage_period: "2023-11-01", category: 3)
LostItem.create(item_name: "ハンカチ・タオル" ,date_picked: "2023-10-30", where_picked: "学校", feature: "スポーツタオル", storage_period: "2023-11-02", category: 3)
LostItem.create(item_name: "文房具" ,date_picked: "2023-10-28", where_picked: "学校", feature: "赤ペン", storage_period: "2023-10-31", category: 4)
LostItem.create(item_name: "文房具" ,date_picked: "2023-10-29", where_picked: "学校", feature: "シャーペン", storage_period: "2023-11-01", category: 4)
LostItem.create(item_name: "文房具" ,date_picked: "2023-10-30", where_picked: "学校", feature: "物差し", storage_period: "2023-11-02", category: 4)
