/*
 * Linker script for raspberry pi kernel
 *
 * Based on code by: Alex Chadwick
 */
SECTIONS {
	/*
	 * This section contains the code which is first to run
	 *
	 * Needs to allow room for the ATAG's and stack and conform
	 * to the bootloader's expectation by putting this code at 0x8000
	 *
	 * TODO: Learn more about that last statement
	 */
	.init 0x8000 : {
		*(.init)
	}
	
	/*
	 * Rest of the code
	 */
	.text : {
		*(.text)
	}
	
	/*
	 * Data....
	 */
	.data : {
		*(.data)
	}

	/*
	 * Start of free space for memory allocations
	 */
	.free : {
		*(.free)
	}
	
	/*
	 * All other sections get discarded 
	 */
	/DISCARD/ : {
		*(*)
	}
}
