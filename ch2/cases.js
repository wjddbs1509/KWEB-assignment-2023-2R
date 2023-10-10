
function factorial (n){
    var result=1;
    var i;
    for(i=2;i<n+1;i++){
        result*=i;
    }
    return result;
};

function permutation (n,r) {
    var result;
    result=factorial(n)/factorial(n-r);
    return result;
};

function combination (n,r) {
    var result;
    result=factorial(n)/(factorial(n-r)*factorial(r));
    return result;
};

function multiPermutation (n,r) {
    var result;
    result=n**r;
    return result;
};

function multiCombination (n,r) {
    var result;
    result=factorial(n+r-1)/(factorial(n-1)*factorial(r));
    return result;
};

module.exports={
    permutation:permutation,
    combination:combination,
    multiPermutation:multiPermutation,
    multiCombination:multiCombination,
};
