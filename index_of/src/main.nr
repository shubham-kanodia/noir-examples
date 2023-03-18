use dep::std;

fn main(arr : [Field; 5], ind : Field, val : pub Field){
    let mut elem = 0;
    
    for i in 0..5 {
        if (i == ind) {
            elem = arr[i];
        }
    }

    constrain elem == val;
}