document.addEventListener('page:change', function() {
        document.getElementById('primary-content').className += 'animated bounceIn';
});
document.addEventListener('page:fetch', function() {
        document.getElementById('primary-content').className += 'animated bounceOut';
});
