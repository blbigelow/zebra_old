ActsAsFerret::define_index('shared',
 :models => {
   Blog  => {:fields => [:title, :body, :tag_list]},
   Discussion => {:fields => [:title, :body, :tag_list]},
   Document    => {:fields => [:title, :body, :tag_list]},
   BlogComment => {:fields => [:body]},
   Document_comment => {:fields => [:body]}
 },
 :ferret   => {
   :default_fields => [:title, :body, :tag_list]
 }
)