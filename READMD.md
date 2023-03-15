# Testing solidity mapping key performance

**Postulation:** Hashing a key once rather than multiple times for a mapping increases performance for 2-3 deep mappings.

**Result**: While writes are slightly cheaper in 2 case, reads across the board are cheaper and the easier-to-read nested mapping access is preferred.

### Next steps:
Test with other content types

### Test results:
Test result: ok. 6 passed; 0 failed; finished in 17.72ms
| src/StorageTest.sol:StorageTest contract |                 |       |        |       |         |
|------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                          | Deployment Size |       |        |       |         |
| 238881                                   | 1225            |       |        |       |         |
| Function Name                            | min             | avg   | median | max   | # calls |
| getDoubleKey                             | 722             | 722   | 722    | 722   | 1       |
| getDoubleMapping                         | 522             | 522   | 522    | 522   | 1       |
| getSingleKey                             | 665             | 665   | 665    | 665   | 1       |
| getSingleMapping                         | 536             | 536   | 536    | 536   | 1       |
| getTripleKey                             | 673             | 673   | 673    | 673   | 1       |
| getTripleMapping                         | 692             | 692   | 692    | 692   | 1       |
| setDoubleKey                             | 22681           | 22681 | 22681  | 22681 | 1       |
| setDoubleMapping                         | 22585           | 22585 | 22585  | 22585 | 1       |
| setSingleKey                             | 22600           | 22600 | 22600  | 22600 | 1       |
| setSingleMapping                         | 22515           | 22515 | 22515  | 22515 | 1       |
| setTripleKey                             | 22674           | 22674 | 22674  | 22674 | 1       |
| setTripleMapping                         | 22623           | 22623 | 22623  | 22623 | 1       |