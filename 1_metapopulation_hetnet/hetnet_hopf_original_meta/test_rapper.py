# -*- coding: utf-8 -*-
"""
Unit Test code for C language code.

Test of function add

Last update: 2018/11/18
"""

import darwinian_meta_rapper as dw

#darwinian_meta_rapper.py_evolution()

Deme = dw.PyDeme()

t = 0

Deme.py_evolution_initialization(t);
    
Deme.py_evolution_gen_environment(t);

while (t<1000):
    Deme.py_evolution_gen_update(t);
    Deme.py_evolution_gen_calcfitness(t);
    Deme.py_evolution_gen_calcbestfitness(t);
    Deme.py_evolution_gen_selection(t);
    Deme.py_evolution_gen_replacemutation(t);
    t = t+1
    
