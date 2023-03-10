/*
 * Generic vector interface header.
 * Copyright (C) 1997, 98 Kunihiro Ishiguro
 *
 * This file is part of GNU Zebra.
 *
 * GNU Zebra is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2, or (at your option) any
 * later version.
 *
 * GNU Zebra is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 * 02111-1307, USA.
 */

#ifndef _ZEBRA_VECTOR_H
#define _ZEBRA_VECTOR_H

/* struct for vector */
struct _vector {
	unsigned int active;	/* number of active slots */
	unsigned int alloced;	/* number of allocated slot */
	void **index;		/* index to data */
};
typedef struct _vector *vector;

#define VECTOR_MIN_SIZE 1

/* (Sometimes) usefull macros.  This macro convert index expression to
 array expression. */
/* Reference slot at given index, caller must ensure slot is active */
#define vector_slot(V,I)  ((V)->index[(I)])
/* Number of active slots.
 * Note that this differs from vector_count() as it the count returned
 * will include any empty slots
 */
#define vector_active(V) ((V)->active)

/* Prototypes. */
vector vector_init(unsigned int size);
void vector_ensure(vector v, unsigned int num);
int vector_empty_slot(vector v);
int vector_set(vector v, void *val);
int vector_set_index(vector v, unsigned int i, void *val);
void vector_unset(vector v, unsigned int i);
unsigned int vector_count(vector v);
void vector_only_wrapper_free(vector v);
void vector_only_index_free(void *index);
void vector_free(vector v);
vector vector_copy(vector v);

void *vector_lookup(vector, unsigned int);
void *vector_lookup_ensure(vector, unsigned int);

extern void *tall_vty_vec_ctx;

#endif				/* _ZEBRA_VECTOR_H */
