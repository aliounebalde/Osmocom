
#ifndef _CFI_FLASH_H
#define _CFI_FLASH_H

#include <stdint.h>

#define FLASH_MAX_REGIONS 4

typedef struct {
	void  *fr_base;
	size_t fr_bnum;
	size_t fr_bsize;
} flash_region_t;

typedef struct {
	void  *f_base;
	size_t f_size;

	size_t f_nregions;
	flash_region_t f_regions[FLASH_MAX_REGIONS];
} flash_t;

typedef enum {
	FLASH_UNLOCKED = 0,
	FLASH_LOCKED,
	FLASH_LOCKED_DOWN
} flash_lock_t;

/* manufacturer ids */
enum cfi_manuf {
	CFI_MANUF_ST       = 0x0020,
	CFI_MANUF_INTEL    = 0x0089,
	CFI_MANUF_SPANSION = 0x0001,
	CFI_MANUF_SAMSUNG  = 0x00EC,
};

int flash_init(flash_t *flash, void *base_addr);

flash_lock_t flash_block_getlock(flash_t *flash, uint32_t block_offset);

int flash_block_unlock(flash_t *flash, uint32_t block_offset);
int flash_block_lock(flash_t *flash, uint32_t block_offset);
int flash_block_lockdown(flash_t *flash, uint32_t block_offset);

int flash_block_erase(flash_t *flash, uint32_t block_offset);

int flash_program(flash_t *flash, uint32_t dst_offset, void *src, uint32_t nbytes);

int flash_get_id(void *base_addr, uint16_t * manufacturer_id, uint16_t * device_id);

#endif
