{extends file="layouts/main.tpl"}

{block name="body"}

    <h1 class="mb-4 pb-2">Add new Orchid</h1>

    <div class="btn-group mb-3" role="group" aria-label="Account menu">
    <a href="/orchidsforeveryone/account" class="btn btn-secondary">Home</a>
    <a href="/orchidsforeveryone/favourite" class="btn btn-secondary">Favourite Orchids</a>
    <a href="/orchidsforeveryone/myorchids" class="btn btn-secondary">My Orchids</a>
    <a href="/orchidsforeveryone/add" class="btn btn-secondary">Add Orchid</a>
    <a href="/orchidsforeveryone/changepassword" class="btn btn-secondary">Change Password</a>
    </div>


    {if $error}
        <div class="alert alert-danger mb-3" role="alert">
            {$error}
        </div>
    {else if $success}
        <div class="alert alert-success mb-3" role="alert">
            {$success}
        </div>
    {/if}
    
    <form action="" method="post" enctype="multipart/form-data" class="form-light" >               
            <div class="mb-3">
                <label class="form-label" for="orchid_name">Orchid Name</label>
                <input type="text" class="form-control" id="orchid_name" name="orchid_name">
            </div>
            
            <div class="mb-3">
                <label for="formFile" class="form-label">Orchid Image</label>
                <input class="form-control" type="file" id="formFile" name="orchid_image">
            </div>

            <div class="mb-3"> 
                <label class="form-label" for="cat_id">Orchid category</label>
                <select class="form-control" id="cat_id" name="cat_id">
                    {foreach from=$categories item=category}
                        <option value="{$category.cat_id}">{$category.cat_name}</option>
                    {/foreach}
                </select>
            </div>

            <div class="mb-3"> 
                <label class="form-label" for="orchid_temperature">Orchid temperature</label>
                <select class="form-control" id="orchid_temperature" name="orchid_temperature">
                    <option value="cool">Cool</option>
                    <option value="intermediate">Intermediate</option>
                    <option value="warm">Warm</option>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label" for="orchid_requirements">Orchid requirements</label>
                <input type="text" class="form-control" id="orchid_requirements" name="orchid_requirements">
            </div>

            <button type="submit" class="btn btn-primary">Add Orchid</button>        
    </form>


{/block}