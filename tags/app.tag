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
          userName:"Linda Tiger",
          profileUrl: "",
          text: "Impressionism was not an exclusively French affair. Ahead of Christie’s inaugural sale of British Impressionism on 22 November, Alastair Smart and specialist Brandon Lindberg consider the movement’s impact across the English Channel. #Impressionism",
          imgUrl: "",
          deleted: false
      },{
        key: 1,
        userName:"Someone",
        profileUrl: "",
        text: "The roiling landscape scenes betray the redundance of animating images that already sizzle with energy, but the portraiture works beautifully, especially because the actors who supply the characters' voices and visages are first-rate. #Impressionism #lovingvincent #movie",
        imgUrl: "",
        deleted: false
      },{
        key: 2,
        userName:"Something",
        profileUrl: "",
        text:"I think this exhibition can not cover the diversity and richness of Chinese immigrate lives. The storyteller, which in this case is the photographer and the curator, only depicts “one story” --- the poverty and backwardness of Chinese immigration, which might contains bias and stereotype.#museumofthecityofnewyork #interiorlives #chineseculture #photographs #march24",
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
