--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Mon Feb 19 01:14:06 2018
--Host        : DESKTOP-C5LKN8N running 64-bit major release  (build 9200)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    FCLK_100M_CLK : out STD_LOGIC;
    FCLK_50M_CLK : out STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    I2C_scl_io : inout STD_LOGIC;
    I2C_sda_io : inout STD_LOGIC;
    SPI0_io0_io : inout STD_LOGIC;
    SPI0_io1_io : inout STD_LOGIC;
    SPI0_sck_io : inout STD_LOGIC;
    SPI0_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    SPI1_io0_io : inout STD_LOGIC;
    SPI1_io1_io : inout STD_LOGIC;
    SPI1_sck_io : inout STD_LOGIC;
    SPI1_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    control_reg0_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    SPI0_io0_i : in STD_LOGIC;
    SPI0_io0_o : out STD_LOGIC;
    SPI0_io0_t : out STD_LOGIC;
    SPI0_io1_i : in STD_LOGIC;
    SPI0_io1_o : out STD_LOGIC;
    SPI0_io1_t : out STD_LOGIC;
    SPI0_sck_i : in STD_LOGIC;
    SPI0_sck_o : out STD_LOGIC;
    SPI0_sck_t : out STD_LOGIC;
    SPI0_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    SPI0_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI0_ss_t : out STD_LOGIC;
    I2C_sda_i : in STD_LOGIC;
    I2C_sda_o : out STD_LOGIC;
    I2C_sda_t : out STD_LOGIC;
    I2C_scl_i : in STD_LOGIC;
    I2C_scl_o : out STD_LOGIC;
    I2C_scl_t : out STD_LOGIC;
    UART_txd : out STD_LOGIC;
    UART_rxd : in STD_LOGIC;
    FCLK_50M_CLK : out STD_LOGIC;
    FCLK_100M_CLK : out STD_LOGIC;
    control_reg0_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SPI1_io0_i : in STD_LOGIC;
    SPI1_io0_o : out STD_LOGIC;
    SPI1_io0_t : out STD_LOGIC;
    SPI1_io1_i : in STD_LOGIC;
    SPI1_io1_o : out STD_LOGIC;
    SPI1_io1_t : out STD_LOGIC;
    SPI1_sck_i : in STD_LOGIC;
    SPI1_sck_o : out STD_LOGIC;
    SPI1_sck_t : out STD_LOGIC;
    SPI1_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    SPI1_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI1_ss_t : out STD_LOGIC
  );
  end component system;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal I2C_scl_i : STD_LOGIC;
  signal I2C_scl_o : STD_LOGIC;
  signal I2C_scl_t : STD_LOGIC;
  signal I2C_sda_i : STD_LOGIC;
  signal I2C_sda_o : STD_LOGIC;
  signal I2C_sda_t : STD_LOGIC;
  signal SPI0_io0_i : STD_LOGIC;
  signal SPI0_io0_o : STD_LOGIC;
  signal SPI0_io0_t : STD_LOGIC;
  signal SPI0_io1_i : STD_LOGIC;
  signal SPI0_io1_o : STD_LOGIC;
  signal SPI0_io1_t : STD_LOGIC;
  signal SPI0_sck_i : STD_LOGIC;
  signal SPI0_sck_o : STD_LOGIC;
  signal SPI0_sck_t : STD_LOGIC;
  signal SPI0_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI0_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI0_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI0_ss_t : STD_LOGIC;
  signal SPI1_io0_i : STD_LOGIC;
  signal SPI1_io0_o : STD_LOGIC;
  signal SPI1_io0_t : STD_LOGIC;
  signal SPI1_io1_i : STD_LOGIC;
  signal SPI1_io1_o : STD_LOGIC;
  signal SPI1_io1_t : STD_LOGIC;
  signal SPI1_sck_i : STD_LOGIC;
  signal SPI1_sck_o : STD_LOGIC;
  signal SPI1_sck_t : STD_LOGIC;
  signal SPI1_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI1_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI1_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI1_ss_t : STD_LOGIC;
begin
I2C_scl_iobuf: component IOBUF
     port map (
      I => I2C_scl_o,
      IO => I2C_scl_io,
      O => I2C_scl_i,
      T => I2C_scl_t
    );
I2C_sda_iobuf: component IOBUF
     port map (
      I => I2C_sda_o,
      IO => I2C_sda_io,
      O => I2C_sda_i,
      T => I2C_sda_t
    );
SPI0_io0_iobuf: component IOBUF
     port map (
      I => SPI0_io0_o,
      IO => SPI0_io0_io,
      O => SPI0_io0_i,
      T => SPI0_io0_t
    );
SPI0_io1_iobuf: component IOBUF
     port map (
      I => SPI0_io1_o,
      IO => SPI0_io1_io,
      O => SPI0_io1_i,
      T => SPI0_io1_t
    );
SPI0_sck_iobuf: component IOBUF
     port map (
      I => SPI0_sck_o,
      IO => SPI0_sck_io,
      O => SPI0_sck_i,
      T => SPI0_sck_t
    );
SPI0_ss_iobuf_0: component IOBUF
     port map (
      I => SPI0_ss_o_0(0),
      IO => SPI0_ss_io(0),
      O => SPI0_ss_i_0(0),
      T => SPI0_ss_t
    );
SPI1_io0_iobuf: component IOBUF
     port map (
      I => SPI1_io0_o,
      IO => SPI1_io0_io,
      O => SPI1_io0_i,
      T => SPI1_io0_t
    );
SPI1_io1_iobuf: component IOBUF
     port map (
      I => SPI1_io1_o,
      IO => SPI1_io1_io,
      O => SPI1_io1_i,
      T => SPI1_io1_t
    );
SPI1_sck_iobuf: component IOBUF
     port map (
      I => SPI1_sck_o,
      IO => SPI1_sck_io,
      O => SPI1_sck_i,
      T => SPI1_sck_t
    );
SPI1_ss_iobuf_0: component IOBUF
     port map (
      I => SPI1_ss_o_0(0),
      IO => SPI1_ss_io(0),
      O => SPI1_ss_i_0(0),
      T => SPI1_ss_t
    );
system_i: component system
     port map (
      FCLK_100M_CLK => FCLK_100M_CLK,
      FCLK_50M_CLK => FCLK_50M_CLK,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      I2C_scl_i => I2C_scl_i,
      I2C_scl_o => I2C_scl_o,
      I2C_scl_t => I2C_scl_t,
      I2C_sda_i => I2C_sda_i,
      I2C_sda_o => I2C_sda_o,
      I2C_sda_t => I2C_sda_t,
      SPI0_io0_i => SPI0_io0_i,
      SPI0_io0_o => SPI0_io0_o,
      SPI0_io0_t => SPI0_io0_t,
      SPI0_io1_i => SPI0_io1_i,
      SPI0_io1_o => SPI0_io1_o,
      SPI0_io1_t => SPI0_io1_t,
      SPI0_sck_i => SPI0_sck_i,
      SPI0_sck_o => SPI0_sck_o,
      SPI0_sck_t => SPI0_sck_t,
      SPI0_ss_i(0) => SPI0_ss_i_0(0),
      SPI0_ss_o(0) => SPI0_ss_o_0(0),
      SPI0_ss_t => SPI0_ss_t,
      SPI1_io0_i => SPI1_io0_i,
      SPI1_io0_o => SPI1_io0_o,
      SPI1_io0_t => SPI1_io0_t,
      SPI1_io1_i => SPI1_io1_i,
      SPI1_io1_o => SPI1_io1_o,
      SPI1_io1_t => SPI1_io1_t,
      SPI1_sck_i => SPI1_sck_i,
      SPI1_sck_o => SPI1_sck_o,
      SPI1_sck_t => SPI1_sck_t,
      SPI1_ss_i(0) => SPI1_ss_i_0(0),
      SPI1_ss_o(0) => SPI1_ss_o_0(0),
      SPI1_ss_t => SPI1_ss_t,
      UART_rxd => UART_rxd,
      UART_txd => UART_txd,
      control_reg0_o(31 downto 0) => control_reg0_o(31 downto 0)
    );
end STRUCTURE;
