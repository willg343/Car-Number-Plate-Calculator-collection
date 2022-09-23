const chai = require("chai");
const assert = chai.assert;
var tests = [[[19,'aaa020'], [50,'aaa051'], [187,'aaa188'], [5000,'faa006'], [12354,'maa367'], [43056,'rba100'], [703100,'bbb804'], [999997,'mmb998']],
             [[1234000,'nvb236'], [2107294,'ddd404'], [3801260,'jqf066'], [6458209,'qoj674']],
             [[10347052,'jip410'], [10598400,'bsp010'], [12012012,'mur037'], [15400451,'xuw867'], [16008913,'isx938'], [17558423,'zzz999']]]

describe("Numbers between 0 and 1000000", function() {
  it('Small numbers', function(){
    for (i of [0,1,2,3,4,5,6,7]){
      assert.equal(findTheNumberPlate(tests[0][i][0]), tests[0][i][1])
    }
  })
});

describe("Numbers between 1000000 and 10000000", function() {
  it('Bigger numbers', function(){
    for (i of [0,1,2,3]){
      assert.equal(findTheNumberPlate(tests[1][i][0]), tests[1][i][1])
    }
  })
});

describe("Numbers between 10000000 and 17558423", function() {
  it('Large numbers', function(){
    for (i of [0,1,2,3,4,5]){
      assert.equal(findTheNumberPlate(tests[2][i][0]), tests[2][i][1])
    }
  })
});

function solutionCheck(n){
    var a = 'abcdefghijklmnopqrstuvwxyz'
    var l1 = Math.floor(Math.floor(n/999)/676)
    var l2 = Math.floor((Math.floor(n/999)-676*l1)/26)
    var l3 = Math.floor(n/999)-l1*676-l2*26
    return `${a[l3]}${a[l2]}${a[l1]}` + (''+(n%999+1)).padStart(3,'0')
}

describe("Random Tests", function() {
  it ('Random Numbers', function() { 
    for (_=0;_<100;_++){      
      var randInt = Math.floor(Math.random()*(17558423-0))
      assert.equal(findTheNumberPlate(randInt), solutionCheck(randInt));
    }
  })
});
