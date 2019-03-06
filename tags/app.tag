<app>

  <div class="container">
    <div class="row">
      <div class="col-3">
      </div>
      <div class="col-6">
        <div class="postcreation">
          <post-creation></post-creation>
        </div>

        <div class="postlist">
         <ul>
            <post-item each = { post, i in posts }></post-item>
          </ul>
        </div>

      </div>
      <div class="col-3">
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

      // observer.on('post:add', (userInput) = function(event){
      //   this.posts.push(userInput);
      //   this.update();
      // });

    </script>
    <style>
        :scope {
            display: block;
        }
    </style>
</app>
