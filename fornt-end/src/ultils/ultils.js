const secondOfMinutes = 60;

export const convertSecondToMinute = (second) => {
    let min = Math.floor(second / secondOfMinutes);
    let seconds = second - secondOfMinutes * min;
    let formatMin = min < 10 ? '0' + min : min;
    let formatSecond = seconds < 10 ? '0' + seconds : seconds;
    return formatMin + ' : ' + formatSecond;
}
