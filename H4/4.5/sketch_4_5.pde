int sec = 534982675;

int hours = sec * 60 * 60;
int days = hours * 24;
float years = days * 365.25;

println(hours + " hours, " + days + " days " + Math.round(years) + " years.");
