$(() => {
    timeleft = 2000;
    w = false;
    $('.container').hide();
    $('.container').css('right', '-19vw');
    window.addEventListener('message', function(event){
        let d = event.data
        if (d.msg) {
            $('.container').show();
            HelpTimer(2000);
            $('.container').css({'transition': '.4s', 'right': '3vw'});
            $('.text').html(d.msg);
        }
    });
});

HelpTimer = (restore) => {
    if (restore != null) {
        timeleft = 2000;
    }

    if (!w){
        w = true;
        setTimeout(() => {
            timeleft -= 1000;

            if (timeleft == 0) {
                $('.container').css({'transition': '.4s', 'right': '-19vw'});
                setTimeout(() => {
                    $('.container').hide();
                }, 400);
            }
            w = false
            HelpTimer();
        }, 1000);
    }
}