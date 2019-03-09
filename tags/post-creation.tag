<post-creation>

  <div class="card postcreation">
    <div class="card-header text-white bg-info">
      <span>Create your New Post!</span>
    </div>
    <div class="card-body">
      <!-- <input type="text" class="textInput" ref="textInput" placeholder="Share..."> -->

      <div>
        <textarea  class="postinput" ref="textInput" rows="8">{ text }</textarea>
        <p>#Dali #oilpaint #surrealism #1999</p>
      </div>
      <div class="iconGroup1">
        <label for="labelImages" class="labelImages"><i class="far fa-images fa-2x iconImages"></i><br>Images</label>
        <label for="labelVideo" class="labelVideo"><i class="fas fa-video fa-2x iconVideo"></i><br>Video</label>
        <label for="labelPoll" class="labelPoll"><i class="fas fa-poll fa-2x iconPoll"></i><br>Poll</label>
        <label for="labelLocation" class="labelLocation"><i class="fas fa-map-marker-alt fa-2x iconLocation"></i><br>Location</label>
      </div>

        <div class="iconGroup2">
          <label for="labelArtist" class="labelArtist"><i class="fas fa-users fa-2x iconArtist"></i><br>Artist</label>
          <label for="labelArtwork" class="labelArtwork"><i class="fab fa-pushed fa-2x iconArtwork"></i></i><br>Artwork</label>

        </div>

        <div class="iconGroup3">
          <label for="labelexhibition" class="labelExhibition"><i class="far fa-eye fa-2x iconExhibition"></i><br>Exhibition</label>
        </div>

        <div class="button">
          <button type="button" class="btn btn-info btn-lg" onclick= { addPost }>Post</button>
        </div>

    </div>
  </div>

  <script>
    var tag = this;
    var text = "";
    // let observer = riot.observable();

    addPost () {
      var text = "";
      var textInput = this.refs.textInput.value;
      var deleted = false;
      console.log(textInput);
      var userInput = {
        userName:"Alicia",
        profileUrl: "",
        text: textInput,
        imgUrl:"",
        deleted: false
      };
      observer.trigger('post:add', userInput);
    }


  </script>
  <style>
    :scope {
      display: block;
      margin-right: 25px;
    }

    .labelImages {
      margin-left: 20px;
      margin-right: 10px;

    }

    .iconImages  {

      margin-left: 5px;
    }

    .iconGroup1 {
      margin-top: 20px;
    }

    .iconGroup2 {
      margin-top: 10px;
    }

    .iconGroup3 {

      margin-top: 10px;
    }

    .labelArtist{
      margin-left: 20px;
      margin-right: 10px;
    }


    .labelArtwork {
      margin-left: 5px;
      margin-right: 15px;
    }

    .labelVideo {
      margin-left: 5px;
      margin-right: 15px;

    }

    .iconVideo {

      margin-left: 3px;
    }

    .labelPoll {
      margin-left: 5px;
      margin-right: 15px;

    }

    .labelLocation {
      margin-left: 5px;
      margin-right: 15px;


    }

    .iconLocation {

      margin-left: 15px;
    }
    .iconArtwork {

      margin-left: 15px;
    }

    .labelExhibition {

      margin-left: 20px;
    }
    .iconExhibition {

      margin-left: 5px;
    }

    .button {

      float: right;
      margin-top: 20px;
    }

    .postinput{
      width: 90%;
    }
  </style>
</post-creation>
