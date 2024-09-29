{extends file="layouts/main.tpl"}
{block name="body"}
    <div class=container>     
    <h1 class="mb-4 mb-3">{$orchid.orchid_name}</h1>
    <div class="row">
        <div class="col-md-6">
            {if $orchid.images}
              
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

            {/if}                
        </div>
        </div>  
        <div class="col-md-6">

            <p>{$orchid.orchid_requirements	}</p>

            <ul class="orchid-features">
                <li><i class="fas fa-star-half-alt"></i>{$orchid_rating} Stars</li>      
                <li><i class="fas fa-users"></i>{$orchid.orchid_temperature}</li>

            </ul>
            {if $user_data}
                {if $is_fav}
                    <button id="removeFav" type="button" class="btn btn-primary mb-3" data-orchidid="{$orchid.orchid_id}">Remove from favourites</button>
                {else}
                    <button id="addFav" type="button" class="btn btn-primary mb-3" data-orchidid="{$orchid.orchid_id}">Add to favourites</button>
                {/if}
            {/if}
                


        </div>
    </div> 
    <h2>Leave a review</h2>
    {if $user_data}
        <form action="" method="post">
        <div class="form-group">
            <label for="rating">Rating</label>
            <select class="form-control" id="rating" name="rating">
                <option value="1">1 Star (Very bad)</option>
                <option value="2">2 Star (Bad)</option>
                <option value="3">3 Star (Okay)</option>
                <option value="4">4 Star (Good)</option>
                <option value="5">5 Star (Very Good)</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        </form>

    {else}
        <p>Please login to leave a review of this orchid.</p>
    {/if}
    
{/block}