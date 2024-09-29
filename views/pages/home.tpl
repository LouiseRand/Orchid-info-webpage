{extends file="layouts/main.tpl"}


{block name="body"}
    <div class="container">


            <div class="row">


                <div class="col-md-12">
                    <h2>Welcome!</h2>
                    <p>Orchids for everyone is where you can find information about basic orchid care and different varieties that are availible. From beginners to experienced growers
                        that want to try a different variety of orchid, this is the place for you.</p>
                    <p> Orchids are plants that belong to the family Orchidaceae, a diverse and widespread group
                        of flowering plants with blooms that are often colourful and fragrant. Along with the Asteraceae, they are one of the two largest families of flowering plants.</p>
                    <p>Once the flowers have fallen dont worry, it will flower again next year or when it is ready with some care.</p>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3>Basic Orchid Care</h3>
                    <p> Position your orchid in a bright windowsill facing east or west. Weekly feeding with a fertilizer designed for orchids. Repotting in fresh orchid mix when your orchid stops blooming.

                    </p>       

            
                    <button class="accordion">Light And Temperature Requirements</button>
                    <div class="panel">
                        <div class="row">
                        <div class="bg" style="background-image: url(./orchid-images/wallpaper.jpg);">
                        <div class="col-md-6">    
                        <p>It is not recommended to keep orchids in an enviroment lower than 14C as this will cause cell collapse due to the cold. Orchids are tropical plants that mostly originate from rainforests and need a warm/room temperature enviroment.
                            If the room is comfortble for you then it will also be comfortable for your orchid. Phalenopsis orchids perfer medium light enviroments out of direct hot sun. If placed on a southern facing windowsil then a screen/sheer curtain
                            is needed to block some of the suns rays. If an orchid is getting too much sun then it will appear pale (with the esception of some varieties that are naturally pale green - see online images of the orchid for reference on the nautral leaf colour for the orchid) and may have brown/black patches caused by sunburn. If the orchid is not getting enough sun then the leaves will be a very dark green.</p>
                        </div>
                        <div class="col-md-6">
                        
                        </div>
                        </div>
                        </div>
                    </div>
                    
                    <button class="accordion">Repotting</button>
                    <div class="panel">
                        <div class="bg" style="background-image: url(./orchid-images/wallpaper.jpg);">
                        <div class="row">
                        <div class="col-md-6">
                        <p>The ideal time to repot the orchid is right after it finishes flowering, when you see new growth starting to appear or after getting a new orchid as the medium will most likely be old and decomposed from the nusery.
                            Another way to tell if an orchid needs repotting is if the medium smells mouldy or has any fungi starting to form inside the pot.
                            Repotting dosen't always mean a larger pot, the medium will break down and become too acidic for your orchid about every 1-2 years and will need to be changed.</p>
                            <p> Always plant orchids in a specialised orchid mix that
                            allows air flow such as bark, seramis or a mix of the two. Moss can be used for some orchids but if it is too dense then the orchid roots will not be able to breathe and may rot.</p>
                        </p>
                        </div>
                        <div class="col-md-6">
            
                        </div>
                        </div>
                        </div>
                    </div>
                    
                    <button class="accordion">Watering</button>
                    <div class="panel">
                        <div class="bg" style="background-image: url(./orchid-images/wallpaper3.png);">
                        <div class="row">
                        <div class="col-md-4">
                        
                        </div>

                        <div class="col-md-8"> 
                        <p>So how do you water orchids? The easiest way is to soak your orchid in a bowl of water once every week --- when the bark/moss dries out. Unlike most houseplants, you don't need to keep orchid bark evenly moist; if it stays too moist, the orchid can rot. 
                            You can also water your orchid like a traditional houseplant, water with rainwater thoroughly untill it drains through the pot then place the orchid back. If the medium feels moist, you can wait a few days and check again before watering.    
                            Happily, orchids are surprisingly resilient when it comes to drying out when they're not in bloom depending on room temperature. When leaves are extremily crinkled and leathery, this is when the orchid is desperite for water and needs a good soak.</p>
                            <p>Orchids in Pots without Drainage Holes - Note: If your orchid is in a cache pot (a pot without a drainage hole to let excess water to escape), we recommend pulling the orchids growing pot out of the decorative cache pot first. Water it in the sink, then place it back in the decorative pot after water has stopped dripping from the medium. </p>
                        </div>
                        </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            <div class="container">
                <div class="row">

                    <div class="col-sm-12">           
                        <a href="/orchidsforeveryone/index"><img src="orchid-images/orchidspan.jpg" alt="Orchid Display" class="responsive" /></a>              
                    </div>

                </div>

            </div>


            <div class="container">
                <div class="glide">
                    <div class="glide__track" data-glide-el="track">
                        <ul class="glide__slides">
                        {foreach from=$featured_orchids item=orchid}
                            <li class="glide__slide">
                                <div class="orchid-slide-card">
                                    <div class="orchid-slide-card-img" style="background-image: url('/orchidsforeveryone/user-images/{$orchid.orchid_image}');"></div>
                                                                    
                                    <h3>{$orchid.orchid_name}</h3>

                                </div>
                            </li>
                        {{/foreach}}
                        </ul>

                        
                    </div>
                    <div class="glide__arrows" style="font-size: 25px;"  data-glide-el="controls">
                        <button class="glide__arrow glide__arrow--left" style="background-color:black" data-glide-dir="<"><i class="fa-solid fa-arrow-left"></i></button>
                        <button class="glide__arrow glide__arrow--right" style="background-color:black" data-glide-dir=">"><i class="fa-solid fa-arrow-right"></i></button>                
                    </div>                
                </div>
            </div>


            <div class="container">
                <div class="row ">
                        <div class="video-card col-md-6">             
                            <iframe class="center" width="560" height="315" src="https://www.youtube.com/embed/mHDoyH0tRYc" title="YouTube video player" frameborder="0" allow="accelerometer; picture-in-picture" allowfullscreen></iframe>                                
                        </div> 
                        <div class=" col-md-6">
                            <img src="orchid-images/potting.png" alt="Orchid Display" class="responsive" style="height:300px;" />
                        </div>                    
                </div>
            </div>
{/block}
