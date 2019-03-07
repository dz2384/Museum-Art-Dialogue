<post-item>

  <div class="card postlist">
    <div class="card-header bg-light">
      <img src={ post.profileurl} alt="profilePic">
      <span>{ post.userName }</span>
    </div>
    <div class="card-body">
      <p>{ post.text }</p>
      <img src={ post.imgurl="post.imgUrl" }="}" alt="imgInput">
    </div>
    <div class="card-footer">
      <i class="far fa-thumbs-up fa-2x iconLike"></i>
      <i class="far fa-comments fa-2x iconComments"></i>
    </div>
  </div>

  <script>
    var tag = this;
    console.log('post-item.tag');
  </script>
  <style>
    :scope {
      display: block;
      margin-top: 20px;
    }

    .iconLike {

      float: right;
    }

    .iconComments {

      float: right;
      margin-right: 10px;
    }

  </style>
</post-item>
