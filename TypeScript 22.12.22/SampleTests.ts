import { assert } from "chai";
import { findTheNumberPlate } from "./solution";

var tests : [number, string][] =[
          [3,'aaa004'],
          [1487,'baa489'],
          [40000,'oba041'],
          [17558423,'zzz999'],
          [234567,'aja802'],
          [43056, 'rba100']]


describe("Sample Test Cases", function()  {
  tests.forEach( function (test:[number, string]): void {
    it(`Testing for ${test[0]}`, function() {
      assert.strictEqual(findTheNumberPlate(test[0]), test[1]);
    });
  });
});
