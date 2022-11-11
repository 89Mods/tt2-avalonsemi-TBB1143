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
	dut.data_in.value = 0
	clock = Clock(dut.CLK, 400, units="us")
	cocotb.start_soon(clock.start())
	fclock = Clock(dut.FCLK, 1, units="us")
	cocotb.start_soon(fclock.start())
	
	dut._log.info("reset")
	dut.RST.value = 1
	await ClockCycles(dut.CLK, 4)
	dut.RST.value = 0
	await ClockCycles(dut.CLK, 8)

	await write_to_addr(dut, 1, 0b0100)
	await write_to_addr(dut, 2, 0b0111)
	await write_to_addr(dut, 3, 0)
	await write_to_addr(dut, 7, 1)

	for i in range(0, 5):
		curr_state = dut.SIG0.value
		await ClockCycles(dut.CLK, 7)
		assert dut.SIG0.value != curr_state
		await ClockCycles(dut.CLK, 7)
		assert dut.SIG0.value == curr_state

	await write_to_addr(dut, 7, 0)
	await write_to_addr(dut, 4, 0)
	await write_to_addr(dut, 5, 0)
	await write_to_addr(dut, 6, 1)
	await write_to_addr(dut, 7, 2)
	assert dut.SIG0 == 0

	for i in range(0, 5):
		curr_state = dut.SIG1.value
		await ClockCycles(dut.CLK, 16)
		assert dut.SIG1.value != curr_state
		await ClockCycles(dut.CLK, 16)
		assert dut.SIG1.value == curr_state

	await write_to_addr(dut, 7, 3)

	curr_state0 = dut.SIG0.value
	curr_state1 = dut.SIG1.value
	while curr_state0 != 0 or curr_state1 != 0:
		await ClockCycles(dut.CLK, 1)
		curr_state0 = dut.SIG0.value
		curr_state1 = dut.SIG1.value

	await ClockCycles(dut.CLK, 16)
	assert dut.SIG0.value == 0
	assert dut.SIG1.value == 1

	await ClockCycles(dut.CLK, 8)
	assert dut.SIG0.value == 1
	assert dut.SIG1.value == 1
