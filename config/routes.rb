ActionController::Routing::Routes.draw do |map|

  map.resources :entries,:member=>{:snapshot=>:get,:snapshot_html=>:get,:send_zip_email=>:get,:send_email=>:get,:download=>:get,:zip_download=>:get},
    :collection=>{:destroys=>:delete,:edit_tags=>:get,:update_tags=>:put,:selector=>:get,:search=>:get} do |entry|
    entry.resources :shares
    entry.resource :feeling
  end

  map.resources :feelings

  map.resources :shares,:collection=>{:img=>:post,:video=>:post,:audio=>:post,:audio_valid=>:post} do |share|
    share.resources :shares
    share.resource :feeling
  end

  map.url_code '/url/:code',:controller=>"short_urls",:action=>"show"

  map.resources :users do |user|
    user.resource :entry_show,:collection=>{:iframe=>:get}
    user.resources :follows
    user.resources :fans
  end
  map.root :controller=>'index'
end
