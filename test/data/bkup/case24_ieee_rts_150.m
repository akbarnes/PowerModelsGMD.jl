%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%    bus_i    type    Pd    Qd    Gs    Bs    area    Vm    Va    baseKV    zone    Vmax    Vmin
mpc.bus = [
	1	3	108	22	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	10	1	195	40	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	11	1	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	12	1	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	13	1	265	54	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	14	1	194	39	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	15	1	317	64	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	16	1	100	20	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	17	1	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	18	1	333	68	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	19	1	181	37	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	2	1	97	20	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	20	1	128	26	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	21	1	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	22	1	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	23	1	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	24	1	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	25	2	0	0	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	26	2	0	0	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	27	2	0	0	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	28	2	0	0	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	29	2	0	0	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	3	1	180	37	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	30	2	0	0	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	31	2	0	0	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	32	2	0	0	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	33	2	0	0	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	34	2	0	0	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	35	2	0	0	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	36	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	37	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	38	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	39	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	4	1	74	15	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	40	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	41	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	42	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	43	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	44	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	45	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	46	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	47	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	48	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	49	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	5	1	71	14	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	50	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	51	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	52	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	53	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	54	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	55	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	56	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	57	2	0	0	0	0	1	1.100000	-0.000000	230	1	1.05	0.95
	6	1	136	28	0	-100	1	1.100000	-0.000000	138	1	1.05	0.95
	7	1	125	25	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	8	1	171	35	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
	9	1	175	36	0	0	1	1.100000	-0.000000	138	1	1.05	0.95
];

%% generator data
%    bus    Pg    Qg    Qmax    Qmin    Vg    mBase    status    Pmax    Pmin    Pc1    Pc2    Qc1min    Qc1max    Qc2min    Qc2max    ramp_agc    ramp_10    ramp_30    ramp_q    apf
mpc.gen = [
	25	10.0	0.0	10.0	0.0	1.1	100.0	1	20.0	16.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	34	80.0	0.0	60.0	0.0	1.1	100.0	1	100.0	25.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	35	80.0	0.0	60.0	0.0	1.1	100.0	1	100.0	25.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	36	95.1	0.0	80.0	0.0	1.1	100.0	1	197.0	69.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	37	95.1	0.0	80.0	0.0	1.1	100.0	1	197.0	69.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	38	95.1	0.0	80.0	0.0	1.1	100.0	1	197.0	69.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	39	0.0	35.3	200.0	-50.0	1.1	100.0	1	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	40	12.0	0.0	6.0	0.0	1.1	100.0	1	12.0	2.4	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	41	12.0	0.0	6.0	0.0	1.1	100.0	1	12.0	2.4	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	42	12.0	0.0	6.0	0.0	1.1	100.0	1	12.0	2.4	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	43	12.0	0.0	6.0	0.0	1.1	100.0	1	12.0	2.4	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	26	10.0	0.0	10.0	0.0	1.1	100.0	1	20.0	16.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	44	12.0	0.0	6.0	0.0	1.1	100.0	1	12.0	2.4	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	45	155.0	0.0	80.0	-50.0	1.1	100.0	1	155.0	54.29999999999999	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	46	155.0	0.0	80.0	-50.0	1.1	100.0	1	155.0	54.29999999999999	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	47	400.0	0.0	200.0	-50.0	1.1	100.0	1	400.0	100.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	48	400.0	0.0	200.0	-50.0	1.1	100.0	1	400.0	100.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	49	50.0	0.0	16.0	-10.0	1.1	100.0	1	50.0	10.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	50	50.0	0.0	16.0	-10.0	1.1	100.0	1	50.0	10.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	51	50.0	0.0	16.0	-10.0	1.1	100.0	1	50.0	10.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	52	50.0	0.0	16.0	-10.0	1.1	100.0	1	50.0	10.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	53	50.0	0.0	16.0	-10.0	1.1	100.0	1	50.0	10.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	27	76.0	0.0	30.0	-25.0	1.1	100.0	1	76.0	15.2	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	54	50.0	0.0	16.0	-10.0	1.1	100.0	1	50.0	10.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	55	155.0	0.0	80.0	-50.0	1.1	100.0	1	155.0	54.29999999999999	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	56	155.0	0.0	80.0	-50.0	1.1	100.0	1	155.0	54.29999999999999	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	57	350.0	0.0	150.0	-25.0	1.1	100.0	1	350.0	140.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	28	76.0	0.0	30.0	-25.0	1.1	100.0	1	76.0	15.2	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	29	10.0	0.0	10.0	0.0	1.1	100.0	1	20.0	16.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	30	10.0	0.0	10.0	0.0	1.1	100.0	1	20.0	16.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	31	76.0	0.0	30.0	-25.0	1.1	100.0	1	76.0	15.2	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	32	76.0	0.0	30.0	-25.0	1.1	100.0	1	76.0	15.2	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
	33	80.0	0.0	60.0	0.0	1.1	100.0	1	100.0	25.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0	0.0	-1000.0	0.0
];

%% branch data
%    fbus    tbus    r    x    b    rateA    rateB    rateC    ratio    angle    status    angmin    angmax
mpc.branch = [
	1	2	0.003452	0.018456	0.347267	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	6	10	0.017341	0.075477	1.971055	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	7	8	0.015942	0.061561	0.016557	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	8	9	0.04321	0.167071	0.044173	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	8	10	0.04321	0.167071	0.044173	400.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	11	13	0.006646	0.051858	0.091697	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	11	14	0.006327	0.048973	0.075025	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	1	3	0.052766	0.204107	0.059188	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	12	13	0.006646	0.051858	0.091697	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	12	23	0.013044	0.101614	0.192983	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	13	23	0.010616	0.082732	0.19008	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	14	16	0.005066	0.039416	0.08073	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	15	16	0.002062	0.016212	0.038844	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	15	21	0.006567	0.051075	0.098815	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	15	21	0.006567	0.051075	0.098815	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	15	24	0.007152	0.055401	0.102206	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	16	17	0.003441	0.027008	0.052264	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	16	19	0.003481	0.026805	0.041796	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	1	5	0.022572	0.087493	0.022117	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	17	18	0.001935	0.015479	0.028187	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	17	22	0.013471	0.10507	0.221684	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	18	21	0.003293	0.025845	0.054616	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	18	21	0.003293	0.025845	0.054616	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	19	20	0.005559	0.043161	0.076427	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	19	20	0.005559	0.043161	0.076427	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	20	23	0.002911	0.022455	0.043767	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	20	23	0.002911	0.022455	0.043767	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	21	22	0.009594	0.074769	0.129128	500.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	2	4	0.032962	0.127324	0.034132	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	2	6	0.044219	0.170826	0.058446	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	3	9	0.033342	0.128823	0.029745	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	4	9	0.026689	0.103271	0.028217	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	5	10	0.023179	0.089769	0.023509	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	3	24	0.0023	0.0839	0.0	400.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	2	29	0.0023	0.0839	0.0	23.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	2	30	0.0023	0.0839	0.0	23.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	2	31	0.0023	0.0839	0.0	82.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	2	32	0.0023	0.0839	0.0	82.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	7	33	0.0023	0.0839	0.0	117.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	7	34	0.0023	0.0839	0.0	117.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	7	35	0.0023	0.0839	0.0	117.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	13	36	0.0023	0.0839	0.0	213.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	13	37	0.0023	0.0839	0.0	213.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	13	38	0.0023	0.0839	0.0	213.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	9	11	0.0023	0.0839	0.0	400.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	14	39	0.0023	0.0839	0.0	200.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	15	40	0.0023	0.0839	0.0	14.000000000000002	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	15	41	0.0023	0.0839	0.0	14.000000000000002	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	15	42	0.0023	0.0839	0.0	14.000000000000002	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	15	43	0.0023	0.0839	0.0	14.000000000000002	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	15	44	0.0023	0.0839	0.0	14.000000000000002	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	15	45	0.0023	0.0839	0.0	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	16	46	0.0023	0.0839	0.0	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	18	47	0.0023	0.0839	0.0	448.00000000000006	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	21	48	0.0023	0.0839	0.0	448.00000000000006	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	9	12	0.0023	0.0839	0.0	400.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	22	49	0.0023	0.0839	0.0	53.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	22	50	0.0023	0.0839	0.0	53.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	22	51	0.0023	0.0839	0.0	53.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	22	52	0.0023	0.0839	0.0	53.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	22	53	0.0023	0.0839	0.0	53.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	22	54	0.0023	0.0839	0.0	53.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	23	55	0.0023	0.0839	0.0	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	23	56	0.0023	0.0839	0.0	175.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	23	57	0.0023	0.0839	0.0	381.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	10	11	0.0023	0.0839	0.0	400.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	10	12	0.0023	0.0839	0.0	400.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	1	25	0.0023	0.0839	0.0	23.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	1	26	0.0023	0.0839	0.0	23.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	1	27	0.0023	0.0839	0.0	82.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
	1	28	0.0023	0.0839	0.0	82.0	0.0	0.0	1.0	0.0	1	-29.999999999999996	29.999999999999996
];

%%-----  OPF Data  -----%%
%% generator cost data
%    1    startup    shutdown    n    x1    y1    ...    xn    yn
%    2    startup    shutdown    n    c(n-1)    ...    c0
mpc.gencost = [
	2	0	0	3	0.0	130.0	400.685
	2	0	0	3	0.05267199999999999	43.6615	781.521
	2	0	0	3	0.05267199999999999	43.6615	781.521
	2	0	0	3	0.00717	48.5804	832.758
	2	0	0	3	0.00717	48.5804	832.758
	2	0	0	3	0.00717	48.5804	832.758
	2	0	0	3	0.0	0.0	0.0
	2	0	0	3	0.328412	56.56399999999999	86.3852
	2	0	0	3	0.328412	56.56399999999999	86.3852
	2	0	0	3	0.328412	56.56399999999999	86.3852
	2	0	0	3	0.328412	56.56399999999999	86.3852
	2	0	0	3	0.0	130.0	400.685
	2	0	0	3	0.328412	56.56399999999999	86.3852
	2	0	0	3	0.008342	12.3883	382.239
	2	0	0	3	0.008342	12.3883	382.239
	2	0	0	3	0.000213	4.4231	395.375
	2	0	0	3	0.000213	4.4231	395.375
	2	0	0	3	0.0	0.001	0.001
	2	0	0	3	0.0	0.001	0.001
	2	0	0	3	0.0	0.001	0.001
	2	0	0	3	0.0	0.001	0.001
	2	0	0	3	0.0	0.001	0.001
	2	0	0	3	0.014141999999999998	16.0811	212.308
	2	0	0	3	0.0	0.001	0.001
	2	0	0	3	0.008342	12.3883	382.239
	2	0	0	3	0.008342	12.3883	382.239
	2	0	0	3	0.004895	11.8495	665.109
	2	0	0	3	0.014141999999999998	16.0811	212.308
	2	0	0	3	0.0	130.0	400.685
	2	0	0	3	0.0	130.0	400.685
	2	0	0	3	0.014141999999999998	16.0811	212.308
	2	0	0	3	0.014141999999999998	16.0811	212.308
	2	0	0	3	0.05267199999999999	43.6615	781.521
];

%column_names% parent_index g_gnd
mpc.gmd_bus = [
	1	10.0	
	2	10.0	
	3	10.0	
	4	10.0	
	5	10.0	
	6	10.0	
	7	10.0	
	8	10.0	
	9	10.0	
	10	10.0	
	11	10.0	
	12	10.0	
	13	10.0	
	14	10.0	
	15	10.0	
	16	10.0	
	17	10.0	
	18	10.0	
	19	10.0	
	20	10.0	
	1	0.0	
	2	0.0	
	3	0.0	
	4	0.0	
	5	0.0	
	6	0.0	
	7	0.0	
	8	0.0	
	9	0.0	
	10	0.0	
	11	0.0	
	12	0.0	
	13	0.0	
	14	0.0	
	15	0.0	
	16	0.0	
	17	0.0	
	18	0.0	
	19	0.0	
	20	0.0	
	21	0.0	
	22	0.0	
	23	0.0	
	24	0.0	
	25	0.0	
	26	0.0	
	27	0.0	
	28	0.0	
	29	0.0	
	30	0.0	
	31	0.0	
	32	0.0	
	33	0.0	
	34	0.0	
	35	0.0	
	36	0.0	
	37	0.0	
	38	0.0	
	39	0.0	
	40	0.0	
	41	0.0	
	42	0.0	
	43	0.0	
	44	0.0	
	45	0.0	
	46	0.0	
	47	0.0	
	48	0.0	
	49	0.0	
	50	0.0	
	51	0.0	
	52	0.0	
	53	0.0	
	54	0.0	
	55	0.0	
	56	0.0	
	57	0.0	
];

%column_names%  name
mpc.gmd_bus_strings = {
	'dc_sub1'	
	'dc_sub2'	
	'dc_sub3'	
	'dc_sub4'	
	'dc_sub5'	
	'dc_sub6'	
	'dc_sub7'	
	'dc_sub8'	
	'dc_sub9'	
	'dc_sub10'	
	'dc_sub11'	
	'dc_sub12'	
	'dc_sub13'	
	'dc_sub14'	
	'dc_sub15'	
	'dc_sub16'	
	'dc_sub17'	
	'dc_sub18'	
	'dc_sub19'	
	'dc_sub20'	
	'dc_bus1'	
	'dc_bus2'	
	'dc_bus3'	
	'dc_bus4'	
	'dc_bus5'	
	'dc_bus6'	
	'dc_bus7'	
	'dc_bus8'	
	'dc_bus9'	
	'dc_bus10'	
	'dc_bus11'	
	'dc_bus12'	
	'dc_bus13'	
	'dc_bus14'	
	'dc_bus15'	
	'dc_bus16'	
	'dc_bus17'	
	'dc_bus18'	
	'dc_bus19'	
	'dc_bus20'	
	'dc_bus21'	
	'dc_bus22'	
	'dc_bus23'	
	'dc_bus24'	
	'dc_bus25'	
	'dc_bus26'	
	'dc_bus27'	
	'dc_bus28'	
	'dc_bus29'	
	'dc_bus30'	
	'dc_bus31'	
	'dc_bus32'	
	'dc_bus33'	
	'dc_bus34'	
	'dc_bus35'	
	'dc_bus36'	
	'dc_bus37'	
	'dc_bus38'	
	'dc_bus39'	
	'dc_bus40'	
	'dc_bus41'	
	'dc_bus42'	
	'dc_bus43'	
	'dc_bus44'	
	'dc_bus45'	
	'dc_bus46'	
	'dc_bus47'	
	'dc_bus48'	
	'dc_bus49'	
	'dc_bus50'	
	'dc_bus51'	
	'dc_bus52'	
	'dc_bus53'	
	'dc_bus54'	
	'dc_bus55'	
	'dc_bus56'	
	'dc_bus57'	
};

%column_names%  f_bus t_bus parent_index br_status br_r br_v len_km
mpc.gmd_branch = [
	21	22	1	1	0.21913296000000002	27.30850143042914	6.425529748336267	
	26	30	2	1	1.10080668	-99.72988940142213	32.19687879754137	
	27	28	3	1	1.01199816	-132.8197264755574	25.8756240354825	
	28	29	4	1	2.7429708	-591.430291053358	70.01706570387006	
	28	30	5	1	2.7429708	-591.430291053358	70.01706570387006	
	31	33	6	1	1.1719113333333333	75.6499310328671	57.9670779773549	
	31	34	7	1	1.115661	-461.8563212099875	54.63631486819532	
	21	23	8	1	3.34958568	-669.8993193740926	85.62152789957952	
	32	33	9	1	1.1719113333333333	75.6499310328671	57.9670779773549	
	32	43	10	1	2.300092	-686.382720328708	113.29358943973146	
	33	43	11	1	1.8719546666666667	-760.4776831223131	92.25438860412025	
	34	36	12	1	0.8933046666666667	-293.07266400651906	44.111403726089435	
	35	36	13	1	0.36359933333333333	-155.67315546014333	19.580115928517046	
	35	41	14	1	1.157981	-336.0581406713892	56.9744215058332	
	35	41	15	1	1.157981	-336.0581406713892	56.9744215058332	
	35	44	16	1	1.261136	486.07250227682874	61.75980609583138	
	36	37	17	1	0.606763	-256.599482987805	30.19764739266044	
	36	39	18	1	0.6138163333333334	-11.374239361706898	29.918911521577147	
	21	25	19	1	1.4328705599999998	-308.725112154539	36.65615352037294	
	37	38	20	1	0.341205	-91.85007757926319	17.285607726605107	
	37	42	21	1	2.3753863333333336	-24.724190999226153	117.39278204146677	
	38	41	22	1	0.5806656666666666	167.46423949136363	28.97129649216555	
	38	41	23	1	0.5806656666666666	167.46423949136363	28.97129649216555	
	39	40	24	1	0.9802369999999999	-16.035347403650007	48.301752843369876	
	39	40	25	1	0.9802369999999999	-16.035347403650007	48.301752843369876	
	40	43	26	1	0.5133063333333333	93.5727557963011	25.155858586499022	
	40	43	27	1	0.5133063333333333	93.5727557963011	25.155858586499022	
	41	42	28	1	1.6917419999999999	-100.14484566727407	83.4988965122832	
	22	24	29	1	2.09242776	-404.119823088022	53.43329799574202	
	22	26	30	1	2.8070221199999996	-480.722897621991	71.48960655992506	
	23	29	31	1	2.1165501599999996	114.93852366835605	54.11995261078864	
	24	29	32	1	1.6942177200000001	-177.63158131773395	43.2521215051179	
	25	30	33	1	1.47140292	-245.46827241005653	37.57867311336557	
	23	44	34	1	0.02	0.0	0.0	
	23	3	34	1	0.013333333333333334	0.0	0.0	
	22	2	35	1	0.03333333333333333	0.0	0.0	
	22	2	36	1	0.03333333333333333	0.0	0.0	
	22	2	37	1	0.03333333333333333	0.0	0.0	
	22	2	38	1	0.03333333333333333	0.0	0.0	
	27	7	39	1	0.03333333333333333	0.0	0.0	
	27	7	40	1	0.03333333333333333	0.0	0.0	
	27	7	41	1	0.03333333333333333	0.0	0.0	
	33	10	42	1	0.03333333333333333	0.0	0.0	
	33	10	43	1	0.03333333333333333	0.0	0.0	
	33	10	44	1	0.03333333333333333	0.0	0.0	
	29	31	45	1	0.02	0.0	0.0	
	29	9	45	1	0.013333333333333334	0.0	0.0	
	34	11	46	1	0.03333333333333333	0.0	0.0	
	35	12	47	1	0.03333333333333333	0.0	0.0	
	35	12	48	1	0.03333333333333333	0.0	0.0	
	35	12	49	1	0.03333333333333333	0.0	0.0	
	35	12	50	1	0.03333333333333333	0.0	0.0	
	35	12	51	1	0.03333333333333333	0.0	0.0	
	35	12	52	1	0.03333333333333333	0.0	0.0	
	36	13	53	1	0.03333333333333333	0.0	0.0	
	38	15	54	1	0.03333333333333333	0.0	0.0	
	41	18	55	1	0.03333333333333333	0.0	0.0	
	29	32	56	1	0.02	0.0	0.0	
	29	9	56	1	0.013333333333333334	0.0	0.0	
	42	19	57	1	0.03333333333333333	0.0	0.0	
	42	19	58	1	0.03333333333333333	0.0	0.0	
	42	19	59	1	0.03333333333333333	0.0	0.0	
	42	19	60	1	0.03333333333333333	0.0	0.0	
	42	19	61	1	0.03333333333333333	0.0	0.0	
	42	19	62	1	0.03333333333333333	0.0	0.0	
	43	20	63	1	0.03333333333333333	0.0	0.0	
	43	20	64	1	0.03333333333333333	0.0	0.0	
	43	20	65	1	0.03333333333333333	0.0	0.0	
	30	31	66	1	0.02	0.0	0.0	
	30	9	66	1	0.013333333333333334	0.0	0.0	
	30	32	67	1	0.02	0.0	0.0	
	30	9	67	1	0.013333333333333334	0.0	0.0	
	21	1	68	1	0.03333333333333333	0.0	0.0	
	21	1	69	1	0.03333333333333333	0.0	0.0	
	21	1	70	1	0.03333333333333333	0.0	0.0	
	21	1	71	1	0.03333333333333333	0.0	0.0	
];

%column_names%  name
mpc.gmd_branch_strings = {
	'dc_br1'	
	'dc_br10'	
	'dc_br11'	
	'dc_br12'	
	'dc_br13'	
	'dc_br18'	
	'dc_br19'	
	'dc_br2'	
	'dc_br20'	
	'dc_br21'	
	'dc_br22'	
	'dc_br23'	
	'dc_br24'	
	'dc_br25'	
	'dc_br26'	
	'dc_br27'	
	'dc_br28'	
	'dc_br29'	
	'dc_br3'	
	'dc_br30'	
	'dc_br31'	
	'dc_br32'	
	'dc_br33'	
	'dc_br34'	
	'dc_br35'	
	'dc_br36'	
	'dc_br37'	
	'dc_br38'	
	'dc_br4'	
	'dc_br5'	
	'dc_br6'	
	'dc_br8'	
	'dc_br9'	
	'dc_xf1_series'	
	'dc_xf1_common'	
	'dc_xf10_hi'	
	'dc_xf11_hi'	
	'dc_xf12_hi'	
	'dc_xf13_hi'	
	'dc_xf14_hi'	
	'dc_xf15_hi'	
	'dc_xf16_hi'	
	'dc_xf17_hi'	
	'dc_xf18_hi'	
	'dc_xf19_hi'	
	'dc_xf2_series'	
	'dc_xf2_common'	
	'dc_xf20_hi'	
	'dc_xf21_hi'	
	'dc_xf22_hi'	
	'dc_xf23_hi'	
	'dc_xf24_hi'	
	'dc_xf25_hi'	
	'dc_xf26_hi'	
	'dc_xf27_hi'	
	'dc_xf28_hi'	
	'dc_xf29_hi'	
	'dc_xf3_series'	
	'dc_xf3_common'	
	'dc_xf30_hi'	
	'dc_xf31_hi'	
	'dc_xf32_hi'	
	'dc_xf33_hi'	
	'dc_xf34_hi'	
	'dc_xf35_hi'	
	'dc_xf36_hi'	
	'dc_xf37_hi'	
	'dc_xf38_hi'	
	'dc_xf4_series'	
	'dc_xf4_common'	
	'dc_xf5_series'	
	'dc_xf5_common'	
	'dc_xf6_hi'	
	'dc_xf7_hi'	
	'dc_xf8_hi'	
	'dc_xf9_hi'	
};

%column_names%  hi_bus lo_bus gmd_br_hi gmd_br_lo gmd_k gmd_br_series gmd_br_common baseMVA
mpc.branch_gmd = [
	1	2	-1	-1	0	-1	-1	100.0	
	6	10	-1	-1	0	-1	-1	100.0	
	7	8	-1	-1	0	-1	-1	100.0	
	8	9	-1	-1	0	-1	-1	100.0	
	8	10	-1	-1	0	-1	-1	100.0	
	11	13	-1	-1	0	-1	-1	100.0	
	11	14	-1	-1	0	-1	-1	100.0	
	1	3	-1	-1	0	-1	-1	100.0	
	12	13	-1	-1	0	-1	-1	100.0	
	12	23	-1	-1	0	-1	-1	100.0	
	13	23	-1	-1	0	-1	-1	100.0	
	14	16	-1	-1	0	-1	-1	100.0	
	15	16	-1	-1	0	-1	-1	100.0	
	15	21	-1	-1	0	-1	-1	100.0	
	15	21	-1	-1	0	-1	-1	100.0	
	15	24	-1	-1	0	-1	-1	100.0	
	16	17	-1	-1	0	-1	-1	100.0	
	16	19	-1	-1	0	-1	-1	100.0	
	1	5	-1	-1	0	-1	-1	100.0	
	17	18	-1	-1	0	-1	-1	100.0	
	17	22	-1	-1	0	-1	-1	100.0	
	18	21	-1	-1	0	-1	-1	100.0	
	18	21	-1	-1	0	-1	-1	100.0	
	19	20	-1	-1	0	-1	-1	100.0	
	19	20	-1	-1	0	-1	-1	100.0	
	20	23	-1	-1	0	-1	-1	100.0	
	20	23	-1	-1	0	-1	-1	100.0	
	21	22	-1	-1	0	-1	-1	100.0	
	2	4	-1	-1	0	-1	-1	100.0	
	2	6	-1	-1	0	-1	-1	100.0	
	3	9	-1	-1	0	-1	-1	100.0	
	4	9	-1	-1	0	-1	-1	100.0	
	5	10	-1	-1	0	-1	-1	100.0	
	24	3	-1	-1	1.8	34	35	100.0	
	2	29	36	-1	1.8	-1	-1	100.0	
	2	30	37	-1	1.8	-1	-1	100.0	
	2	31	38	-1	1.8	-1	-1	100.0	
	2	32	39	-1	1.8	-1	-1	100.0	
	7	33	40	-1	1.8	-1	-1	100.0	
	7	34	41	-1	1.8	-1	-1	100.0	
	7	35	42	-1	1.8	-1	-1	100.0	
	13	36	43	-1	1.8	-1	-1	100.0	
	13	37	44	-1	1.8	-1	-1	100.0	
	13	38	45	-1	1.8	-1	-1	100.0	
	11	9	-1	-1	1.8	46	47	100.0	
	14	39	48	-1	1.8	-1	-1	100.0	
	15	40	49	-1	1.8	-1	-1	100.0	
	15	41	50	-1	1.8	-1	-1	100.0	
	15	42	51	-1	1.8	-1	-1	100.0	
	15	43	52	-1	1.8	-1	-1	100.0	
	15	44	53	-1	1.8	-1	-1	100.0	
	15	45	54	-1	1.8	-1	-1	100.0	
	16	46	55	-1	1.8	-1	-1	100.0	
	18	47	56	-1	1.8	-1	-1	100.0	
	21	48	57	-1	1.8	-1	-1	100.0	
	12	9	-1	-1	1.8	58	59	100.0	
	22	49	60	-1	1.8	-1	-1	100.0	
	22	50	61	-1	1.8	-1	-1	100.0	
	22	51	62	-1	1.8	-1	-1	100.0	
	22	52	63	-1	1.8	-1	-1	100.0	
	22	53	64	-1	1.8	-1	-1	100.0	
	22	54	65	-1	1.8	-1	-1	100.0	
	23	55	66	-1	1.8	-1	-1	100.0	
	23	56	67	-1	1.8	-1	-1	100.0	
	23	57	68	-1	1.8	-1	-1	100.0	
	11	10	-1	-1	1.8	69	70	100.0	
	12	10	-1	-1	1.8	71	72	100.0	
	1	25	73	-1	1.8	-1	-1	100.0	
	1	26	74	-1	1.8	-1	-1	100.0	
	1	27	75	-1	1.8	-1	-1	100.0	
	1	28	76	-1	1.8	-1	-1	100.0	
];

%column_names%  type config
mpc.branch_gmd_strings = {
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'line'	'none'	
	'xf'	'gwye-gwye-auto'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-gwye-auto'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-gwye-auto'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-gwye-auto'	
	'xf'	'gwye-gwye-auto'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
	'xf'	'gwye-delta'	
};

%column_names%  A B C D E F G H I J K
mpc.thermal_cap_x0 = [
	230.33 250.0 264.38 279.6 300.0 319.67 339.42 361.53 384.44 400.0 438.94 
];

%column_names%  A B C D E F G H I J K
mpc.thermal_cap_y0 = [
	100.0 93.94 90.0 85.42 80.0 74.73 70.0 64.94 59.97 56.92 50.0 
];

