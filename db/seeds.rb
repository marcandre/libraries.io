# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Repository.transaction do
  repository = Repository.create!({
    "full_name": "gruntjs/grunt",
    "description": "Grunt: The JavaScript Task Runner",
    "fork": false,
    "created_at": "2011-09-21 15:16:20 UTC",
    "updated_at": "2018-06-04 00:25:22 UTC",
    "pushed_at": "2018-06-04 00:25:18 UTC",
    "homepage": "http://gruntjs.com/",
    "size": 2669,
    "stargazers_count": 11814,
    "language": "JavaScript",
    "has_issues": true,
    "has_wiki": true,
    "has_pages": false,
    "forks_count": 1539,
    "mirror_url": nil,
    "open_issues_count": 133,
    "default_branch": "master",
    "subscribers_count": 573,
    "uuid": "2430537",
    "source_name": nil,
    "license": "Other",
    "private": false,
    "contributions_count": 69,
    "has_readme": "README.md",
    "has_changelog": "CHANGELOG",
    "has_contributing": "CONTRIBUTING.md",
    "has_license": "LICENSE",
    "has_coc": nil,
    "has_threat_model": nil,
    "has_audit": nil,
    "status": nil,
    "last_synced_at": "2018-02-13 12:18:28 UTC",
    "rank": 25,
    "host_type": "GitHub",
    "host_domain": nil,
    "name": nil,
    "scm": "git",
    "fork_policy": nil,
    "pull_requests_enabled": nil,
    "logo_url": nil,
  })

  project = repository.projects.create!({:name=>"base62",
   :platform=>"NPM",
   :description=>"Javascript Base62 encode/decoder",
   :homepage=>"https://github.com/andrew/base62.js",
   :normalized_licenses=>["MIT"],
   :rank=>19,
   :latest_release_published_at=>"2018-03-30 17:15:14 UTC",
   :latest_release_number=>"1.2.8",
   :language=>"JavaScript",
   :status=>nil,
   :keywords_array=>["base-62", "encoder", "decoder", "base62", "encoding", "javascript"],
   :dependents_count=>30,
   :dependent_repos_count=>15303,
  })

  project.versions.create!(:number=>"1.2.8", :published_at=>"2018-03-30 17:15:14 UTC")

  repository_user = RepositoryUser.create!(
    :login=>"donavon",
    :user_type=>"User",
    :created_at=>"2015-01-27 07:05:04 UTC",
    :updated_at=>"2017-07-18 16:55:19 UTC",
    :name=>"Donavon West",
    :company=>"@americanexpress",
    :blog=>"http://donavon.com",
    :location=>"NYC",
    :hidden=>false,
    :last_synced_at=>"2016-12-19 02:04:40 UTC",
    :bio=>"Lots of JavaScript, mostly React now-a-days.",
    :followers=>4,
    :following=>0,
    :uuid=>"887639",
    :host_type=>"GitHub",
  )

  repository.contributions.create!(repository_user: repository_user)
end
