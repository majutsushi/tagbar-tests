// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package http

func (srv *Server) initialReadLimitSize() int64 {
	return int64(srv.maxHeaderBytes()) + 4096 // bufio slop
}

type Server struct {
	doneChan chan struct{}
}
