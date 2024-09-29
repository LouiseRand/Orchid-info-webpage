{extends file="layouts/main.tpl"}
{block name="body"}
    
    <h1 class="mb-4 mb-3">Search results for "{$query}"</h1>

                    

                        <div class="row">
                        {foreach from=$orchids item=orchid}
                            <div class="col-md-3">
                                <div class="orchid-image">
                                    <div class="orchid-image" style="background-image: url('./user-images/{$orchid.orchid_image}');">
                                        <a href="/orchidsforeveryone/orchid&id={$orchid.orchid_id}"></a>
                                    </div>
                                    <a href="/orchidsforeveryone/orchid&id={$orchid.orchid_id}"><h3>{$orchid.orchid_name}</h3></a>                             
                                </div>                         
                            </div>
                        {/foreach}
                            
                        </div> 
                        
                        
                    </div>
{/block}