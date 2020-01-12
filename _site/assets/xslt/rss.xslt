<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" encoding="utf-8" />
<xsl:template match="/rss">
	<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html &gt;</xsl:text>
	<html>
	<head>
		<xsl:text disable-output-escaping="yes"><![CDATA[
			<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>RSS Feed (Styled)</title>
	<link rel="stylesheet" type="text/css" href="https://www.artbrock.com/assets/css/styles_feeling_responsive.css" />
	<script src="https://www.artbrock.com/assets/js/modernizr.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js"></script>
  <script>
    WebFont.load({
      google: {
        families: [ 'Lato:400,700,400italic:latin', 'Volkhov::latin' ]
      }
    });
  </script>

  <noscript>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic|Volkhov' rel='stylesheet' type='text/css' />
  </noscript>

  
	
	<meta name="description" content="Culture-Hacking, Alt.Education, Targeted Currency Design, NextNet Technologies." />

	<link rel="author" href="https://plus.google.com/100650201420307990701"/>

	



	
	<link rel="icon" sizes="32x32" href="https://www.artbrock.com/assets/img/favicon-32x32.png" />




	
	<link rel="icon" sizes="192x192" href="https://www.artbrock.com/assets/img/touch-icon-192x192.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="180x180" href="https://www.artbrock.com/assets/img/apple-touch-icon-180x180-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="152x152" href="https://www.artbrock.com/assets/img/apple-touch-icon-152x152-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://www.artbrock.com/assets/img/apple-touch-icon-144x144-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="120x120" href="https://www.artbrock.com/assets/img/apple-touch-icon-120x120-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://www.artbrock.com/assets/img/apple-touch-icon-114x114-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="76x76" href="https://www.artbrock.com/assets/img/apple-touch-icon-76x76-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://www.artbrock.com/assets/img/apple-touch-icon-72x72-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" href="https://www.artbrock.com/assets/img/apple-touch-icon-precomposed.png" />	




	
	<meta name="msapplication-TileImage" content="https://www.artbrock.com/assets/img/msapplication_tileimage.png" />




	
	<meta name="msapplication-TileColor" content="#fabb00" />



	<!-- Facebook Optimization -->
	<meta property="og:locale" content="en_EN" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="RSS Feed (Styled)" />
	<meta property="og:description" content="Culture-Hacking, Alt.Education, Targeted Currency Design, NextNet Technologies." />
	<meta property="og:url" content="https://www.artbrock.com//assets/xslt/rss.xslt" />
	<meta property="og:site_name" content="Arthur Brock's Personal Site" />
	

	

	<!-- Search Engine Optimization -->
	

	<link type="text/plain" rel="author" href="https://www.artbrock.com/humans.txt" />

	

	
</head>
		]]></xsl:text>
	</head>
	<body id="top-of-page">
		<xsl:text disable-output-escaping="yes"><![CDATA[
		
<div id="navigation" class="sticky">
  <nav class="top-bar" role="navigation" data-topbar>
    <ul class="title-area">
      <li class="name">
      <h1 class="show-for-small-only"><a href="https://www.artbrock.com" class="icon-tree"> Arthur Brock's Personal Site</a></h1>
    </li>
       <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
      <li class="toggle-topbar menu-icon"><a href="#"><span>Navigation</span></a></li>
    </ul>
    <section class="top-bar-section">

      <ul class="right">
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a href="https://www.artbrock.com/search">Search</a></li>

            
            
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a href="https://www.artbrock.com/contact">Contact</a></li>

            
            
          
        
        
      </ul>

      <ul class="left">
        

              

          
          

            
            
              <li><a href="https://www.artbrock.com/">Home</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a href="https://www.artbrock.com/about">About</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a href="https://www.artbrock.com/projects">Projects</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a href="https://www.artbrock.com/deeper">Deeper</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a href="https://www.artbrock.com/metacurrency">Metacurrency</a>

                  <ul class="dropdown">
                    

                      

                      <li><a href="https://www.artbrock.com/metacurrency/faq">FAQ</a></li>
                    

                      

                      <li><a href="https://www.artbrock.com/metacurrency/resources">Resources</a></li>
                    
                  </ul>
                  
              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a href="https://www.artbrock.com/targeted-currencies">Targeted currencies</a>

                  <ul class="dropdown">
                    

                      

                      <li><a href="https://www.artbrock.com/targeted-currencies/about">About</a></li>
                    

                      

                      <li><a href="https://www.artbrock.com/targeted-currencies/vision">Vision</a></li>
                    

                      

                      <li><a href="https://www.artbrock.com/targeted-currencies/blog">Blog</a></li>
                    

                      

                      <li><a href="https://www.artbrock.com/targeted-currencies/documents">Documents</a></li>
                    
                  </ul>
                  
              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a href="https://www.artbrock.com/threebles">Threebles</a>

                  <ul class="dropdown">
                    

                      

                      <li><a href="https://www.artbrock.com/threebles/strategy">Strategy</a></li>
                    

                      

                      <li><a href="https://www.artbrock.com/threebles/google-presentation">Google presentation</a></li>
                    

                      

                      <li><a href="https://www.artbrock.com/threebles/google-project">Google project</a></li>
                    
                  </ul>
                  
              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a href="https://www.artbrock.com/lifeblood">Lifeblood</a>

                  <ul class="dropdown">
                    

                      

                      <li><a href="https://www.artbrock.com/lifeblood/about">About</a></li>
                    

                      

                      <li><a href="https://www.artbrock.com/lifeblood/dynamic-alignment">Dynamic alignment</a></li>
                    

                      

                      <li><a href="https://www.artbrock.com/lifeblood/tools">Tools</a></li>
                    
                  </ul>
                  
              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a href="https://www.artbrock.com/blog">Articles</a>

                  <ul class="dropdown">
                    

                      

                      <li><a href="https://www.artbrock.com/blog/archive">Archive</a></li>
                    
                  </ul>
                  
              </li>
              <li class="divider"></li>
            
          
        

              

          
          
        

              

          
          
        
        
      </ul>
    </section>
  </nav>
</div><!-- /#navigation -->

		


<div id="masthead-no-image-header">
	<div class="row">
		<div class="small-12 columns">
			<a id="logo" href="https://www.artbrock.com" title="Arthur Brock's Personal Site – Building a world that works for all">
				<img src="https://www.artbrock.com/assets/img/logo.png" alt="Arthur Brock's Personal Site – Building a world that works for all">
			</a>
		</div><!-- /.small-12.columns -->
	</div><!-- /.row -->
</div><!-- /#masthead -->










		


<div class="alert-box warning radius text-center"><p>This <a href="https://en.wikipedia.org/wiki/RSS" target="_blank">RSS feed</a> is meant to be used by <a href="https://en.wikipedia.org/wiki/Template:Aggregators" target="_blank">RSS reader applications and websites</a>.</p>
</div>



		]]></xsl:text>
		<header class="t30 row">
	<p class="subheadline"><xsl:value-of select="channel/description" disable-output-escaping="yes" /></p>
	<h1>
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="channel/link" />
			</xsl:attribute>
			<xsl:value-of select="channel/title" disable-output-escaping="yes" />
		</xsl:element>
	</h1>
</header>
<ul class="accordion row" data-accordion="">
	<xsl:for-each select="channel/item">
		<li class="accordion-navigation">
			<xsl:variable name="slug-id">
				<xsl:call-template name="slugify">
					<xsl:with-param name="text" select="guid" />
				</xsl:call-template>
			</xsl:variable>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="concat('#', $slug-id)"/></xsl:attribute>
				<xsl:value-of select="title"/>
				<br/>
				<small><xsl:value-of select="pubDate"/></small>
			</xsl:element>
			<xsl:element name="div">
				<xsl:attribute name="id"><xsl:value-of select="$slug-id"/></xsl:attribute>
				<xsl:attribute name="class">content</xsl:attribute>
				<h1>
					<xsl:element name="a">
						<xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
						<xsl:value-of select="title"/>
					</xsl:element>
				</h1>
				<xsl:value-of select="description" disable-output-escaping="yes" />
			</xsl:element>
		</li>
	</xsl:for-each>
</ul>

		<xsl:text disable-output-escaping="yes"><![CDATA[
		<div id="up-to-top" class="row">
  <div class="small-12 columns" style="text-align: right;">
    <a class="iconfont" href="#top-of-page">&#xf108;</a>
  </div><!-- /.small-12.columns -->
</div><!-- /.row -->


<footer id="footer-content" class="bg-grau">
  <div id="footer">
    <div class="row">
      <div class="medium-6 large-5 columns">
        <h5 class="shadow-black">About Arthur Brock</h5>

        <p class="shadow-black">
          Culture-Hacking, Alt.Education, Targeted Currency Design, NextNet Technologies.
          <a href="https://www.artbrock.com/info/">More ›</a>
        </p>
      </div><!-- /.large-6.columns -->


      <div class="small-6 medium-3 large-3 large-offset-1 columns">
        
          
            <h5 class="shadow-black">Services</h5>
          
        
          
        
          
        
          
        
          
        

          <ul class="no-bullet shadow-black">
          
            
              <li >
                <a href="https://www.artbrock.com"  title=""></a>
              </li>
          
            
              <li >
                <a href="https://www.artbrock.com/contact/"  title="Contact">Contact</a>
              </li>
          
            
              <li >
                <a href="https://www.artbrock.com/feed.xml"  title="Subscribe to RSS Feed">RSS</a>
              </li>
          
            
              <li >
                <a href="https://www.artbrock.com/atom.xml"  title="Subscribe to Atom Feed">Atom</a>
              </li>
          
            
              <li >
                <a href="https://www.artbrock.com/sitemap.xml"  title="Sitemap for Google Webmaster Tools">sitemap.xml</a>
              </li>
          
          </ul>
      </div><!-- /.large-4.columns -->


      <div class="small-6 medium-3 large-3 columns">
        
          
            <h5 class="shadow-black">Thanks to</h5>
          
        
          
        
          
        
          
        
          
        
          
        

        <ul class="no-bullet shadow-black">
        
          
            <li >
              <a href="https://www.artbrock.com"  title=""></a>
            </li>
        
          
            <li class="network-feeling-responsive" >
              <a href="https://github.com/Phlow/feeling-responsive" target="_blank"  title="Theme by Phlow">Theme by Phlow</a>
            </li>
        
          
            <li class="network-entypo" >
              <a href="http://entypo.com/" target="_blank"  title="Icons by Daniel Bruce">Icons by Daniel Bruce</a>
            </li>
        
          
            <li class="services-newsletter" >
              <a href="http://foundation.zurb.com/" target="_blank"  title="Built on Foundation">Built on Foundation</a>
            </li>
        
          
            <li class="rss-link" >
              <a href="http://unsplash.com/" target="_blank"  title="Images by Unsplash">Images by Unsplash</a>
            </li>
        
          
            <li class="sitemap-link" >
              <a href="http://srobbin.com/jquery-plugins/backstretch/" target="_blank"  title="Using Backstretch by Scott Robbin">Using Backstretch by Scott Robbin</a>
            </li>
        
        </ul>
      </div><!-- /.large-3.columns -->
    </div><!-- /.row -->

  </div><!-- /#footer -->


  <div id="subfooter">
    <nav class="row">
      <section id="subfooter-left" class="small-12 medium-6 columns credits">
        <p>Generated with &hearts; by <a href="/">artbrock</a> with <a href="http://jekyllrb.com/" target="_blank">Jekyll</a> and the <a href="http://phlow.github.io/feeling-responsive/">Feeling Responsive Theme</a>.</p>
      </section>

      <section id="subfooter-right" class="small-12 medium-6 columns">
        <ul class="inline-list social-icons">
        
          <li><a href="https://github.com/artbrock" target="_blank" class="icon-github" title="Code and more…"></a></li>
        
          <li><a href="https://www.youtube.com/user/Artemystical" target="_blank" class="icon-youtube" title="Videos, Presentations, Events, Discussions…"></a></li>
        
          <li><a href="https://twitter.com/artbrock" target="_blank" class="icon-twitter" title="Visit or Follow Arthur on Twitter"></a></li>
        
          <li><a href="https://www.facebook.com/artbrock" target="_blank" class="icon-facebook" title="Find Arthur on Facebook"></a></li>
        
          <li><a href="https://www.vimeo.com/artbrock" target="_blank" class="icon-vimeo" title="Catch Arthur on Vimeo"></a></li>
        
        </ul>
      </section>
    </nav>
  </div><!-- /#subfooter -->
</footer>

		


<script src="https://www.artbrock.com/assets/js/javascript.min.js"></script>







<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-4524306-25', 'auto');
  ga('set', 'anonymizeIp', true);
  ga('send', 'pageview');

</script>








		]]></xsl:text>
	</body>
	</html>
</xsl:template>
<xsl:template name="slugify">
	<xsl:param name="text" select="''" />
	<xsl:variable name="dodgyChars" select="' ,.#_-!?*:;=+|&amp;/\\'" />
	<xsl:variable name="replacementChar" select="'-----------------'" />
	<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
	<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
	<xsl:variable name="lowercased"><xsl:value-of select="translate( $text, $uppercase, $lowercase )" /></xsl:variable>
	<xsl:variable name="escaped"><xsl:value-of select="translate( $lowercased, $dodgyChars, $replacementChar )" /></xsl:variable>
	<xsl:value-of select="$escaped" />
</xsl:template>
</xsl:stylesheet>
