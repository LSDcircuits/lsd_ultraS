* BC557 PNP Transistor Model
* Typical small-signal PNP transistor for general-purpose use
* Works well with LTspice, Ngspice, KiCad, and TINA

.model BC557 PNP(
+ IS=1E-14       ; saturation current
+ BF=200         ; forward beta (gain)
+ NF=1.0         ; forward emission coefficient
+ VAF=100        ; Early voltage
+ IKF=0.1        ; high-current beta rolloff
+ ISE=1E-13      ; B-E leakage saturation current
+ NE=1.5
+ BR=3           ; reverse beta
+ NR=1.0
+ VAR=25
+ ISC=1E-13
+ NC=2.0
+ RB=100         ; base resistance
+ RE=1
+ RC=10
+ CJE=10pF       ; base-emitter junction capacitance
+ VJE=0.75
+ TF=400pS       ; forward transit time
+ CJC=5pF        ; base-collector junction capacitance
+ VJC=0.55
+ TR=100nS       ; reverse transit time
+ EG=1.11
+ XTB=1.5
+ FC=0.5 )
