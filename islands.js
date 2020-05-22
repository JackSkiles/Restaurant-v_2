
const islands = [1, 0, 1];
// const islands = [0, 0, 1, 0, 1, 1, 0, 0, 1, 0];
// const islands = [1, 1, 1, 1, 1, 1, 1, 1, 1,];
// const islands = [1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0];


function countIslands(arr) {
    let islCount = 0;
    let islType = 0;


    for (let i = 0; i < arr.length; i++) {
        if(i === 0){
            islType = arr[i];
            if(islType === 1){
              islCount += 1;
              continue;
            }
        }
        if(arr[i - 1] === 1 && arr[i] === 1){
            islType = 1;
            continue;
        }
        else if(arr[i] === 1){
            islType = 1;
            islCount += 1;
        }
    }
    return islCount;
}



console.log(countIslands(islands));