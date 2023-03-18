global TOTAL_ELEMENTS = 81;
global ROW_COL_SIZE = 9;
global SUB_MATRIX_SIZE = 3;

fn main(solution : [Field; TOTAL_ELEMENTS], filled_blocks : [Field; TOTAL_ELEMENTS]) {
    for idx in 0..TOTAL_ELEMENTS {
        if filled_blocks[idx] != 0 {
            constrain filled_blocks[idx] == solution[idx];
        }
    }

    for row in 0..ROW_COL_SIZE {
        
        let mut row_contraints = [0, 0, 0, 0, 0, 0, 0, 0, 0];

        for col in 0..ROW_COL_SIZE {
            let elem_idx = row * ROW_COL_SIZE + col;
            let elem = solution[elem_idx];

            for idx in 0..ROW_COL_SIZE {
                if idx == elem - 1 {
                    row_contraints[idx] = 1;
                }
            }
        }

        let all = row_contraints.all(|a| a == 1);
        constrain all;
    }

    for col in 0..ROW_COL_SIZE {
        
        let mut col_contraints = [0, 0, 0, 0, 0, 0, 0, 0, 0];

        for row in 0..ROW_COL_SIZE {
            let elem_idx = row * ROW_COL_SIZE + col;
            let elem = solution[elem_idx];

            for idx in 0..ROW_COL_SIZE {
                if idx == elem - 1 {
                    col_contraints[idx] = 1;
                }
            }
        }

        let all = col_contraints.all(|a| a == 1);
        constrain all;
    }

    let mut sub_matrix_row_mover = 0;
    let mut sub_matrix_col_mover = 0;

    for i in 0..SUB_MATRIX_SIZE {
        let mut sub_matrix_contraints = [0, 0, 0, 0, 0, 0, 0, 0, 0];

        for row in sub_matrix_row_mover..sub_matrix_row_mover+3 {
            for col in sub_matrix_col_mover..sub_matrix_col_mover+3 {
                let elem_idx = row * ROW_COL_SIZE + col;
                let elem = solution[elem_idx];

                for idx in 0..ROW_COL_SIZE {
                    if idx == elem - 1 {
                        sub_matrix_contraints[idx] = 1;
                    }
                }
            }
        }

        let all = sub_matrix_contraints.all(|a| a == 1);
        
        constrain all;

        sub_matrix_row_mover += SUB_MATRIX_SIZE * i;
        sub_matrix_col_mover += SUB_MATRIX_SIZE * i;
    }
    
}