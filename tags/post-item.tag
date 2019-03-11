<post-item>

  <div class="card postlist">
    <div class="card-header bg-light">
      <img src={ post.profileurl } alt="profilePic">
      <span>{ post.userName }</span>
    </div>
    <div class="card-body">
      <p>{ post.text }</p>
      <img src={ post.imgurl="post.imgUrl" }="}" alt="imgInput">
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

    // deletePost(event){
    //   observer.trigger('post:delete');
    //   this.deletedPosts = getDeletedPosts(opts.posts);
    // }
    //
    // function getDeletedPosts(posts) {
    //   return posts.filter(post => posts.deleted).length;
    // }

    deletePost(event){
      //this.opts.posts.
      observer.trigger('post:delete');
    }


  </script>
  <style>
    :scope {
      display: block;
      margin-top: 20px;
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



  </style>
</post-item>
