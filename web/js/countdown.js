/* From http://www.askdavetaylor.com/how_do_i_create_a_javascript_countdown_timer_on_my_web_page/ 
  */
 

today  = new Date();
todayEpoch  = today.getTime();
target = new Date("10 July, 2015");
targetEpoch = target.getTime();
daysLeft = Math.floor(((targetEpoch - todayEpoch) / (60*60*24)) / 1000);