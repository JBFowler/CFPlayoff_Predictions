# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

team_list = [
  ["Boston College", "ACC"],
  ["Clemson", "ACC"],
  ["Duke", "ACC"],
  ["Florida State", "ACC"],
  ["Georgia Tech", "ACC"],
  ["Louisville", "ACC"],
  ["Miami (FL)", "ACC"],
  ["NC State", "ACC"],
  ["North Carolina", "ACC"],
  ["Pittsburgh", "ACC"],
  ["Syracuse", "ACC"],
  ["Virginia", "ACC"],
  ["Virginia Tech", "ACC"],
  ["Wake Forest", "ACC"],
  ["Baylor", "Big 12"],
  ["Iowa State", "Big 12"],
  ["Kansas", "Big 12"],
  ["Kansas State", "Big 12"],
  ["Oklahoma", "Big 12"],
  ["Oklahoma State", "Big 12"],
  ["TCU", "Big 12"],
  ["Texas", "Big 12"],
  ["Texas Tech", "Big 12"],
  ["West Virginia", "Big 12"],
  ["Illinois", "Big 10"],
  ["Indiana", "Big 10"],
  ["Iowa", "Big 10"],
  ["Maryland", "Big 10"],
  ["Michigan", "Big 10"],
  ["Michigan State", "Big 10"],
  ["Minnesota", "Big 10"],
  ["Nebraska", "Big 10"],
  ["Northwestern", "Big 10"],
  ["Ohio State", "Big 10"],
  ["Penn State", "Big 10"],
  ["Purdue", "Big 10"],
  ["Rutgers", "Big 10"],
  ["Wisconson", "Big 10"],
  ["Notre Dame", "FBS Independents"],
  ["Arizona", "Pac-12"],
  ["Arizona State", "Pac-12"],
  ["California", "Pac-12"],
  ["Colorado", "Pac-12"],
  ["Oregon", "Pac-12"],
  ["Oregon State", "Pac-12"],
  ["Standford", "Pac-12"],
  ["UCLA", "Pac-12"],
  ["USC", "Pac-12"],
  ["Utah", "Pac-12"],
  ["Washington", "Pac-12"],
  ["Washington State", "Pac-12"],
  ["Alabama", "SEC"],
  ["Arkansas", "SEC"],
  ["Auburn", "SEC"],
  ["Florida", "SEC"],
  ["Georgia", "SEC"],
  ["Kentucky", "SEC"],
  ["LSU", "SEC"],
  ["Mississippi State", "SEC"],
  ["Missouri", "SEC"],
  ["Ole Miss", "SEC"],
  ["South Carolina", "SEC"],
  ["Tennessee", "SEC"],
  ["Texas A&M", "SEC"],
  ["Vanderbilt", "SEC"]
  ]

  team_list.each do |name, conference|
    Team.create( name: name, conference: conference)
  end