{extends file="layouts/main.tpl"}

{block name="body"}
    <div class="bg" style="background-image: url(./orchid-images/wallpaper.jpg);">
        <div class="container">
                
            <div class="row">
                <div class="col-md-12">
                    <h2 class="mt-1 mb-4">Orchid Categories</h2>
                    <p>Orchids come in all shapes and sizes and from different parts of the world. Below are some popular categories with an overview:</p>
                    <p>Click the buttons to see more information.</p>

                </div>

            </div>
        </div>

        <div class="row">
        {foreach from=$categories item=category}
            <div class="col-md-3">
                <div class="orchid-card">
                    <div class="orchid-card-image" style="background-image: url(./user-images/categories/{$category.cat_image});">
                                 
                    </div>
                    <a class="button" href="/orchidsforeveryone/orchids&id={$category.cat_id}"><h2>{$category.cat_name}</h2></a>                                
                </div>                         
            </div>
        {/foreach}
        </div>
    </div>
{/block}
