%Ερώτημα 1
disp("Ερώτημα 1")
disp("Ανάγνωση παραδειγμάτων")
[x,c] = ReadIonosphere(351);

%Ερώτημα 2
disp("Ερώτημα 2")
[Rc,~,~,Prot] = ClassKMDistEucl(x,c,3);
disp("3 εικονικά πρωτότυπα για κάθε μία από τις 2 κατηγορίες προτύπων")
disp(Prot)


%Ερώτημα 3
disp("Ερώτημα 3")
sumRc = 0;
for i = 1:length(Rc)
    sumRc = sumRc + Rc(i);
end
minError = 1-sumRc/length(x);
disp("Ελάχιστο σφάλμα του συστήματος ταξινόμησης")
disp(minError)

%Ερώτημα 4
disp("Ερώτημα 4")
[Rc1,~,~,centers] = ClassKMDistEucl2(x,c,3);
disp("3 παραδειγματα για κάθε μία από τις 2 κατηγορίες προτύπων")
disp(centers)

%Ερώτημα 5
disp("Ερώτημα 5")
sumRc1 = 0;
for i = 1:length(Rc1)
    sumRc1 = sumRc1 + Rc1(i);
end
minError = 1-sumRc1/length(x);
disp("Ελάχιστο σφάλμα του συστήματος ταξινόμησης")
disp(minError)

