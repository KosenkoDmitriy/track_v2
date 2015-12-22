// Check if the page URL contains 'checkout'
if(window.location.href.indexOf("checkout") >= 0){
    // Enable the Attention Grabber
    olark.configure('features.attention_grabber', true );
}
else {
    // Otherwise disable the Attention Grabber
    olark.configure('features.attention_grabber', false );
}