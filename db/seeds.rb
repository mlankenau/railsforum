# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

forum_coding = Forum::Forum.create(name: 'Coding')
forum_coding_cpp = Forum::Forum.create(name: 'C++', parent_forum_id:forum_coding.id)
forum_coding_java = Forum::Forum.create(name: 'Java', parent_forum_id:forum_coding.id)
forum_coding_ruby = Forum::Forum.create(name: 'Ruby', parent_forum_id:forum_coding.id)

forum_pm = Forum::Forum.create(name: 'Project management')
forum_pm_wf = Forum::Forum.create(name: 'Waterfall', parent_forum_id:forum_pm.id)
forum_pm_scrum = Forum::Forum.create(name: 'Scrum', parent_forum_id:forum_pm.id)
forum_pm_kanban = Forum::Forum.create(name: 'Kanban', parent_forum_id:forum_pm.id)

forum_jobs = Forum::Forum.create(name: 'Jobs')
forum_jobs_offers = Forum::Forum.create(name: 'Jobs', parent_forum_id:forum_jobs.id)