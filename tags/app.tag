<app>
  <post-creation></post-creation>

  <div class="container">
    <div class="row">
      <div class="col-3">


      </div>

      <div class="col-6">
        <ul>
          <post-item each = { post, i in posts }></post-item>
        </ul>
            <!-- <div class="form-group"> -->
              <!-- <p>{ textInput }</p>
              <img src={ imgUrl} alt="imgInput"> -->


            <!-- </div> -->


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
          textInput: "hh",
          imgUrl: ""
      },{
        userName:"Someone",
        profileUrl: "",
        textInput: "kk",
        imgUrl: ""
      },{
        userName:"Something",
        profileUrl: "",
        textInput:"gg",
        imgUrl:""
      }];

    </script>
    <style>
        :scope {
            display: block;
        }
    </style>
</app>
