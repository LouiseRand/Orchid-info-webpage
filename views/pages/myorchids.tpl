{extends file="layouts/main.tpl"}
{block name="body"}
    <h1 class="mb-4 pb-2">My Account</h1>

    <div class="btn-group mb-3" role="group" aria-label="Account menu">
    <a href="/orchidsforeveryone/account" class="btn btn-secondary">Home</a>
    <a href="/orchidsforeveryone/favourite" class="btn btn-secondary">Favourite orchids</a>
    <a href="/orchidsforeveryone/myorchids" class="btn btn-secondary">My orchids</a>
    <a href="/orchidsforeveryone/add" class="btn btn-secondary">Add orchid</a>
    <a href="/orchidsforeveryone/changepassword" class="btn btn-secondary">Change Password</a>
    </div>

    <ul>
        {foreach from=$user_orchids item=orchid} <!--$user_orchids is called from myorchids.php -->
            <div class="row">
            <div class="col-md-3">
                <div class="orchid-card">
                    <div class="orchid-card-image" style="background-image: url('/orchidsforeveryone/user-images/{$orchid.orchid_image}');">
                        <a href="/orchidsforeveryone/orchid/{$orchid.orchid_id}"></a>
                    </div>
                    <a href="/orchidsforeveryone/orchid/{$orchid.orchid_id}"><h3>{$orchid.orchid_name}</h3></a>                             
                </div>                         
            </div>
            </div>
        {/foreach}
    </ul>

{/block}
