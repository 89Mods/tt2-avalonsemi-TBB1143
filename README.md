![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/tests/badge.svg)

# Avalon Semiconductors TBB1143 - Programmable Sound Generator
This is a submission for TinyTapeout 2.

The 1143 is a sound generator with two square-wave voices, one sawtooth voice and one noise generator. As they can individually be enabled or disabled, the chip may also be used as a general-purpose, digitaly controlled frequency source.

## Pin Diagram

| Inputs    | --- | Outputs                   |
| -----:    | --- | :------                   |
| CLK -     | --- | - S0                   |
| RST -     | --- | - S1                   |
| D0 -      | --- | - S2                      |
| D1 -      | --- | - S3                      |
| D2 -      | --- | - S4                      |
| D3 -      | --- | - S5                      |
| A0 -      | --- | - LED0                      |
| WR -      | --- | - LED1                      |

## Register set

The 1143 is programmed through a series of internal registers. An internal address latch is used to select between them, and the A0 pin is used to differentiate between accesses to the address latch, or currently exposed register.

The following registers are present inside the 1143:

| Name | Size (bits) | Description | Address(es) |
| ---- | ----------- | ----------- | ------- |
| Address Latch | 3 | Only register that can always be accessed. Used to select one of the other registers for writing. | N/A |
| Voice 1 Frequency | 11 | Clock divider for tone generator 1. Exposed as three separate 4-bit registers. | 1, 2, 3 |
| Voice 2 Frequency | 11 | Clock divider for tone generator 2. Exposed as three separate 4-bit registers. | 4, 5, 6 |
| Voice 3 Frequency | 11 | Clock divider for tone generator 3 (sawtooth generator). Exposed as three separate 4-bit registers. | 7, 8, 9 |
| Noise Frequency | 11 | Clock divider for noise generator. Exposed as three separate 4-bit registers. | 10, 11, 12 |
| LED0 state | 1 | State of LED0 output port. | 13 |
| LED1 state | 1 | State of LED1 output port. | 14 |
| Voice Enable Mask | 2 | 2-bit mask to activate/deactive either or both tone generators. | 15 |

**Note:** Address 0 is reserved, and writes to that address will have no effect.

Layout of Voice Enable Mask:
| 0 | 1 | 2 | 3 |
| - | - | - | - |
| V1 | V2 | V3 | N |

## Programming

To program one of the internal registers, its address must first be entered into the Address Latch. To do this, A0 must be held low, the address provided on D0 - D3, before WR is held high for at least one clock pulse. After this, the register at the entered address is exposed, and can be written to.

This is done similarly, but with A0 raised. The data to be written to the register may then similarly be provided on D0 - D3, while WR is set high for at least one clock pulse.

## Tone generation

The tone generators work by simply taking the input clock frequency multiplied by 128, then dividing it by 8 times the tone generator’s divisor setting. Therefore, a clock speed of 6kHz and a divisor value of 218 will result in a tone of 440.3Hz.

However, a given tone generator will only output a signal if the bit in the Voice Enable Mask corresponding to it is set. Otherwise, the tone generator will permanently output a low logic level. 

This applies to all tone generators, as well as the noise generator.

## Output ports

Writing to addresses 13 or 14 will set the state of the corresponding output port using the bit provided on D0.
