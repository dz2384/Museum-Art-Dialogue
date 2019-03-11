<app>


    <div class="row">
      <div class="col-3">
         <profile user= {currentUser}></profile>
      </div>
      <div class="col-6">
        <div class="postlist">
            <post-item each = { post, i in posts } user={ currentUser } posts= {posts}></post-item>
        </div>

      </div>
      <div class="col-3">
        <div class="postcreation">
          <post-creation keynumber= { postnumber }></post-creation>
        </div> 
      </div>
    </div>


    <script>
        var tag = this;
        this.currentUser = "Alicia";

        this.posts = [{
          key: 0,
          userName:"Somebody",
          profileUrl: "",
          text: "hh",
          imgUrl: "",
          deleted: false
      },{
        key: 1,
        userName:"Someone",
        profileUrl: "",
        text: "kk",
        imgUrl: "",
        deleted: false
      },{
        key: 2,
        userName:"Something",
        profileUrl: "",
        text:"gg",
        imgUrl:"",
        deleted: false
      }];
      
      this.postnumber = this.posts.length;
      console.log(this.postnumber);

      observer.on('post:add', function(userInput) {
        tag.posts.push(userInput);
        tag.update();
      });

  

      observer.on('post:delete', function(keyIn){
        console.log(keyIn);
        tag.posts[keyIn].deleted = true;
        tag.posts = tag.posts.filter(function(post){
          return !post.deleted});
        tag.update();
      });

    </script>
    <style>
        :scope {
            display: block;
            margin-top: 50px;
        }
    </style>
</app>
