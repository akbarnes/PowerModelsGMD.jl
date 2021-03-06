%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%    bus_i    type    Pd    Qd    Gs    Bs    area    Vm    Va    baseKV    zone    Vmax    Vmin
mpc.bus = [
	1	1	100	20	0	0	1	1.100000	0.000000	20	1	1.3	0.7
	2	1	0	0	0	0	1	1.100000	0.000000	345	1	1.3	0.7
	3	1	0	0	0	0	1	1.100000	0.000000	345	1	1.3	0.7
	4	1	0	0	0	0	1	1.100000	0.000000	500	1	1.3	0.7
	5	1	0	0	0	0	1	1.100000	0.000000	500	1	1.3	0.7
	6	3	0	0	0	0	1	1.100000	0.000000	20	1	1	0.7
];

%% generator data
%    bus    Pg    Qg    Qmax    Qmin    Vg    mBase    status    Pmax    Pmin    Pc1    Pc2    Qc1min    Qc1max    Qc2min    Qc2max    ramp_agc    ramp_10    ramp_30    ramp_q    apf
mpc.gen = [
	6	170.0	0.0	2000.0	-2000.0	1.1	100	1	2000.0	0.0	0	0	0	0	0	0	0	0	0	-1000	0
];

%% branch data
%    fbus    tbus    r    x    b    rateA    rateB    rateC    ratio    angle    status    angmin    angmax
mpc.branch = [
	2	1	0.0001	0.004	0	9000.0	0.0	0.0	1	0.0	1	-30.0	30.0
	3	4	0.0001	0.004	0	9000.0	0.0	0.0	1	0.0	1	-30.0	30.0
	5	6	0.0001	0.004	0	9000.0	0.0	0.0	1	0.0	1	-30.0	30.0
	2	3	0.00296	0.07	0.1	9000.0	0.0	0.0	1	0.0	1	-30.0	30.0
	4	5	0.00187	0.07	0.1	9000.0	0.0	0.0	1	0.0	1	-30.0	30.0
];

%%-----  OPF Data  -----%%
%% generator cost data
%    1    startup    shutdown    n    x1    y1    ...    xn    yn
%    2    startup    shutdown    n    c(n-1)    ...    c0
mpc.gencost = [
	2	0	0	3	0.085	1.2	0
];

%column_names% parent_index status g_gnd name
mpc.gmd_bus = {
	1	1	5	'dc_sub1'	
	2	1	5	'dc_sub2'	
	3	1	5	'dc_sub3'	
	1	1	0	'dc_bus1'	
	2	1	0	'dc_bus2'	
	3	1	0	'dc_bus3'	
	4	1	0	'dc_bus4'	
	5	1	0	'dc_bus5'	
	6	1	0	'dc_bus6'	
};

%column_names%  f_bus t_bus parent_index br_status br_r br_v len_km name
mpc.gmd_branch = {
	5	1	1	1	0.16666666666667	0	0	'dc_T1_hi'	
	6	7	2	1	0.066666666666667	0	0	'dc_T2_series'	
	6	2	2	1	0.066666666666667	0	0	'dc_T2_common'	
	8	3	3	1	0.16666666666667	0	0	'dc_T3_hi'	
	5	6	4	1	1.17438	93.15699811884	121.05562183044	'dc_br23'	
	7	8	5	1	1.5583333333333	155.55621025547	160.4734287131	'dc_br45'	
};

%column_names%  hi_bus lo_bus gmd_br_hi gmd_br_lo gmd_k gmd_br_series gmd_br_common baseMVA type config
mpc.branch_gmd = {
	2	1	1	-1	1.8	-1	-1	100	'xf'	'gwye-delta'	
	4	3	-1	-1	1.8	2	3	100	'xf'	'gwye-gwye-auto'	
	5	6	4	-1	1.8	-1	-1	100	'xf'	'gwye-delta'	
	2	3	-1	-1	0	-1	-1	100	'line'	'none'	
	4	5	-1	-1	0	-1	-1	100	'line'	'none'	
};

%column_names%  lat lon
mpc.bus_gmd = {
	33.613499	-87.373673	
	33.613499	-87.373673	
	34.310437	-86.365765	
	34.310437	-86.365765	
	33.955058	-84.679354	
	33.955058	-84.679354	
};

