 $(document).ready(function(){  
           $.ajax({  
                url:'/api/comments/',  
                type:'POST',  
                data : {
                    page : 1,
                    pagelimit : 2
                  }, 
                  success: function(data) {
                      console.log(data.commentsArray)
                    success(data.commentsArray)
                },
                error: error
           })  
 });  