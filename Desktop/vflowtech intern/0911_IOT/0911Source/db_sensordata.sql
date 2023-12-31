PRAGMA foreign_keys=OFF;

DROP TABLE IF EXISTS "dataLog";
CREATE TABLE "dataLog" (
"uptime"  INTEGER,
"timeStamp"  INTEGER,
"primary_charging_relay"  INTEGER,
"primary_discharge_relay"  INTEGER,
"primary_positive_pump"  INTEGER,
"primary_negative_pump"  INTEGER,
"balancing_valve"  INTEGER,
"positive_valve"  INTEGER,
"negative_valve"  INTEGER,
"state_of_charge"  REAL,
"bcu_voltage"  REAL,
"bcu_current"  REAL,
"bcu_power"  REAL,
"bcu_state_of_charge"  REAL,
"smoke_sensor"  REAL,
"bcu_ocv"  REAL,
"bcu_positive_tank_temp"  REAL,
"bcu_negative_tank_temp"  REAL,
"positive_tank_high_level_float"  INTEGER,
"negative_tank_high_level_float"  INTEGER,
"positive_tank_low_level_float"  INTEGER,
"negative_tank_low_level_float"  INTEGER,
"primary_stack_voltage"  REAL,
"primary_stack_current"  REAL,
"primary_stack_positive_pressure_sensor"  REAL,
"primary_stack_negative_pressure_sensor"  REAL,
"primary_stack_pressure_delta"  REAL,
"sensor_temp"  REAL,
"humidity"  REAL,
"pcs1_voltage"  REAL,
"pcs1_current"  REAL,
"pcs1_reactive_power"  REAL,
"pcs1_load_power"  REAL,
"pcs1_ac_supply_power"  REAL,
"sentToServer" INTEGER,
"markToSent" INTEGER,
"system_mode" INTEGER,
"system_alarm_status" INTEGER,
"bcu_mode_status" REAL,
"bcu_hydrogen_sensor" REAL,
"bcu_leakage_sensor" REAL,
"b1_primary_stack_pressure_delta" REAL,
"pcs1_dc_volts" REAL,
"pcs1_dc_batt_current" REAL,
"pcs1_dc_inverter_power" REAL,
"pcs1_ac_out_status" REAL,
"pcs1_fault_status" REAL,
"pcs1_fan_speed" REAL,
"system0PVEnable" INTEGER,
"system0PVChargePower" REAL,
"system0PVTotalPower" REAL,
"pcs1InvFreq" REAL,
"pcs1InternalTemperature" REAL,
"secondary_stack_positive_pressure_sensor" REAL,
"secondary_stack_negative_pressure_sensor" REAL,
"secondary_stack_voltage" REAL,
"secondary_stack_current" REAL,
"pcs1_ac_power" REAL,
"bcu_leakage_sensor2" REAL,
"dc_main_contactor" REAL,
"pre_charge_relay" REAL,
"ac_fan_coil1" REAL,
"fluid_fan" REAL,
"dcdb_fan" REAL,
"stk_contactor1" REAL,
"stk_contactor2" REAL,

"pcs2_voltage"  REAL,
"pcs2_current"  REAL,
"pcs2_reactive_power"  REAL,
"pcs2_load_power"  REAL,
"pcs2_ac_supply_power"  REAL,
"pcs2_dc_volts" REAL,
"pcs2_dc_batt_current" REAL,
"pcs2_dc_inverter_power" REAL,
"pcs2_ac_out_status" REAL,
"pcs2_fault_status" REAL,
"pcs2_fan_speed" REAL,
"pcs2InvFreq" REAL,
"pcs2InternalTemperature" REAL,
"pcs2_ac_power" REAL,

"pcs3_voltage"  REAL,
"pcs3_current"  REAL,
"pcs3_reactive_power"  REAL,
"pcs3_load_power"  REAL,
"pcs3_ac_supply_power"  REAL,
"pcs3_dc_volts" REAL,
"pcs3_dc_batt_current" REAL,
"pcs3_dc_inverter_power" REAL,
"pcs3_ac_out_status" REAL,
"pcs3_fault_status" REAL,
"pcs3_fan_speed" REAL,
"pcs3InvFreq" REAL,
"pcs3InternalTemperature" REAL,
"pcs3_ac_power" REAL
);


