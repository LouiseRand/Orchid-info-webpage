{extends file="layouts/main.tpl"}
{block name="body"}
    
    <h1 class="mt-4 mb-3">{$category.cat_name} Orchids</h1>

                    <p>Browse some {$category.cat_name} orchids below.</p>

                        <div class="row">
                        {foreach from=$orchids item=orchid}
                            <div class="col-md-3">
                                <div class="orchid-card">
                                    <div class="orchid-card-image" style="background-image: url('./user-images/{$orchid.orchid_image}');">
                                        <a href="/orchidsforeveryone/orchid&id={$orchid.orchid_id}"></a>
                                    </div>
                                    <a href="/orchidsforeveryone/orchid&id={$orchid.orchid_id}"><h3>{$orchid.orchid_name}</h3></a>                             
                                </div>                         
                            </div>
                        {/foreach}
                            
                        </div> 
                        
                        
                    </div>
{/block}