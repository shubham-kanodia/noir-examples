use dep::std;

fn main(arr : [Field; 5], ind : Field, val : pub Field){
    let mut sm = 0;
    
    for i in 0..5 {
        if (i == ind) {
            sm = sm + arr[i];
        }
    }

    constrain sm == val;
}