json.array!(@forum_forums) do |forum_forum|
  json.extract! forum_forum, :id, :parent_forum_id, :name, :pos, :moderator
  json.url forum_forum_url(forum_forum, format: :json)
end
