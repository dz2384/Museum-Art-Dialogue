<post-item>

  <div class="card postlist">
    <div class="card-header bg-light">
      <img src={ post.profileurl="post.profileUrl" }="}" alt="profilePic">
      <span>{post.userName}</span>
    </div>
    <div class="card-body">
      <p>{ post.text }</p>
      <img src={ post.imgurl="post.imgUrl" }="}" alt="imgInput">
    </div>
    <div class="card-footer text-muted">
      <img src="" alt="comment">
      <img src="" alt="like">
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
  </style>
</post-item>
