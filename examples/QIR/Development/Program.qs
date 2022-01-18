namespace Microsoft.Quantum.Qir.Development {

    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;

    @EntryPoint()
    operation RunExample() : Int {

        use (q1, q2, q3) = (Qubit(), Qubit(), Qubit()) {
            if (M(q1) != One) { return 1; }
            else {
                if (M(q2) != One) { return 2; }
                else {
                    if (M(q3) != One) { return 3; }
                    else {
                        if (M(q3) != Zero) { return 4; }
                        else {
                            if (M(q3) != One) { return 5; }
                            else {
                                if (M(q3) != Zero) { return 6; }
                                else {
                                    use q4 = Qubit() {
                                        if (M(q4) != One) { return 7; }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return 0;
    }
}


