<app>


    <div class="row">
      <div class="col-3">
         <profile></profile>
      </div>
      <div class="col-6">
        <div class="postlist">
            <post-item each = { post, i in posts }></post-item>
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
        console.log('postpage.tag');
        this.posts = [{
          userName:"Somebody",
          profileUrl: "",
          text: "hh",
          imgUrl: ""
      },{
        userName:"Someone",
        profileUrl: "",
        text: "kk",
        imgUrl: ""
      },{
        userName:"Something",
        profileUrl: "",
        text:"gg",
        imgUrl:""
      }];

      observer.on('post:add', function(userInput) {
        console.log(userInput);
        console.dir(tag);
        console.log(tag.posts);
        tag.posts.push(userInput);
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
