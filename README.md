# duall-port-Ram
Dual-Port RAM
Overview
This project implements a Dual-Port RAM (DPRAM), which is a type of memory that allows simultaneous read and write operations to two different memory locations. It is designed to be used in applications requiring high-speed data transfer with independent access for read and write operations, commonly used in various digital systems like microprocessors, communication systems, and embedded systems.

Features
Two Independent Ports: One port for reading and the other for writing to different memory locations at the same time.
Synchronous Operation: Both ports operate synchronously with the same clock signal.
Configurable Width and Depth: Allows you to configure the data width and memory depth based on application requirements.
Read-Write Simultaneity: Independent read and write access to different memory locations.
Simple Interface: Provides a straightforward interface to read from and write to memory locations.
Architecture
The Dual-Port RAM consists of two separate access ports:
Port A: Read/Write access
Port B: Read/Write access
Each port has a valid address for the memory locations and can operate independently for read or write cycles.
The memory locations are implemented in a single memory array, allowing concurrent access from both ports.
