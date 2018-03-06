

- sharePlace modelの作成(ダミーデータとか。)
rails g model SharePlace
bundle exec rake db:migrate

------------------

->  shareplace/1/ : sharePlace#showアクション(this is londonをカッコ良くする)
（localhost/shareplace/1）
  →このページに投稿など表示させる。
  →その駐屯地の情報も含む（住所情報とか）「googlemapのためにもダミーデータ（実在しているもの）」

  -> ユーザの投稿が流れている。駐屯地情報など。
   ul li, table →だみー


本当に必要な情報が確定したら、
//「DBのcolumnが重要になる。今一度必要な情報を考える」
DBを作成する

  shareplace/1/posts/new (this is new form をそれっぽくする)
    (form_for [@shareplace, @post] do |f|
      moooviのreview投稿を見る。

      (product/1/reviews/new -> shareplace/1/posts/new)

    end)

    -> 新規投稿画面 pictweetとか参考にすればそれっぽくなるかなと。

  shareplace/1/posts createアクション

  -> databaseに保存したい。


//  shareplace/1/post/1
//    -> それぞれの投稿の詳細画面



