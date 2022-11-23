import cocotb
import random
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles

async def write_to_addr(dut, addr, val):
	dut.A0.value = 0
	dut.WR.value = 1
	dut.data_in.value = addr
	await ClockCycles(dut.CLK, 2)
	dut.A0.value = 1
	dut.data_in.value = val
	await ClockCycles(dut.CLK, 2)
	dut.WR.value = 0
	await ClockCycles(dut.CLK, 1)
	dut.data_in.value = 0
	dut.A0.value = 0

@cocotb.test()
async def test_psg(dut):
	dut._log.info("start")
	dut.RST.value = 1
	dut.WR.value = 0;
	dut.A0.value = 0;
	dut.data_in.value = 0
	clock = Clock(dut.CLK, 400, units="us")
	cocotb.start_soon(clock.start())
	fclock = Clock(dut.FCLK, 0.5, units="us")
	cocotb.start_soon(fclock.start())
	
	dut._log.info("reset")
	dut.RST.value = 1
	await ClockCycles(dut.CLK, 4)
	dut.RST.value = 0
	await ClockCycles(dut.CLK, 8)

	await write_to_addr(dut, 1, 0b0010)
	await write_to_addr(dut, 2, 0b0111)
	await write_to_addr(dut, 3, 0)
	await write_to_addr(dut, 15, 1)

	for i in range(0, 5):
		curr_state = ((dut.sample.value >> 4) & 1)
		await ClockCycles(dut.CLK, 7)
		assert ((dut.sample.value >> 4) & 1) != curr_state
		await ClockCycles(dut.CLK, 7)
		assert ((dut.sample.value >> 4) & 1) == curr_state

	await ClockCycles(dut.CLK, 5)
	await write_to_addr(dut, 4, 0)
	await write_to_addr(dut, 5, 0)
	await write_to_addr(dut, 6, 1)
	await write_to_addr(dut, 15, 2)
	assert dut.sample.value == 0b010000

	for i in range(0, 5):
		curr_state = ((dut.sample.value >> 4) & 1)
		await ClockCycles(dut.CLK, 16)
		assert ((dut.sample.value >> 4) & 1) != curr_state
		await ClockCycles(dut.CLK, 16)
		assert ((dut.sample.value >> 4) & 1) == curr_state

	await write_to_addr(dut, 15, 3)

	curr_state = dut.sample.value
	while curr_state != 0:
		await ClockCycles(dut.CLK, 1)
		curr_state = dut.sample.value

	await ClockCycles(dut.CLK, 26)
	assert ((dut.sample.value >> 4) & 3) == 1

	await ClockCycles(dut.CLK, 16)
	assert ((dut.sample.value >> 4) & 3) == 2

	await write_to_addr(dut, 9, 0b0010)
	await write_to_addr(dut, 8, 0b0111)
	await write_to_addr(dut, 7, 0)
	await write_to_addr(dut, 15, 4)
	await ClockCycles(dut.CLK, 4)
	for i in range(0, 16):
		assert dut.sample.value == i
		await ClockCycles(dut.CLK, 5)
		
	await write_to_addr(dut, 12, 0b0010)
	await write_to_addr(dut, 11, 0b0111)
	await write_to_addr(dut, 10, 0)
	await write_to_addr(dut, 15, 8)
	test_vals = [0x03, 0x0B, 0x04, 0x04, 0x08, 0x05]
	for i in range(0, 6):
		assert dut.sample.value == test_vals[i]
		await ClockCycles(dut.CLK, 10)
		
	await write_to_addr(dut, 13, 0)
	await write_to_addr(dut, 14, 0)
	assert dut.LED0.value == 0
	assert dut.LED1.value == 0
	
	await write_to_addr(dut, 13, 1)
	assert dut.LED0.value == 1
	assert dut.LED1.value == 0
	
	await write_to_addr(dut, 13, 0)
	await write_to_addr(dut, 14, 1)
	assert dut.LED0.value == 0
	assert dut.LED1.value == 1
	
	await write_to_addr(dut, 13, 1)
	assert dut.LED0.value == 1
	assert dut.LED1.value == 1
