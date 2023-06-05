class Article < ApplicationRecord
    validates:title, presence:true
    validates:description,presence:true
    # validates:title, presence:true,length:{minimum:6,maximum:80}
    # validates:description,presence:true,length:{minimum:300}
end
