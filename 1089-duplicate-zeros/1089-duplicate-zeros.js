/**
 * @param {number[]} arr
 * @return {void} Do not return anything, modify arr in-place instead.
 */
//[1, 0, 3, 4, 9]
var duplicateZeros = function(arr) {
    for(var i = 0; i < arr.length; i++){
        // found zero 
        if(arr[i] == 0){
            for(var j = arr.length - 1; j > i; j--){
                arr[j] = arr[j-1];
            }
            i++;
        }
    }
    return arr;
};