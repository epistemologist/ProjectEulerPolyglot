+++++[>++++++++++<-]>> // 50
+[>++++++++++<-]>[>++++++++++<-]>+ // 101
<<>>[<<+>+>-]<[>+<-]>[-] // swap values
<<<[>[->+>+<<]>[-<+>]<<-] // 50*101
>[-]>>><[>+<<+>-]<[>+<-] // copy value
>[>[->+>+<<]>[-<+>]<<-] // multiply ((50*101)^2)
>[-]<<<<<[-]>>>>>>>[<<<<<<<+>>>>>+>>-]<<[>>+<<-]>>[-]<<<<<< // copy this value to first cell in tape
+++++[>++++++++++<-]>> // 50
+[>++++++++++<-]>[>++++++++++<-]>+ // 101
[<<+>+>-]<[>+<-]>[-]<<< // swap values
[>[->+>+<<]>[-<+>]<<-] // multiply
>[-]++++++[>+++++++++++<-]>+ // 67
[>[->+>+<<]>[-<+>]<<-] // multiply
>[-]<<<<[-]>>>>>>[<<<<<<+>>>>>+>-]<[>+<-]>[-]<<<<<< // copy value to second cell in tape
[-<->]< // subtract these values
[>>+>+<<<-]>>>[<<<+>>>-]<<+>[<->[>++++++++++<[->-[>+>>]>[+[-<+>]>+>>]<<<<<]>[-]
  ++++++++[<++++++>-]>[<<+>>-]>[<<+>>-]<<]>]<[->>++++++++[<++++++>-]]<[.[-]<]< // print value