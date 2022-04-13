const template=document.createElement('template');
template.innerHTML=`<style>
h3{
    color:yellow;
}
</style>
<div class="user-card">
<img />
<div>
<h3></h3>
<button id="toggle-info">hide icons
</button>
<div class='info'>
<p><slot name="email" /></p>
<p><slot name="phone" /></p>
</div>
</div>
</div>`;


class userCard extends HTMLElement
{
    constructor()
    {
        super();
        this.attachShadow({mode:'open'});
        this.shadowRoot.appendChild(template.content.cloneNode(true));
        
        this.shadowRoot.querySelector('h3').innerText=this.getAttribute('name');
        this.shadowRoot.querySelector('img').src=this.getAttribute('avtar');
    }
}

window.customElements.define('user-card',userCard);