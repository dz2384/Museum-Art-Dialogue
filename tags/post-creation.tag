<post-creation>

  <div class="card postcreation">
    <div class="card-header text-white bg-info">
      <span>Create your New Post!</span>

    </div>
    <div class="card-body">
      <!-- <input type="text" class="textInput" ref="textInput" placeholder="Share..."> -->
      <textarea ref="textInput" rows="8" cols="55">{ text }</textarea>

      <div class="buttonGroup">
        <button type="button" class="btn btn-info" onclick= { addPost }>Post</button>
      </div>
    </div>
    <div class="card-footer text-muted">
      <span>#Dali #1999</span>
    </div>
  </div>

  <script>
    var tag = this;
    var text = "";
    let observer = riot.observable();

    addPost () {
      var text = "";
      var textInput = this.text;
      var userInput = {
        userName:"",
        profileUrl: "",
        text: textInput,
        imgUrl:""
      };
      // observer.trigger('post:add', userInput);
      this.posts.push(userInput);
      console.log(this);
    }


  </script>
  <style>
    :scope {
      display: block;
    }

    .buttonGroup {

      margin-top: 20px;
    }
  </style>
</post-creation>
