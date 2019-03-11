<app>


    <div class="row">
      <div class="col-3">
         <profile user= {currentUser}></profile>
      </div>
      <div class="col-6">
        <div class="postlist">
            <post-item each = { post, i in posts } user={ currentUser }></post-item>
        </div>

      </div>
      <div class="col-3">
        <div class="postcreation">
          <post-creation></post-creation>
        </div>
      </div>
    </div>


    <script>
        var tag = this;
        this.currentUser = "Alicia";

        this.posts = [{
          userName:"Somebody",
          profileUrl: "",
          text: "hh",
          imgUrl: "",
          deleted: false
      },{
        userName:"Someone",
        profileUrl: "",
        text: "kk",
        imgUrl: "",
        deleted: false
      },{
        userName:"Something",
        profileUrl: "",
        text:"gg",
        imgUrl:"",
        deleted: false
      }];

      observer.on('post:add', function(userInput) {
        tag.posts.push(userInput);
        tag.update();
      });

      // observer.on('post:delete', () => {
      //   this.posts = this.posts.filter (posts => !posts.deleted);
      //   this.update();
      // });

      observer.on('post:delete', function(event){
        tag.posts = tag.posts.filter(function(post){
          return !post.deleted});
      });

    </script>
    <style>
        :scope {
            display: block;
            margin-top: 50px;
        }
    </style>
</app>
