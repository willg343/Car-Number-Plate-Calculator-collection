import { assert } from "chai";
import { findTheNumberPlate } from "./solution";

const tests : [number, string][][]= [
  [[19,'aaa020'], [50,'aaa051'], [187,'aaa188'], [5000,'faa006'], [12354,'maa367'], [43056,'rba100'], [703100,'bbb804'], [999997,'mmb998']],
  [[1234000,'nvb236'], [2107294,'ddd404'], [3801260,'jqf066'], [6458209,'qoj674']],
  [[10347052,'jip410'], [10598400,'bsp010'], [12012012,'mur037'], [15400451,'xuw867'], [16008913,'isx938'], [17558423,'zzz999']]
]

const descriptions: string[] = ["Numbers between 0 and 1,000,000", "Numbers between 1,000,000 and 10,000,000", "Numbers between 10,000,000 and 17,558,423"]

for(let i = 0; i<3; i++){
  describe (descriptions[i], function () {
    tests[i].forEach( function (test:[number, string]): void {
      it(`Testing for ${test[0]}`, function() {
        assert.strictEqual(findTheNumberPlate(test[0]), test[1]);
      });
    });
  });
};

export function solution(n: number) : string {
  var series: number = Math.floor(n / 999);
  var right : string = String.fromCharCode(Math.floor(series/676)+97);
  var middle: string = String.fromCharCode(Math.floor(series%676/26)+97);
  var  left : string = String.fromCharCode(Math.floor(series%676%26)+97);
  return `${left}${middle}${right}${String(n%999+1).padStart(3,'0')}`
};

describe ("Random Tests", () => {
  for (let i = 0; i<100; i++){
    let n = Math.floor(Math.random() * 17558423);
    it (`Testing for ${n}`, () => {
      assert.strictEqual(findTheNumberPlate(n), solution(n));
    });
  }
});
