{extends file="layouts/main.tpl"}
{block name="body"}

<h1 class="mt-4 mb-3">Favourite Orchids</h1>
<div class="btn-group mb-3" role="group" aria-label="Account menu">
<a href="/orchidsforeveryone/account" class="btn btn-secondary">Home</a>
<a href="/orchidsforeveryone/favourite" class="btn btn-secondary">Favourite Orchids</a>
<a href="/orchidsforeveryone/myorchids" class="btn btn-secondary">My Orchids</a>
<a href="/orchidsforeveryone/add" class="btn btn-secondary">Add Orchid</a>
<a href="/orchidsforeveryone/changepassword" class="btn btn-secondary">Change Password</a>
</div>

<ul class="user-favs">
{foreach from=$user_favs item=fav}
    <div class="container">
    <div class="row ">
            <div class="col-md-3">             
                <div class="orchid-card">
                    <div class="orchid-card-image" style="background-image: url('./user-images/{$fav.orchid_image}');">
                        <a href="/orchidsforeveryone/orchid&id={$fav.orchid_id}"></a>
                    </div>
                    <a href="/orchidsforeveryone/orchid&id={$fav.orchid_id}"><h3>{$fav.orchid_name}</h3></a>                             
                </div>                                 
            </div>                   
    </div>
    </div>
{/foreach}

</ul>



{/block} 

