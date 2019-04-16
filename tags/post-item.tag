<post-item>

  <div class="card postlist">
    <div class="card-header bg-light">
      <img src={ post.profileUrl } alt="profilePic" class="userProfile">
      <span class="userName">{ post.userName }</span>
    </div>
    <div class="card-body">
      <p>{ post.text }</p>
      <img src={ post.imgUrl }>
    </div>
    <div class="card-footer">
      <i class="far fa-comments fa-2x iconComments"></i>
      <i class="far fa-thumbs-up fa-2x iconLike"></i>
    </div>
  </div>


  <div if= { this.opts.user === post.userName } class="button">
    <button type="button" class="btn btn-info btn-lg" onclick={ deletePost }>Delete</button>
  </div>

  <script>
    var tag = this;
    console.log('post-item.tag');
    console.log(this.opts.currentUser, this.post.user)
    var postColRef = database.collection("postCollection");

    deletePost() {
      database.collection("postCollection").doc(this.post.id).delete();
    }


  </script>
  <style>
    :scope {
      display: block;
    }

    .iconComments {
      color: #1e9dac;
      float: right;
    }

    .iconLike {
      color: #1e9dac;
      float: right;
      margin-right: 10px;
    }

    .card-header {

      height: 150px;
    }

    .postlist {

      margin-bottom: 30px;
    }

    .userName {


      font-size: 120%;
      font-weight: bold;
    }



  </style>
</post-item>
