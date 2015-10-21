class AddrController < ApplicationController
    
    def index
        cnt1 = Post.count()
        if(cnt1>5100)
            redirect_to "/addr/postend"
        else
           
        end
    end
    
    def submit
        cnt2 = Post.count()
        if(cnt2<5000)
            Post.create(username:params[:finuser], postcode: params[:finpost], useradr: params[:finadr])
        else
            redirect_to "/addr/postend"
            
        end
    end
    
    def adrlist
        @posts = Post.all
    end
    
    def count
        
    end
    
    def postend
    end
    
    def finalpage

    end
    
end
