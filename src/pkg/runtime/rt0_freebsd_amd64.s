// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

#include "../../cmd/ld/textflag.h"

TEXT _rt0_amd64_freebsd(SB),NOSPLIT,$-8
	LEAQ	8(DI), SI // argv
	MOVQ	0(DI), DI // argc
	MOVQ	$main(SB), AX
	JMP	AX

TEXT main(SB),NOSPLIT,$-8
	MOVQ	$_rt0_go(SB), AX
	JMP	AX
