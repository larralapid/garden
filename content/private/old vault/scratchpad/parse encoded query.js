var querySeparators = ['^','^OR',^NQ]; 
var strOperators = [
    'STARTSWITH', //starts with
    'ENDSWITH', '%', // ends with
    'LIKE', '*', // contains 
    'NOTLIKE','!*', // does not contain
    '=', // is
    '!=', // is not
    'ISEMPTY',
    'ISNOTEMPTY',
    'ANYTHING',
    'EMPTYSTRING',
    '<=', // LESS THAN OR IS
    '>=', // greater than or is
    'BETWEEN',
    'SAMEAS',
    'NSAMEAS', // is different
]

var refOperators = [
    '=', // is
    '!=', // is not
    'ISEMPTY',
    'ISNOTEMPTY',
    'STARTSWITH', //starts with
    'ENDSWITH', '%', // ends with
    'LIKE', '*', // contains 
    'NOTLIKE','!*', // does not contain
    'ANYTHING',
    'SAMEAS',
    'NSAMEAS', // is different
    'EMPTYSTRING',
    'DYNAMIC'
]

/*
to do
operators for choice fields containing strings 
choice fields containing integers 
date time fields
numeric fields 
boolean fields
email notifications ?? 
*/

// find the index of the field name in the query 
// identify which operator comes right after the matched field name, has to be one of the items from the oeprator array 

// get the query value which comes right after the operator and right before the query separator 