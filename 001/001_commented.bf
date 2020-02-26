+++>++++++[->++++++<]>+[-<+++++++++>] // add 3 and 333 to memory
<<[>[->+>+<<]>[-<+>]<<-] // multiply
>[-]>>>++++[>++++++<-]>[<+++++++>-]<- // add 167 to memory
<[>[->+>+<<]>[-<+>]<<-]>[-] // multiply, 3*333*167 = 3*333*334/2 = 166833 in memory
<<<[-]<[-]>>>>>>[<<<<<<+>+>>>>>-]<<<<<[>>>>>+<<<<<-] // copy value to first cell in tape
>>>>>[-]<<<<< // clear all other cells
+++++>+++++[>+++++<-]>[<++++++++>-]<- // add 5 and 199 to memory
<[>[->+>+<<]>[-<+>]<<-] // multiply
>[-]++++++++++[>++++++++++<-]> // add 100 to memory
[>[->+>+<<]>[-<+>]<<-] // multiply
>[-]<<[-]<[-]>>>>>[<<<<<+>+>>>>-]<<<<[>>>>+<<<<-] // copy 5*199*200/2 = 99500 to first cell in tape
>>>>[-]<<<<<[-<+>]>>- // clear all other cells and add 166833+99500 = 266333
+++[>+++++<-]> // add 15 to memory
<<++++[>++++++++<-]>+ // add 33 to memory
[>[->+>+<<]>[-<+>]<<-] // multiply
>[-]++++++[>+++++++++++<-]>+ // clear all cells and add 67 to memory
[>[->+>+<<]>[-<+>]<<-] // multiply
>[-]<<<< // clear all other cells in tape
[-]<[-]>>>>>>>[<<<<<<<+>+>>>>>>-]<<<<<<[>>>>>>+<<<<<<-]< // copy 15*33*67 to second cell in tape
[-<->]< // subtract first and second value on tape and output
>>>>>>>>[-]<<<<<<<< // clear tape
[>>+>+<<<-]>>>[<<<+>>>-]<<+>[<->[>++++++++++<[->-[>+>>]>[+[-<+>]>+>>]<<<<<]>[-]
  ++++++++[<++++++>-]>[<<+>>-]>[<<+>>-]<<]>]<[->>++++++++[<++++++>-]]<[.[-]<]<  // print value out (see brainfuck algorithms on esolangs dot com
