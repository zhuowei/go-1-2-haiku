// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

#include "zasm_GOOS_GOARCH.h"
#include "../../cmd/ld/textflag.h"
// setldt(int entry, int address, int limit)
TEXT runtime·setldt(SB),NOSPLIT,$0
	MOVL	address+4(FP), CX
	MOVL	CX, 0x14(FS)
	RET
