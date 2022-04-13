class userCard extends HTMLElement
{
    constructor(){
        super();
        this.innerHTML=`nadia anjum`;
    }
}

window.customElements.define('user-Card',userCard);