const chai = require("chai");
const assert = chai.assert;
var tests = [[3,'aaa004'        ],
             [1487,'baa489'     ],
             [40000,'oba041'    ],
             [17558423,'zzz999' ],
             [234567,'aja802'   ],
             [43056, 'rba100'   ]
            ]

describe("Basic tests", function() {
  it('Example Tests', function() {
    for (i of [0,1,2,3,4,5]){
      assert.equal(findTheNumberPlate(tests[i][0]), tests[i][1])
    }
  })
});
