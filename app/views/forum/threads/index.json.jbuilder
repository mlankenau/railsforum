json.array!(@forum_threads) do |forum_thread|
  json.extract! forum_thread, :id, :creator, :subject, :forum_id
  json.url forum_thread_url(forum_thread, format: :json)
end
