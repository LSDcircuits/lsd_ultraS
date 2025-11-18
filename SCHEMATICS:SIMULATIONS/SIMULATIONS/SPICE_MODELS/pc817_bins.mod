* PC817 Optocoupler (Sharp) — ngspice/LTspice compatible
* Derived from Sharp PC817 datasheet (CTR bins A/B/C/D). No .param, no VALUE{}.
* Pins: 1=Anode 2=Cathode 3=Collector 4=Emitter
* Use one of: PC817A, PC817B, PC817C, PC817D (typical CTR midpoints per bin).

* ===== Common internal models =====
.model D_PC817 D(IS=1e-14 N=1.9 RS=8 TT=3u CJO=30p)
.model Q_PC817 NPN(IS=1e-14 BF=100 NF=1 VAF=80 CJE=8p CJC=6p TF=2u TR=4u)

* ===== Subcircuit template (A/B/C/D only differ in F-gain) =====
* LED current is sensed via VSEN (0 V). FGAIN injects base current = (CTR/BF)*I(LED).
* This yields Ic ≈ CTR * I_LED until transistor saturates.
*
* Rank A: CTR 0.8–1.6 -> midpoint ≈ 1.2  -> F gain = 1.2 / 100 = 0.012
.SUBCKT PC817A 1 2 3 4
VSEN 1 10 0
DLED 10 2 D_PC817
RLED 10 2 10
QOUT 3 5 4 Q_PC817
RB   5 4 200k
CCO  3 4 10p
FGAIN 5 4 VSEN 0.012
.ENDS PC817A

* Rank B: CTR 1.3–2.6 -> midpoint ≈ 2.0 -> F gain = 0.020
.SUBCKT PC817B 1 2 3 4
VSEN 1 10 0
DLED 10 2 D_PC817
RLED 10 2 10
QOUT 3 5 4 Q_PC817
RB   5 4 200k
CCO  3 4 10p
FGAIN 5 4 VSEN 0.020
.ENDS PC817B

* Rank C: CTR 2.0–4.0 -> midpoint ≈ 3.0 -> F gain = 0.030
.SUBCKT PC817C 1 2 3 4
VSEN 1 10 0
DLED 10 2 D_PC817
RLED 10 2 10
QOUT 3 5 4 Q_PC817
RB   5 4 200k
CCO  3 4 10p
FGAIN 5 4 VSEN 0.030
.ENDS PC817C

* Rank D: CTR 3.0–6.0 -> midpoint ≈ 4.5 -> F gain = 0.045
.SUBCKT PC817D 1 2 3 4
VSEN 1 10 0
DLED 10 2 D_PC817
RLED 10 2 10
QOUT 3 5 4 Q_PC817
RB   5 4 200k
CCO  3 4 10p
FGAIN 5 4 VSEN 0.045
.ENDS PC817D
