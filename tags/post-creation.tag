<post-creation>

  <div class="card postcreation">
    <div class="card-header text-white bg-info">
      <span>Create your New Post!</span>

    </div>
    <div class="card-body">
      <!-- <input type="text" class="textInput" ref="textInput" placeholder="Share..."> -->
      <textarea ref="textInput" rows="8" cols="38">{ text }</textarea>

      <div class="iconGroup">
        <label for="iconArtist" class="iconArtist"><i class="fas fa-users fa-2x"></i><br>artist</label>
        <label for="iconArtwork"><i class="fab fa-pushed fa-2x"></i></i><br>artwork</label>

        <div class="button">
          <button type="button" class="btn btn-info btn-lg" onclick= { addPost }>Post</button>
        </div>
      </div>
    </div>
    <div class="card-footer text-muted">
      <span>#Dali #1999</span>
    </div>
  </div>

  <script>
    var tag = this;
    var text = "";
    // let observer = riot.observable();

    addPost () {
      var text = "";
      var textInput = this.refs.textInput.value;
      console.log(textInput);
      var userInput = {
        userName:"",
        profileUrl: "",
        text: textInput,
        imgUrl:""
      };
      observer.trigger('post:add', userInput);
    }


  </script>
  <style>
    :scope {
      display: block;
      margin-right: 25px;
    }

    .iconGroup {
      margin-top: 20px;
    }

    .iconArtist{
      margin-left: 20px;
      margin-right: 20px;
    }

    .button {

      float: right;
      margin-top: 20px;
    }
  </style>
</post-creation>
