// for rhino
load("https://raw.github.com/documentcloud/underscore/master/underscore-min.js");

Math.mean = function (list) {
    return _.reduce(list, function (memo, num) {
        return memo + num;
    }, 0) / list.length;
};

Math.stDev = function (list) {
    var mean = Math.mean(list),
        dev = _.map(list, function (num) {
            return ((num - mean) * (num - mean));
        });

    return Math.sqrt(
    _.reduce(dev, function (memo, num) {
        return memo + num;
    }, 0) / dev.length);
};

var testArray = [2, 2, 5];
print('mean is ' + Math.mean(testArray) + ' & (population) standard deviation is ' + Math.stDev([2, 2, 5]));
