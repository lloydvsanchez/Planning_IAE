# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#EnvoiLog.create(date_prochain: Date.parse('2021-09-24')) unless EnvoiLog.any?

Ouverture.create([
  { bloc: "A",
  jour: "lundi",
  début: "2000-01-01 08:00:00.000000000 +0000",
  fin: "2000-01-01 22:00:00.000000000 +0000"},
  { bloc: "A",
  jour: "mardi",
  début: "2000-01-01 08:00:00.000000000 +0000",
  fin: "2000-01-01 22:00:00.000000000 +0000"},
  { bloc: "A",
  jour: "mercredi",
  début: "2000-01-01 08:00:00.000000000 +0000",
  fin: "2000-01-01 22:00:00.000000000 +0000"},
  { bloc: "A",
  jour: "jeudi",
  début: "2000-01-01 08:00:00.000000000 +0000",
  fin: "2000-01-01 22:00:00.000000000 +0000"},
  { bloc: "A",
  jour: "vendredi",
  début: "2000-01-01 08:00:00.000000000 +0000",
  fin: "2000-01-01 22:00:00.000000000 +0000"},
  { bloc: "A",
  jour: "samedi",
  début: "2000-01-01 08:00:00.000000000 +0000",
  fin: "2000-01-01 22:00:00.000000000 +0000"},

  { bloc: "B",
  jour: "lundi",
  début: "2000-01-01 08:00:00.000000000 +0000",
  fin: "2000-01-01 22:00:00.000000000 +0000"},
  { bloc: "B",
  jour: "mardi",
  début: "2000-01-01 08:00:00.000000000 +0000",
  fin: "2000-01-01 22:00:00.000000000 +0000"},
  { bloc: "B",
  jour: "mercredi",
  début: "2000-01-01 08:00:00.000000000 +0000",
  fin: "2000-01-01 22:00:00.000000000 +0000"},
  { bloc: "B",
  jour: "jeudi",
  début: "2000-01-01 08:00:00.000000000 +0000",
  fin: "2000-01-01 22:00:00.000000000 +0000"},
  { bloc: "B",
  jour: "vendredi",
  début: "2000-01-01 08:00:00.000000000 +0000",
  fin: "2000-01-01 22:00:00.000000000 +0000"},
  { bloc: "B",
  jour: "samedi",
  début: "2000-01-01 08:00:00.000000000 +0000",
  fin: "2000-01-01 22:00:00.000000000 +0000"},

  { bloc: "D",
    jour: "lundi",
    début: "2000-01-01 08:00:00.000000000 +0000",
    fin: "2000-01-01 22:00:00.000000000 +0000"},
    { bloc: "D",
    jour: "mardi",
    début: "2000-01-01 08:00:00.000000000 +0000",
    fin: "2000-01-01 22:00:00.000000000 +0000"},
    { bloc: "D",
    jour: "mercredi",
    début: "2000-01-01 08:00:00.000000000 +0000",
    fin: "2000-01-01 22:00:00.000000000 +0000"},
    { bloc: "D",
    jour: "jeudi",
    début: "2000-01-01 08:00:00.000000000 +0000",
    fin: "2000-01-01 22:00:00.000000000 +0000"},
    { bloc: "D",
    jour: "vendredi",
    début: "2000-01-01 08:00:00.000000000 +0000",
    fin: "2000-01-01 22:00:00.000000000 +0000"},
    { bloc: "D",
    jour: "samedi",
    début: "2000-01-01 08:00:00.000000000 +0000",
    fin: "2000-01-01 22:00:00.000000000 +0000"}
])
