%% MATPOWER Case Format : Version 2
% ots_test.m is based on epri21.m, then reduced to 10 buses
function mpc = epri21_ots
mpc.version = '2';


%% NEED TO BE FIXED %%


%%-----  Power Flow Data  -----%%

%% system MVA base
mpc.baseMVA = 100;


%% bus data
%    bus_i    type    Pd    Qd    Gs    Bs    area    Vm    Va    baseKV    zone    Vmax    Vmin
mpc.bus = [
	1	3	0	0	0	0	1	1.050	-0.000000	22	1	1.15	0.85
	2	1	0	0	0	0	1	1.046	-0.000000	345	1	1.15	0.85
	3	1	0	0	0	0	1	1.038	-0.000000	345	1	1.15	0.85
	4	1	1500.0	600.0	0	546.63	1	1.046	-0.000000	500	1	1.15	0.85
	5	1	1200.0	350.0	0	0	1	1.047	-0.000000	500	1	1.15	0.85
	6	1	300.0	150.0	0	0	1	1.050	-0.000000	500	1	1.3	0.85
	7	2	0	0	0	0	1	1.041	-0.000000	18	1	1.15	0.85
	8	2	0	0	0	0	1	1.041	-0.000000	22	1	1.15	0.85
	11	1	0	0	0	0	1	1.054	-0.000000	500	1	1.15	0.85
	12	1	0	0	0	0	1	1.053	-0.000000	500	1	1.15	0.85
	13	2	0	0	0	0	1	1.050	-0.000000	22	1	1.15	0.85
	14	4	0	0	0	0	1	1.050	-0.000000	22	1	1.15	0.85
	15	4	1200.0	500.0	0	0	1	1.031	-0.000000	500	1	1.15	0.85
	16	4	500.0	200.0	0	212.53	1	1.031	-0.000000	345	1	1.15	0.85
	17	4	0	0	0	0	1	1.050	-0.000000	345	1	1.15	0.85
	18	4	0	0	0	0	1	1.051	-0.000000	22	1	1.15	0.85
	19	4	0	0	0	0	1	1.051	-0.000000	22	1	1.15	0.85
	20	4	0	0	0	0	1	1.043	-0.000000	345	1	1.15	0.85
	21	4	0	0	0	0	1	1.031	-0.000000	500	1	1.15	0.85
];
% Note: Vmax was changed from 1.3 to 1.15, Vmin was changed from 0.7 to 0.85




%% generator data
%    bus    Pg    Qg    Qmax    Qmin    Vg    mBase    status    Pmax    Pmin    Pc1    Pc2    Qc1min    Qc1max    Qc2min    Qc2max    ramp_agc    ramp_10    ramp_30    ramp_q    apf
mpc.gen = [
	1	777.2	56.56	500.0	-350.0	1.05	100.0	1	1000.0	0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	7	900.0	-51.58	400.0	-350.0	1.05	100.0	1	900.0	0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	8	900.0	-51.58	400.0	-350.0	1.05	100.0	1	900.0	0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	13	500.0	-5.61	225.0	-200.0	1.05	100.0	1	500.0	0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	14	500.0	-5.61	225.0	-200.0	1.05	100.0	0	500.0	0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	18	600.0	23.78	400.0	-300.0	1.05	100.0	0	800.0	0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	19	600.0	23.78	400.0	-300.0	1.05	100.0	0	800.0	0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
];


%% branch data
%    fbus    tbus    r    x    b    rateA    rateB    rateC    ratio    angle    status    angmin    angmax
mpc.branch = [
	2	3	0.00295	0.0315	0.539	2120.0	0.0	0.0	1.0	0.0	1	-30.0	30.0
	4	5	0.00094	0.01545	0.0	2000.0	0.0	0.0	1.0	0.0	1	-30.0	30.0
	4	5	0.00094	0.01545	1.65	2000.0	0.0	0.0	1.0	0.0	1	-30.0	30.0
	4	6	0.00187	0.03075	3.28	2000.0	0.0	0.0	1.0	0.0	1	-30.0	30.0
	5	6	0.00119	0.0178	2.464	2000.0	0.0	0.0	1.0	0.0	1	-30.0	30.0
	6	11	0.00058	0.00961	1.017	2000.0	0.0	0.0	1.0	0.0	1	-30.0	30.0
	11	12	0.00093	0.0163	1.63	1200.0	0.0	0.0	1.0	0.0	1	-30.0	30.0
	15	4	0.00079	0.0138	1.4	2000.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	15	6	0.00117	0.0192	2.05	2000.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	15	6	0.00117	0.0192	2.05	2000.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	16	20	0.0034	0.0348	0.623	2120.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	16	17	0.00392	0.0382	0.714	2120.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	17	20	0.00583	0.0542	1.064	2120.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	17	2	0.00296	0.031	0.54	2120.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	21	11	0.0014	0.02325	2.472	2000.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	5	21	0.0	-0.01061	0.0	2000.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	1	2	0.00017	0.014	0.0	1644.5	0.0	0.0	1.0	0.0	1	-30.0	30.0
	3	4	0.00016	0.025	0.0	2000.0	0.0	0.0	1.0	-0.0	1	-30.0	30.0
	3	4	0.00016	0.025	0.0	2000.0	0.0	0.0	1.0	-0.0	1	-30.0	30.0
	3	4	7.0e-5	0.025	0.0	2000.0	0.0	0.0	1.0	0.0	1	-30.0	30.0
	3	4	7.0e-5	0.025	0.0	2000.0	0.0	0.0	1.0	0.0	1	-30.0	30.0
	5	20	7.0e-5	0.025	0.0	2000.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	5	20	7.0e-5	0.025	0.0	2000.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	6	7	0.00012	0.011	0.0	1200.0	0.0	0.0	1.0	0.0	1	-30.0	30.0
	6	8	0.00012	0.011	0.0	1200.0	0.0	0.0	1.0	0.0	1	-30.0	30.0
	12	13	8.0e-5	0.015	0.0	750.0	0.0	0.0	1.0	0.0	1	-30.0	30.0
	12	14	8.0e-5	0.015	0.0	750.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	16	15	7.0e-5	0.025	0.0	2000.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	16	15	7.0e-5	0.025	0.0	2000.0	0.0	0.0	1.0	0.0	0	-30.0	30.0
	17	18	0.00017	0.012	0.0	1644.5	0.0	0.0	1.0	0.0	0	-30.0	30.0
	17	19	0.00017	0.013	0.0	1644.5	0.0	0.0	1.0	0.0	0	-30.0	30.0
];


%%-----  OPF Data  -----%%

%% generator cost data
%    1    startup    shutdown    n    x1    y1    ...    xn    yn
%    2    startup    shutdown    n    c(n-1)    ...    c0
mpc.gencost = [
	2	0	0	3	0.11	5.0	0.0
	2	0	0	3	0.11	5.0	0.0
	2	0	0	3	0.11	5.0	0.0
	2	0	0	3	0.11	5.0	0.0
	2	0	0	3	0.11	5.0	0.0
	2	0	0	3	0.11	5.0	0.0
	2	0	0	3	0.11	5.0	0.0
];


%%-----  GMD - Thermal Data  -----%%

%% gmd_bus data
%column_names% parent_index status g_gnd name
%column_names% parent_index parent_type status g_gnd name
mpc.gmd_bus = {
        1       'sub'   1       5       'dc_sub1'
        2       'sub'   1       5       'dc_sub2'
        3       'sub'   1       5       'dc_sub3'
        4       'sub'   1       1       'dc_sub4'
        5       'sub'   1       10      'dc_sub5'
        6       'sub'   1       10      'dc_sub6'
        7       'sub'   1       4.621712806766188       'dc_sub7'
        8       'sub'   1       10      'dc_sub8'
        1       'bus'   1       0       'dc_bus1'
        2       'bus'   1       0       'dc_bus2'
        3       'bus'   1       0       'dc_bus3'
        4       'bus'   1       0       'dc_bus4'
        5       'bus'   1       0       'dc_bus5'
        6       'bus'   1       0       'dc_bus6'
        7       'bus'   1       0       'dc_bus7'
        8       'bus'   1       0       'dc_bus8'
        11      'bus'   1       0       'dc_bus11'
        12      'bus'   1       0       'dc_bus12'
        13      'bus'   1       0       'dc_bus13'
        14      'bus'   1       0       'dc_bus14'
        15      'bus'   1       0       'dc_bus15'
        16      'bus'   1       0       'dc_bus16'
        17      'bus'   1       0       'dc_bus17'
        18      'bus'   1       0       'dc_bus18'
        19      'bus'   1       0       'dc_bus19'
        20      'bus'   1       0       'dc_bus20'
        21      'bus'   1       0       'dc_bus21'
};



%% gmd_branch data
%column_names% f_bus t_bus parent_index br_status br_r br_v len_km name
mpc.gmd_branch ={
	10	11	1	1	1.1704125	1929.62	120.81939273462899	'dc_br1'
	12	13	2	1	0.7833333333333333	2107.10	161.49436872495582	'dc_br2'
	12	13	3	1	0.7833333333333333	2107.10	161.49436872495582	'dc_br3'
	12	14	4	1	1.5583333333333333	5140.19	321.81790843092256	'dc_br4'
	13	14	5	1	0.9916666666666667	3055.78	205.02104684716693	'dc_br5'
	14	17	6	1	0.48333333333333334	-322.20	99.11107851638545	'dc_br6'
	17	18	7	1	0.775	2562.73	160.29318090362787	'dc_br7'
	21	12	8	1	0.6583333333333333	-2068.40	136.9370288107594	'dc_br8'
	21	14	9	1	0.9750000000000001	3057.70	201.56362020739277	'dc_br9'
	21	14	10	1	0.9750000000000001	3057.70	201.56362020739277	'dc_br10'
	22	26	11	1	1.34895	23.77	138.6435468799988	'dc_br11'
	22	23	12	1	1.5552599999999999	-2488.91	160.47336211212942	'dc_br12'
	23	26	13	1	2.3130525	2530.80	238.16588676612818	'dc_br13'
	23	10	14	1	1.17438	-1490.52	121.05590409010416	'dc_br14'
	27	17	15	1	1.1666666666666667	2717.14	241.42124977424734	'dc_br15'
	12	4	18	1	0.06666666666666667	0.0	0.0	'dc_xf2_hi'
	11	4	18	1	0.03333333333333333	0.0	0.0	'dc_xf2_lo'
	12	4	19	1	0.06666666666666667	0.0	0.0	'dc_xf3_hi'
	11	4	19	1	0.03333333333333333	0.0	0.0	'dc_xf3_lo'
	11	12	20	1	0.02	0.0	0.0	'dc_xf4_series'
	11	4	20	1	0.013333333333333334	0.0	0.0	'dc_xf4_common'
	11	12	21	1	0.02	0.0	0.0	'dc_xf5_series'
	11	4	21	1	0.013333333333333334	0.0	0.0	'dc_xf5_common'
	13	5	22	1	0.013333333333333334	0.0	0.0	'dc_xf6_hi'
	26	5	22	1	0.02	0.0	0.0	'dc_xf6_lo'
	13	5	23	1	0.013333333333333334	0.0	0.0	'dc_xf7_hi'
	26	5	23	1	0.02	0.0	0.0	'dc_xf7_lo'
	14	6	24	1	0.049999999999999996	0.0	0.0	'dc_xf8_hi'
	14	6	25	1	0.049999999999999996	0.0	0.0	'dc_xf9_hi'
	18	8	26	1	0.03333333333333333	0.0	0.0	'dc_xf10_hi'
	18	8	27	1	0.03333333333333333	0.0	0.0	'dc_xf11_hi'
	22	21	28	1	0.02	0.0	0.0	'dc_xf12_series'
	22	3	28	1	0.013333333333333334	0.0	0.0	'dc_xf12_common'
	22	21	29	1	0.02	0.0	0.0	'dc_xf13_series'
	22	3	29	1	0.013333333333333334	0.0	0.0	'dc_xf13_common'
	23	2	30	1	0.03333333333333333	0.0	0.0	'dc_xf14_hi'
	23	2	31	1	0.03333333333333333	0.0	0.0	'dc_xf15_hi'
};
% Note: br_v values correspond to a 16.0 Volts/km 90.0 Degrees electric field


%% branch_gmd data
%column_names% hi_bus lo_bus gmd_br_hi gmd_br_lo gmd_k gmd_br_series gmd_br_common baseMVA dispatchable type config
mpc.branch_gmd = {
	2	3	-1	-1	0	-1	-1	100.0	1	'line'	'none'
	4	5	-1	-1	0	-1	-1	100.0	1	'line'	'none'
	4	5	-1	-1	0	-1	-1	100.0	1	'line'	'none'
	4	6	-1	-1	0	-1	-1	100.0	1	'line'	'none'
	5	6	-1	-1	0	-1	-1	100.0	1	'line'	'none'
	6	11	-1	-1	0	-1	-1	100.0	0	'line'	'none'
	11	12	-1	-1	0	-1	-1	100.0	1	'line'	'none'
	15	4	-1	-1	0	-1	-1	100.0	1	'line'	'none'
	15	6	-1	-1	0	-1	-1	100.0	1	'line'	'none'
	15	6	-1	-1	0	-1	-1	100.0	1	'line'	'none'
	16	20	-1	-1	0	-1	-1	100.0	0	'line'	'none'
	16	17	-1	-1	0	-1	-1	100.0	1	'line'	'none'
	17	20	-1	-1	0	-1	-1	100.0	1	'line'	'none'
	17	2	-1	-1	0	-1	-1	100.0	1	'line'	'none'
	21	11	-1	-1	0	-1	-1	100.0	1	'line'	'none'
	5	21	-1	-1	0	-1	-1	100.0	0	'series_cap'	'none'
	1	2	-1	-1	1.2	-1	-1	100.0	1	'xf'	'wye-delta'
	4	3	16	17	1.6	-1	-1	100.0	0	'xf'	'gwye-gwye'
	4	3	18	19	1.6	-1	-1	100.0	0	'xf'	'gwye-gwye'
	4	3	-1	-1	1.6	20	21	100.0	0	'xf'	'gwye-gwye-auto'
	4	3	-1	-1	1.6	22	23	100.0	0	'xf'	'gwye-gwye-auto'
	5	20	24	25	1.6	-1	-1	100.0	0	'xf'	'gwye-gwye'
	5	20	26	27	1.6	-1	-1	100.0	0	'xf'	'gwye-gwye'
	6	7	28	-1	0.8	-1	-1	100.0	0	'xf'	'gwye-delta'
	6	8	29	-1	0.8	-1	-1	100.0	0	'xf'	'gwye-delta'
	12	13	30	-1	0.8	-1	-1	100.0	0	'xf'	'gwye-delta'
	12	14	31	-1	0.8	-1	-1	100.0	0	'xf'	'gwye-delta'
	15	16	-1	-1	1.1	32	33	100.0	0	'xf'	'gwye-gwye-auto'
	15	16	-1	-1	1.1	34	35	100.0	0	'xf'	'gwye-gwye-auto'
	17	18	36	-1	1.2	-1	-1	100.0	0	'xf'	'gwye-delta'
	17	19	37	-1	1.2	-1	-1	100.0	0	'xf'	'gwye-delta'
};


%% branch_thermal data
%column_names% xfmr temperature_ambient hotspot_instant_limit hotspot_avg_limit hotspot_rated topoil_time_const topoil_rated topoil_init topoil_initialized hotspot_coeff
mpc.branch_thermal = {
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	0	25	-1	-1	-1	-1	-1	-1	-1	-1
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
	1	25	280	240	150	71	75	0	1	0.63
};


%% bus_gmd data
%column_names% lat lon
mpc.bus_gmd = {
	33.6135	-87.37367
	33.6135	-87.37367
	33.54789	-86.07461
	33.54789	-86.07461
	32.70509	-84.6634
	33.3773	-82.6188
	33.3773	-82.6188
	33.3773	-82.6188
	34.2522	-82.8363
	34.1956	-81.098
	34.1956	-81.098
	34.1956	-81.098
	33.95506	-84.67935
	33.95506	-84.67935
	34.31044	-86.36576
	34.31044	-86.36576
	34.31044	-86.36576
	32.70509	-84.6634
	32.70509	-84.6634
};


%% time_elapsed
%column_names% seconds
mpc.time_elapsed = 60.0;


%% thermal caps
% thermal_cap_x0 ([per unit])
%column_names% A B C D E F G H I J K
mpc.thermal_cap_x0 = [
	0.23033 0.25000 0.26438 0.27960 0.30000 0.31967 0.33942 0.36153 0.38444 0.40000 0.43894
];
% thermal_cap_y0 ([percent per unit])
%column_names% A B C D E F G H I J K
mpc.thermal_cap_y0 = [
	100.0 93.94 90.0 85.42 80.0 74.73 70.0 64.94 59.97 56.92 50.0 
];
% Values are from Fig.2. of https://arxiv.org/pdf/1701.01469.pdf paper


%%-----  SourceID Data  -----%%

%% bus_sourceid data
%column_names% bus_sid
mpc.bus_sourceid = [
	'1 ';
	'2 ';
	'3 ';
	'4 ';
	'5 ';
	'6 ';
	'7 ';
	'8 ';
	'9 ';
	'10 ';
	'11 ';
	'12 ';
	'13 ';
	'14 ';
	'15 ';
	'16 ';
	'17 ';
	'18 ';
	'19 ';
];


%% gen_sourceid data
%column_names% bus_i gen_sid
mpc.gen_sourceid = [
	1 '1 ';
	7 '2 ';
	8 '3 ';
	13 '4 ';
	14 '5 ';
	18 '6 ';
	19 '7 ';
];


%% branch_sourceid data
%column_names% fbus tbus branch_sid
mpc.branch_sourceid = [
	2 3 '1 ';
	4 5 '2 ';
	4 5 '3 ';
	4 6 '4 ';
	5 6 '5 ';
	6 11 '6 ';
	11 12 '7 ';
	15 4 '8 ';
	15 6 '9 ';
	15 6 '10 ';
	16 20 '11 ';
	16 17 '12 ';
	17 20 '13 ';
	17 2 '14 ';
	21 11 '15 ';
	5 21 '16 ';
	1 2 '17 ';
	3 4 '18 ';
	3 4 '19 ';
	3 4 '20 ';
	3 4 '21 ';
	5 20 '22 ';
	5 20 '23 ';
	6 7 '24 ';
	6 8 '25 ';
	12 13 '26 ';
	12 14 '27 ';
	16 15 '28 ';
	16 15 '29 ';
	17 18 '30 ';
	17 19 '31 ';
];


