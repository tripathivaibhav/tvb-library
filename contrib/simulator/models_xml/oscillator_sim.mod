TITLE Mod file for component: Component(id=oscillator_sim type=Generic2dOscillator)

COMMENT

    This NEURON file has been generated by org.neuroml.export (see https://github.com/NeuroML/org.neuroml.export)
         org.neuroml.export  v1.5.0
         org.neuroml.model   v1.5.0
         jLEMS               v0.9.8.7

ENDCOMMENT

NEURON {
    POINT_PROCESS oscillator_sim
    RANGE tau                               : parameter
    RANGE I                                 : parameter
    RANGE a                                 : parameter
    RANGE b                                 : parameter
    RANGE c                                 : parameter
    RANGE d                                 : parameter
    RANGE e                                 : parameter
    RANGE f                                 : parameter
    RANGE g                                 : parameter
    RANGE alpha                             : parameter
    RANGE beta                              : parameter
    RANGE gamma                             : parameter
    RANGE c_0                               : parameter
    RANGE lc_0                              : parameter
    
}

UNITS {
    
    (nA) = (nanoamp)
    (uA) = (microamp)
    (mA) = (milliamp)
    (A) = (amp)
    (mV) = (millivolt)
    (mS) = (millisiemens)
    (uS) = (microsiemens)
    (molar) = (1/liter)
    (kHz) = (kilohertz)
    (mM) = (millimolar)
    (um) = (micrometer)
    (umol) = (micromole)
    (S) = (siemens)
    
}

PARAMETER {
    
    tau = 1.2500001E-6 (kHz)
    I = NaN Don't know units for : (unit)
    a = NaN Don't know units for : (unit)
    b = NaN Don't know units for : (unit)
    c = NaN Don't know units for : (unit)
    d = NaN Don't know units for : (unit)
    e = NaN Don't know units for : (unit)
    f = NaN Don't know units for : (unit)
    g = NaN Don't know units for : (unit)
    alpha = NaN Don't know units for : (unit)
    beta = NaN Don't know units for : (unit)
    gamma = NaN Don't know units for : (unit)
    c_0 = NaN Don't know units for : (unit)
    lc_0 = NaN Don't know units for : (unit)
}

ASSIGNED {
    rate_V Don't know units for : (unit/ms)
    rate_W Don't know units for : (unit/ms)
    
}

STATE {
    V Don't know units for : (unit) 
    W Don't know units for : (unit) 
    
}

INITIAL {
    rates()
    rates() ? To ensure correct initialisation.
    
}

BREAKPOINT {
    
    SOLVE states METHOD cnexp
    
    
}

DERIVATIVE states {
    rates()
    V' = rate_V 
    W' = rate_W 
    
}

PROCEDURE rates() {
    
    rate_V = d  *  tau  * (  alpha   *  W  - (  f   *   V  *  V  *  V  ) + (  e   *   V  *  V  ) + (  g   *   V  ) +  gamma  *  I  +  gamma  *  c_0   +   lc_0  ) ? Note units of all quantities used here need to be consistent!
    rate_W = d  *  tau  * (  a   + (  b   *   V  ) + (  c   *   V  *  V  ) - (  beta   *   W  )) ? Note units of all quantities used here need to be consistent!
    
     
    
}

