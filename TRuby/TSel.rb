#TSel
#Joseph Faulkner, Ismael Reyes, Grant Simon, and Hannah Bridevaux

#initalize the variables
i1=1;
i2=2;
i3=3;
i4=4;
i5=5;
i6=6;
 

#test a simple if
if (i4 > i1) 
	puts "i4 >  i1\n"
end

#test a simple if-else
if((i5<i2) && (i3>=i2))
	puts "(i5 <  i2) && (i3 >= i2)"
else
	puts "(i5 >= i2) || (i3 <  i2)"
end

#test nested if-else
if (i1 != i2)
	puts "(i1 != i2)"
elsif ((i4 == i5) || (i5 != i6))
	puts "(i1 == i2)&& ((i4 == i5) || (i5 != i6))"
end