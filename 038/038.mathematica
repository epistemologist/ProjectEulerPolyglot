ConcatProduct[n_]:= StringJoin@ IntegerString @ Take[Flatten[IntegerDigits[Table[i*n,{i,1,10}]]],9];
Print[ReverseSort[Table[temp=ConcatProduct[i];If[StringJoin[Sort[Characters[temp]]]=="123456789",temp,"123456789"],{i,1,10000}]][[1]]]
