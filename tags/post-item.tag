<post-item>

  <div class="card">
    <div class="card-header bg-light">
      <img src= { post.profileUrl } alt="profilePic">
      <span>{post.userName}</span>
    </div>
    <div class="card-body">
      <p>{ post.textInput }</p>
      <img src= { post.imgUrl } alt="imgInput">
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
            margin-top: 50px;
        }
    </style>
</post-item>
