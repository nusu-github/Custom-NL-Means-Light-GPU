@echo off

start fxc /O3 /Tps_3_0 /Eprocess /DTIME_RADIUS=0 /Foeven_t0.pso nlmeans_even.hlsl
start fxc /O3 /Tps_3_0 /Eprocess /DTIME_RADIUS=1 /Foeven_t1.pso nlmeans_even_t.hlsl
start fxc /O3 /Tps_3_0 /Eprocess /DTIME_RADIUS=2 /Foeven_t2.pso nlmeans_even_t.hlsl
start fxc /O3 /Tps_3_0 /Eprocess /DTIME_RADIUS=3 /Foeven_t3.pso nlmeans_even_t.hlsl
start fxc /O3 /Tps_3_0 /Eprocess /DTIME_RADIUS=0 /Foodd_t0.pso nlmeans_odd.hlsl
start fxc /O3 /Tps_3_0 /Eprocess /DTIME_RADIUS=1 /Foodd_t1.pso nlmeans_odd_t.hlsl
start fxc /O3 /Tps_3_0 /Eprocess /DTIME_RADIUS=2 /Foodd_t2.pso nlmeans_odd_t.hlsl
start fxc /O3 /Tps_3_0 /Eprocess /DTIME_RADIUS=3 /Foodd_t3.pso nlmeans_odd_t.hlsl
