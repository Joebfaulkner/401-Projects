C      Group: Boom Bam Pao
C      Members: Joseph Faulkner, Ismael Reyes, Grant Simon, and Hannah Bridevaux
       PROGRAM p1Fortran
10      WRITE(*,*) "Enter a conversion option (1-6 or 0 to exit):"
        WRITE(*,*) "--------------------------"
        WRITE(*,*) "(1) Pounds to Kilograms"
        WRITE(*,*) "(2) Kilograms to Pounds"
        WRITE(*,*) "(3) Feet to meters"
        WRITE(*,*) "(4) Meters to feet"
        WRITE(*,*) "(5) Fahrenheit to Celsius"
        WRITE(*,*) "(6) Celsius to Fahrenheit"
        WRITE(*,*) "(0) Exit this program"
        WRITE(*,*) "--------------------------"
        READ (*,*) conversion_option
        IF(conversion_option .EQ. 1) THEN
            WRITE(*,*) "Enter pounds:"
            READ (*,*) pounds
            WRITE(*,*) "Kilograms:     ", (pounds / 2.2046)
            GOTO 10
        END IF
        IF(conversion_option .EQ. 2) THEN
            WRITE(*,*) "Enter kilograms:"
            READ (*,*) kilos
            WRITE(*,*) "Pounds:     ", (kilos * 2.2046)
            GOTO 10
        END IF
        IF(conversion_option .EQ. 3) THEN
            WRITE(*,*) "Enter feet:"
            READ (*,*) feet
            WRITE(*,*) "Meters:     ", (feet / 3.28)
            GOTO 10
        END IF
        IF(conversion_option .EQ. 4) THEN
            WRITE(*,*) "Enter meters:"
            READ (*,*) meters
            WRITE(*,*) "feet:     ", (meters * 3.28)
            GOTO 10
        END IF
        IF(conversion_option .EQ. 5) THEN
            WRITE(*,*) "Enter degrees farenheight:"
            READ (*,*) faren
            WRITE(*,*) "Degrees Celcius:     ", ((faren - 32) / 1.8)
            GOTO 10
        END IF
        IF(conversion_option .EQ. 6) THEN
            WRITE(*,*) "Enter degrees celcius:"
            READ (*,*) celcius
            WRITE(*,*) "Degrees farenheight:     ", (celcius * 1.8 + 32)
            GOTO 10
        END IF
        IF(conversion_option .EQ. 0) THEN
            GOTO 20
        ELSE
            WRITE(*,*) "Invalid input"
            GOTO 10
        END IF

20      END PROGRAM p1Fortran