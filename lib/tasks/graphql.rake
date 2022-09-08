require "graphql/rake_task"
GraphQL::RakeTask.new(schema_name: "TaypiSchema")


# GraphQL::RakeTask.new(
#   load_schema: -> (_task) {
#     require_relative '../../app/graphql/dcms_schema'
#     DcmsSchema
#   }
# )

# namespace :graphql do
#   task export: :environment do
#     Rake::Task["graphql:schema:dump"].invoke
#   end
# end