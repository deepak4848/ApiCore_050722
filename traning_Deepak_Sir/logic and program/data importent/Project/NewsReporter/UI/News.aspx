<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="UI_News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News</title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="../Data/Home/bootstrap.min.css" rel="stylesheet" />
    <link href="../Data/Home/font-awesome.min.css" rel="stylesheet" />
    <link href="../Data/Home/animate.css" rel="stylesheet" />
    <link href="../Data/Home/slick.css" rel="stylesheet" />
    <link href="../Data/Home/theme.css" rel="stylesheet" />
    <link href="../Data/Home/style.css" rel="stylesheet" />
</head>
<body>
    <div id="preloader" style="display: none;">
  <div id="status" style="display: none;">&nbsp;</div>
</div>
    <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
    <div class="container">
  <header id="header">
    <div class="row">
      <div class="col-lg-12 col-md-12">
        <div class="header_top">
          <div class="header_top_left">
            <ul class="top_nav">
              <li><a href="index.html">Home</a></li>
              <li><a href="pages/page.html">About</a></li>
              <li><a href="pages/contact.html">Contact</a></li>
              <li><a href="pages/404.html">Error Page</a></li>
            </ul>
          </div>
          <div class="header_top_right">
            <form action="#" class="search_form">
              <input type="text" placeholder="Text to Search"/>
              <input type="submit" value=""/>
            </form>
          </div>
        </div>
        <div class="header_bottom">
          <div class="header_bottom_left"><a class="logo" href="index.html">mag<strong>Express</strong> <span>A Pro Magazine Template</span></a></div>
          <div class="header_bottom_right"><a href="#"><img src="/Data/img/addbanner_728x90_V1.jpg" alt=""/></a></div>
        </div>
      </div>
    </div>
  </header>
  <div id="navarea">
    <nav class="navbar navbar-default" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav custom_nav">
            <li class=""><a href="index.html">Home</a></li>
            <li class="dropdown"> <a href="#" class="" data-toggle="dropdown" role="button" aria-expanded="false">Archives</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="pages/archive-main.html">Archive</a></li>
                <li><a href="pages/archive1.html">Archive 1</a></li>
                <li><a href="pages/archive2.html">Archive 2</a></li>
                <li><a href="pages/archive3.html">Archive 3</a></li>
              </ul>
            </li>
            <li><a href="pages/single.html">Single page</a></li>
            <li><a href="pages/contact.html">Contact</a></li>
            <li><a href="pages/404.html">404 page</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </div>
  <section id="mainContent">
    <div class="content_top">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm6">
          <div class="latest_slider">
            <div class="slick_slider slick-initialized slick-slider">
              <div class="slick-list draggable" tabindex="0"><div class="slick-track" style="opacity: 1; width: 4260px; transform: translate3d(-1420px, 0px, 0px); transition: transform 500ms linear;"><div class="single_iteam slick-slide slick-cloned" index="-1" style="width: 710px;"><img src="images/550x330x4.jpg" alt="">
                <h2><a class="slider_tittle" href="pages/single.html">Fusce eu nulla semper porttitor felis sit amet</a></h2>
              </div><div class="single_iteam slick-slide" index="0" style="width: 710px;"><img src="/Data/img/550x330x1.jpg" alt=""/>
                <h2><a class="slider_tittle" href="pages/single.html">Fusce eu nulla semper porttitor felis sit amet</a></h2>
              </div><div class="single_iteam slick-slide slick-active" index="1" style="width: 710px;"><img src="/Data/img/550x330x2.jpg" alt=""/>
                <h2><a class="slider_tittle" href="pages/single.html">Fusce eu nulla semper porttitor felis sit amet</a></h2>
              </div><div class="single_iteam slick-slide" index="2" style="width: 710px;"><img src="/Data/img/550x330x3.jpg" alt=""/>
                <h2><a class="slider_tittle" href="pages/single.html">Fusce eu nulla semper porttitor felis sit amet</a></h2>
              </div><div class="single_iteam slick-slide" index="3" style="width: 710px;"><img src="/Data/img/550x330x4.jpg" alt=""/>
                <h2><a class="slider_tittle" href="pages/single.html">Fusce eu nulla semper porttitor felis sit amet</a></h2>
              </div><div class="single_iteam slick-slide slick-cloned" index="4" style="width: 710px;"><img src="/Data/img/550x330x1.jpg" alt=""/>
                <h2><a class="slider_tittle" href="pages/single.html">Fusce eu nulla semper porttitor felis sit amet</a></h2>
              </div></div></div>
              
              
              
            <button type="button" data-role="none" class="slick-prev" style="display: block;">Previous</button><button type="button" data-role="none" class="slick-next" style="display: block;">Next</button><ul class="slick-dots" style="display: block;"><li class=""><button type="button" data-role="none">1</button></li><li class="slick-active"><button type="button" data-role="none">2</button></li><li class=""><button type="button" data-role="none">3</button></li><li class=""><button type="button" data-role="none">4</button></li></ul></div>
          </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm6">
          <div class="content_top_right">
            <ul class="featured_nav wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
              <li><img src="/Data/img/300x215x1.jpg" alt=""/>
                <div class="title_caption"><a href="pages/single.html">Sed luctus semper odio aliquam rhoncus</a></div>
              </li>
              <li><img src="/Data/img/300x215x2.jpg" alt=""/>
                <div class="title_caption"><a href="pages/single.html">Sed luctus semper odio aliquam rhoncus</a></div>
              </li>
              <li><img src="/Data/img/300x215x3.jpg" alt=""/>
                <div class="title_caption"><a href="pages/single.html">Sed luctus semper odio aliquam rhoncus</a></div>
              </li>
              <li><img src="/Data/img/300x215x4.jpg" alt=""/>
                <div class="title_caption"><a href="pages/single.html">Sed luctus semper odio aliquam rhoncus</a></div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="content_middle">
      <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="content_middle_leftbar">
          <div class="single_category wow fadeInDown" style="visibility: hidden; animation-name: none;">
            <h2> <span class="bold_line"><span></span></span> <span class="solid_line"></span> <a href="#" class="title_text">category1</a> </h2>
            <ul class="catg1_nav">
              <li>
                <div class="catgimg_container"> <a href="pages/single.html" class="catg1_img"><img alt="" src="/Data/img/292x150x1.jpg"/></a></div>
                <h3 class="post_titile"><a href="pages/single.html">Vestibulum ut est augue, in varius</a></h3>
              </li>
              <li>
                <div class="catgimg_container"> <a href="pages/single.html" class="catg1_img"><img alt="" src="/Data/img/292x150x2.jpg"/></a></div>
                <h3 class="post_titile"><a href="pages/single.html">Vestibulum ut est augue, in varius</a></h3>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6">
        <div class="content_middle_middle">
          <div class="slick_slider2 slick-initialized slick-slider">
            <div class="slick-list draggable" tabindex="0"><div class="slick-track" style="opacity: 1; width: 930px;"><div class="single_featured_slide slick-slide" index="0" style="width: 310px; position: relative; left: 0px; top: 0px; z-index: 800; opacity: 0;"> <a href="pages/single.html"><img src="images/567x330x1.jpg" alt=""></a>
              <h2><a href="pages/single.html">Praesent vitae quam vitae arcu posuer 1</a></h2>
              <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui lectus, pharetra nec elementum eget, vulput...</p>
            </div><div class="single_featured_slide slick-slide slick-active" index="1" style="width: 310px; position: relative; left: -310px; top: 0px; z-index: 900; opacity: 1;"> <a href="pages/single.html"><img src="images/567x330x2.jpg" alt=""></a>
              <h2><a href="#">Praesent vitae quam vitae arcu posuer 2</a></h2>
              <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui lectus, pharetra nec elementum eget, vulput...</p>
            </div><div class="single_featured_slide slick-slide" index="2" style="width: 310px; position: relative; left: -620px; top: 0px; z-index: 800; opacity: 0;"> <a href="pages/single.html"><img src="/Data/img/567x330x3.jpg" alt=""/></a>
              <h2><a href="#">Praesent vitae quam vitae arcu posuer 3</a></h2>
              <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui lectus, pharetra nec elementum eget, vulput...</p>
            </div></div></div>
            
            
          <button type="button" data-role="none" class="slick-prev" style="display: block;">Previous</button><button type="button" data-role="none" class="slick-next" style="display: block;">Next</button><ul class="slick-dots" style="display: block;"><li class=""><button type="button" data-role="none">1</button></li><li class="slick-active"><button type="button" data-role="none">2</button></li><li class=""><button type="button" data-role="none">3</button></li></ul></div>
        </div>
      </div>
      <div class="col-lg-3 col-md-3 col-sm-3">
        <div class="content_middle_rightbar">
          <div class="single_category wow fadeInDown" style="visibility: hidden; animation-name: none;">
            <h2> <span class="bold_line"><span></span></span> <span class="solid_line"></span> <a href="#" class="title_text">category2</a> </h2>
            <ul class="catg1_nav">
              <li>
                <div class="catgimg_container"> <a href="pages/single.html" class="catg1_img"><img alt="" src="/Data/img/292x150x1.jpg"/></a></div>
                <h3 class="post_titile"><a href="pages/single.html">Vestibulum ut est augue, in varius</a></h3>
              </li>
              <li>
                <div class="catgimg_container"> <a href="pages/single.html" class="catg1_img"><img alt="" src="/Data/img/292x150x2.jpg"/></a></div>
                <h3 class="post_titile"><a href="pages/single.html">Vestibulum ut est augue, in varius</a></h3>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="content_bottom">
      <div class="col-lg-8 col-md-8">
        <div class="content_bottom_left">
          <div class="single_category wow fadeInDown" style="visibility: hidden; animation-name: none;">
            <h2> <span class="bold_line"><span></span></span> <span class="solid_line"></span> <a class="title_text" href="#">Business</a> </h2>
            <div class="business_category_left wow fadeInDown" style="visibility: hidden; animation-name: none;">
              <ul class="fashion_catgnav">
                <li>
                  <div class="catgimg2_container"> <a href="pages/single.html"><img alt="" src="/Data/img/390x240x1.jpg"/></a> </div>
                  <h2 class="catg_titile"><a href="pages/single.html">Aenean mollis metus sit amet ligula adipiscing</a></h2>
                  <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> <span class="meta_more"><a href="#">Read More...</a></span> </div>
                  <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla...</p>
                </li>
              </ul>
            </div>
            <div class="business_category_right wow fadeInDown" style="visibility: hidden; animation-name: none;">
              <ul class="small_catg">
                <li>
                  <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a class="media-left" href="pages/single.html"><img src="images/112x112.jpg" alt=""></a>
                    <div class="media-body">
                      <h4 class="media-heading"><a href="pages/single.html">Duis condimentum nunc pretium lobortis </a></h4>
                      <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                    <div class="media-body">
                      <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                      <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                    <div class="media-body">
                      <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                      <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div class="games_fashion_area">
            <div class="games_category">
              <div class="single_category">
                <h2> <span class="bold_line"><span></span></span> <span class="solid_line"></span> <a class="title_text" href="#">Games</a> </h2>
                <ul class="fashion_catgnav wow fadeInDown" style="visibility: hidden; animation-name: none;">
                  <li>
                    <div class="catgimg2_container"> <a href="pages/single.html"><img alt="" src="/Data/img/390x240x1.jpg"/></a> </div>
                    <h2 class="catg_titile"><a href="#">Aenean mollis metus sit amet ligula adipiscing</a></h2>
                    <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> <span class="meta_more"><a href="#">Read More...</a></span> </div>
                    <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla...</p>
                  </li>
                </ul>
                <ul class="small_catg wow fadeInDown" style="visibility: hidden; animation-name: none;">
                  <li>
                    <div class="media"> <a class="media-left" href="#"><img src="/Data/img/112x112.jpg" alt=""/></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <div class="fashion_category">
              <div class="single_category">
                <div class="single_category wow fadeInDown" style="visibility: hidden; animation-name: none;">
                  <h2> <span class="bold_line"><span></span></span> <span class="solid_line"></span> <a class="title_text" href="#">Fashion</a> </h2>
                  <ul class="fashion_catgnav wow fadeInDown" style="visibility: hidden; animation-name: none;">
                    <li>
                      <div class="catgimg2_container"> <a href="#"><img alt="" src="/Data/img/390x240x1.jpg"/></a> </div>
                      <h2 class="catg_titile"><a href="#">Aenean mollis metus sit amet ligula adipiscing</a></h2>
                      <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> <span class="meta_more"><a href="#">Read More...</a></span> </div>
                      <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla...</p>
                    </li>
                  </ul>
                  <ul class="small_catg wow fadeInDown" style="visibility: hidden; animation-name: none;">
                    <li>
                      <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                        <div class="media-body">
                          <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                          <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                        <div class="media-body">
                          <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                          <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="technology_catrarea">
            <div class="single_category">
              <h2> <span class="bold_line"><span></span></span> <span class="solid_line"></span> <a class="title_text" href="#">Technology</a> </h2>
              <div class="business_category_left">
                <ul class="fashion_catgnav wow fadeInDown" style="visibility: hidden; animation-name: none;">
                  <li>
                    <div class="catgimg2_container"> <a href="#"><img alt="" src="/Data/img/390x240x1.jpg"/></a> </div>
                    <h2 class="catg_titile"><a href="#">Aenean mollis metus sit amet ligula adipiscing</a></h2>
                    <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> <span class="meta_more"><a href="#">Read More...</a></span> </div>
                    <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla...</p>
                  </li>
                </ul>
              </div>
              <div class="business_category_right">
                <ul class="small_catg wow fadeInDown" style="visibility: hidden; animation-name: none;">
                  <li>
                    <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <div class="comments_box"> <span class="meta_date">14/12/2045</span> <span class="meta_comment"><a href="#">No Comments</a></span> </div>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-4">
        <div class="content_bottom_right">
          <div class="single_bottom_rightbar">
            <h2>Recent Post</h2>
            <ul class="small_catg popular_catg wow fadeInDown" style="visibility: hidden; animation-name: none;">
              <li>
                <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a href="#" class="media-left"><img alt="" src="images/112x112.jpg"> </a>
                  <div class="media-body">
                    <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                    <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra </p>
                  </div>
                </div>
              </li>
              <li>
                <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a href="#" class="media-left"><img alt="" src="images/112x112.jpg"> </a>
                  <div class="media-body">
                    <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                    <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra </p>
                  </div>
                </div>
              </li>
              <li>
                <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a href="#" class="media-left"><img alt="" src="images/112x112.jpg"> </a>
                  <div class="media-body">
                    <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                    <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra </p>
                  </div>
                </div>
              </li>
            </ul>
          </div>
          <div class="single_bottom_rightbar">
            <ul role="tablist" class="nav nav-tabs custom-tabs">
              <li class="active" role="presentation"><a data-toggle="tab" role="tab" aria-controls="home" href="#mostPopular">Most Popular</a></li>
              <li role="presentation"><a data-toggle="tab" role="tab" aria-controls="messages" href="#recentComent">Recent Comment</a></li>
            </ul>
            <div class="tab-content">
              <div id="mostPopular" class="tab-pane fade in active" role="tabpanel">
                <ul class="small_catg popular_catg wow fadeInDown" style="visibility: hidden; animation-name: none;">
                  <li>
                    <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra </p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra </p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown" style="visibility: hidden; animation-name: none;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra </p>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
              <div id="recentComent" class="tab-pane fade" role="tabpanel">
                <ul class="small_catg popular_catg">
                  <li>
                    <div class="media wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra </p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra </p>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;"> <a class="media-left" href="#"><img src="images/112x112.jpg" alt=""></a>
                      <div class="media-body">
                        <h4 class="media-heading"><a href="#">Duis condimentum nunc pretium lobortis </a></h4>
                        <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra </p>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="single_bottom_rightbar">
            <h2>Blog Archive</h2>
            <div class="blog_archive wow fadeInDown" style="visibility: hidden; animation-name: none;">
              <form action="#">
                <select>
                  <option value="">Blog Archive</option>
                  <option value="">October(20)</option>
                </select>
              </form>
            </div>
          </div>
          <div class="single_bottom_rightbar wow fadeInDown" style="visibility: hidden; animation-name: none;">
            <h2>Popular Lnks</h2>
            <ul>
              <li><a href="#">Blog</a></li>
              <li><a href="#">Blog Home</a></li>
              <li><a href="#">Error Page</a></li>
              <li><a href="#">Social link</a></li>
              <li><a href="#">Login</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
    <footer id="footer">
  <div class="footer_top">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="single_footer_top wow fadeInLeft" style="visibility: hidden; animation-name: none;">
            <h2>Flicker Images</h2>
            <ul class="flicker_nav">
              <li><a href="#"><img src="/Data/img/75x75.jpg" alt=""/></a></li>
              <li><a href="#"><img src="/Data/img/75x75.jpg" alt=""/></a></li>
              <li><a href="#"><img src="/Data/img/75x75.jpg" alt=""/></a></li>
              <li><a href="#"><img src="/Data/img/75x75.jpg" alt=""/></a></li>
              <li><a href="#"><img src="/Data/img/75x75.jpg" alt=""/></a></li>
              <li><a href="#"><img src="/Data/img/75x75.jpg" alt=""/></a></li>
              <li><a href="#"><img src="/Data/img/75x75.jpg" alt=""/></a></li>
              <li><a href="#"><img src="/Data/img/75x75.jpg" alt=""/></a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="single_footer_top wow fadeInDown" style="visibility: hidden; animation-name: none;">
            <h2>Labels</h2>
            <ul class="labels_nav">
              <li><a href="#">Gallery</a></li>
              <li><a href="#">Business</a></li>
              <li><a href="#">Games</a></li>
              <li><a href="#">Fashion</a></li>
              <li><a href="#">Sports</a></li>
              <li><a href="#">Technology</a></li>
              <li><a href="#">Slider</a></li>
              <li><a href="#">Life &amp; Style</a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="single_footer_top wow fadeInRight" style="visibility: hidden; animation-name: none;">
            <h2>About Us</h2>
            <p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed nec laoreet orci, eget ullamcorper quam. Phasellus lorem neque, </p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer_bottom">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <div class="footer_bottom_left">
            <p>Copyright © 2045 <a href="index.html">magExpress</a></p>
          </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <div class="footer_bottom_right">
            <p>Developed BY Wpfreeware</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
    <script src="../Data/Home/jquery.min.js"></script>
    <script src="../Data/Home/bootstrap.min.js"></script>
    <script src="../Data/Home/wow.min.js"></script>
    <script src="../Data/Home/slick.min.js"></script>
    <script src="../Data/Home/custom.js"></script>
</body>
</html>
