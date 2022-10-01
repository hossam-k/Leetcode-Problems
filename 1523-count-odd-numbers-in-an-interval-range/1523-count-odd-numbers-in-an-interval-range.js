/**
 * @param {number} low
 * @param {number} high
 * @return {number}
 */
var countOdds = function(low, high) {
    if(high === 0) return high;
    
    let oddCounts = 0;
    while(low <= high){
        if(low % 2 != 0){
            oddCounts++;
        }
        low++;
    }
    return oddCounts;
};