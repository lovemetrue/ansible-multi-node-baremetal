goroutine 302 [running]:
runtime/pprof.writeGoroutineStacks({0x7f460abeceb8, 0xc000ef8008})
	/usr/local/go/src/runtime/pprof/pprof.go:764 +0x6a
runtime/pprof.writeGoroutine({0x7f460abeceb8?, 0xc000ef8008?}, 0xc002aaf800?)
	/usr/local/go/src/runtime/pprof/pprof.go:753 +0x25
runtime/pprof.(*Profile).WriteTo(0x7d8f4a0?, {0x7f460abeceb8?, 0xc000ef8008?}, 0xc?)
	/usr/local/go/src/runtime/pprof/pprof.go:377 +0x14b
github.com/google/gops/agent.handle({0x7f460abece90, 0xc000ef8008}, {0xc00260e000?, 0x1?, 0x1?})
	/go/src/github.com/cilium/cilium/vendor/github.com/google/gops/agent/agent.go:200 +0x28b2
github.com/google/gops/agent.listen({0x5089f90, 0xc002cfcf00})
	/go/src/github.com/cilium/cilium/vendor/github.com/google/gops/agent/agent.go:144 +0x1b4
created by github.com/google/gops/agent.Listen in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/google/gops/agent/agent.go:122 +0x385

goroutine 1 [select, 2 minutes]:
github.com/cilium/hive.(*Hive).waitForSignalOrShutdown(0xc000686b40, 0xc000649200)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/hive.go:256 +0x170
github.com/cilium/hive.(*Hive).Run(0xc000686b40, 0xc000649200)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/hive.go:240 +0x38b
github.com/cilium/cilium/daemon/cmd.NewAgentCmd.func1(0xc00011cc08, {0x4984fb6?, 0x4?, 0x4984e52?})
	/go/src/github.com/cilium/cilium/daemon/cmd/root.go:52 +0x1f9
github.com/spf13/cobra.(*Command).execute(0xc00011cc08, {0xc00020e090, 0x1, 0x1})
	/go/src/github.com/cilium/cilium/vendor/github.com/spf13/cobra/command.go:1019 +0xa91
github.com/spf13/cobra.(*Command).ExecuteC(0xc00011cc08)
	/go/src/github.com/cilium/cilium/vendor/github.com/spf13/cobra/command.go:1148 +0x46f
github.com/spf13/cobra.(*Command).Execute(...)
	/go/src/github.com/cilium/cilium/vendor/github.com/spf13/cobra/command.go:1071
github.com/cilium/cilium/daemon/cmd.Execute(0x4be5bd0?)
	/go/src/github.com/cilium/cilium/daemon/cmd/root.go:90 +0x13
main.main()
	/go/src/github.com/cilium/cilium/daemon/main.go:15 +0x1f

goroutine 366 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x508d640, {0x50a7f78, 0xc000ff59e0}, 0xc002b914f0, {0x50b22c0?, 0xc0020f6540}, {{{0xc000e99be0, 0x1, 0x1}}, 0xc000fc0360, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 491 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 459
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1439 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run.func1()
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:233 +0x6e
sync.(*Once).doSlow(0x0?, 0x0?)
	/usr/local/go/src/sync/once.go:78 +0xab
sync.(*Once).Do(...)
	/usr/local/go/src/sync/once.go:69
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run(0x0?)
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:231 +0x36
created by github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).Run in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:227 +0x6a

goroutine 16 [select, 3 minutes]:
io.(*pipe).read(0xc0008ac9c0, {0xc001310000, 0x10000, 0x418b7e?})
	/usr/local/go/src/io/pipe.go:57 +0xa5
io.(*PipeReader).Read(0xc000559d58?, {0xc001310000?, 0x838e000?, 0xc000559db0?})
	/usr/local/go/src/io/pipe.go:134 +0x1a
bufio.(*Scanner).Scan(0xc001324ee8)
	/usr/local/go/src/bufio/scan.go:219 +0x81e
github.com/cilium/cilium/pkg/logging.writerScanner(0xc001f03430, 0x0?, 0xc001f03460, {0x0, 0x0, 0x0?})
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:156 +0x15b
created by github.com/cilium/cilium/pkg/logging.severityOverrideWriter in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:117 +0x2bf

goroutine 97 [select, 3 minutes]:
io.(*pipe).read(0xc0008aca20, {0xc001d24000, 0x10000, 0x418b7e?})
	/usr/local/go/src/io/pipe.go:57 +0xa5
io.(*PipeReader).Read(0xc00055dd58?, {0xc001d24000?, 0x838e000?, 0xc00055ddb0?})
	/usr/local/go/src/io/pipe.go:134 +0x1a
bufio.(*Scanner).Scan(0xc0011c6ee8)
	/usr/local/go/src/bufio/scan.go:219 +0x81e
github.com/cilium/cilium/pkg/logging.writerScanner(0xc001f03430, 0x0?, 0xc001f03470, {0x0, 0x0, 0x0?})
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:156 +0x15b
created by github.com/cilium/cilium/pkg/logging.severityOverrideWriter in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:117 +0x2bf

goroutine 98 [select, 3 minutes]:
io.(*pipe).read(0xc0008aca80, {0xc001300000, 0x10000, 0x418b7e?})
	/usr/local/go/src/io/pipe.go:57 +0xa5
io.(*PipeReader).Read(0xc0000f1558?, {0xc001300000?, 0x838e000?, 0xc0000f15b0?})
	/usr/local/go/src/io/pipe.go:134 +0x1a
bufio.(*Scanner).Scan(0xc0011caee8)
	/usr/local/go/src/bufio/scan.go:219 +0x81e
github.com/cilium/cilium/pkg/logging.writerScanner(0xc001f03430, 0x0?, 0xc001f03480, {0x7e20a00, 0x1, 0x0?})
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:156 +0x15b
created by github.com/cilium/cilium/pkg/logging.severityOverrideWriter in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:117 +0x2bf

goroutine 99 [select, 3 minutes]:
io.(*pipe).read(0xc0008acae0, {0xc001d34000, 0x10000, 0x419f25?})
	/usr/local/go/src/io/pipe.go:57 +0xa5
io.(*PipeReader).Read(0xc001d44000?, {0xc001d34000?, 0xc0000f1db0?, 0x419c1c?})
	/usr/local/go/src/io/pipe.go:134 +0x1a
bufio.(*Scanner).Scan(0xc0011c7ee8)
	/usr/local/go/src/bufio/scan.go:219 +0x81e
github.com/cilium/cilium/pkg/logging.writerScanner(0xc001f03430, 0x0?, 0xc001f034a0, {0x0, 0x0, 0x0?})
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:156 +0x15b
created by github.com/cilium/cilium/pkg/logging.severityOverrideWriter in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:117 +0x2bf

goroutine 368 [select, 2 minutes]:
github.com/cilium/cilium/daemon/cmd.(*syncHostIPs).loop(0xc002c68f00, {0x50a7f78, 0xc001008810}, {0x50b22c0, 0xc002c68000})
	/go/src/github.com/cilium/cilium/daemon/cmd/hostips-sync.go:113 +0x374
github.com/cilium/hive/job.(*jobOneShot).start(0xc002c68f60, {0x50a7f78, 0xc001008810}, 0x502b650?, {0x50b22c0, 0xc0020f6a20}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 114 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/cleanup.DeferTerminationCleanupFunction.func1()
	/go/src/github.com/cilium/cilium/pkg/cleanup/cleanup.go:19 +0x52
created by github.com/cilium/cilium/pkg/cleanup.DeferTerminationCleanupFunction in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/cleanup/cleanup.go:17 +0x90

goroutine 288 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc001661540)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 290 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/identity/cache.(*identityWatcher).watch.func1()
	/go/src/github.com/cilium/cilium/pkg/identity/cache/cache.go:150 +0x97
created by github.com/cilium/cilium/pkg/identity/cache.(*identityWatcher).watch in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/identity/cache/cache.go:144 +0x67

goroutine 291 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc0016617c0)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 1809 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/health/probe/responder.(*Server).Serve(0xc001f0ac30)
	/go/src/github.com/cilium/cilium/pkg/health/probe/responder/responder.go:55 +0xce
github.com/cilium/cilium/pkg/health/server.(*Server).Serve.func1()
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:386 +0x27
created by github.com/cilium/cilium/pkg/health/server.(*Server).Serve in goroutine 1760
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:385 +0x78

goroutine 1435 [select, 2 minutes]:
github.com/cilium/cilium/pkg/endpoint.(*Endpoint).startRegenerationFailureHandler.func1({0x50a7fb0, 0xc002e9c3c0})
	/go/src/github.com/cilium/cilium/pkg/endpoint/policy.go:945 +0x90
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003b218c0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:333 +0x1c7
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1482 [chan receive, 2 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0xec
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1154
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1406 [select, 2 minutes]:
github.com/cilium/cilium/pkg/endpoint.(*Endpoint).startRegenerationFailureHandler.func1({0x50a7fb0, 0xc0000cc460})
	/go/src/github.com/cilium/cilium/pkg/endpoint/policy.go:945 +0x90
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003ebe580)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:333 +0x1c7
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1407 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run.func1()
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:233 +0x6e
sync.(*Once).doSlow(0xc31320?, 0xc000deba40?)
	/usr/local/go/src/sync/once.go:78 +0xab
sync.(*Once).Do(...)
	/usr/local/go/src/sync/once.go:69
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run(0xc003d82f98?)
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:231 +0x36
created by github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).Run in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:227 +0x6a

goroutine 1512 [select, 2 minutes]:
reflect.rselect({0xc00301a7e0, 0x9, 0xc00086d310?})
	/usr/local/go/src/runtime/select.go:616 +0x2ce
reflect.Select({0xc0024ef000?, 0x9, 0x8388740?})
	/usr/local/go/src/reflect/value.go:2875 +0x5ca
github.com/cilium/cilium/pkg/envoy/xds.(*Server).processRequestStream(0xc0010b6d80, {0x50a7f78, 0xc0012d8c30}, 0xc000dbd370, {0x7f460a7a3e40, 0xc000dbd330}, 0xc001c4da40, {0x4a71e27?, 0x35})
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:276 +0x8a5
github.com/cilium/cilium/pkg/envoy/xds.(*Server).HandleRequestStream(0xc0010b6d80, {0x50a7f78, 0xc0012d8c30}, {0x7f460a7a3e40, 0xc000dbd330}, {0x4a71e27, 0x35})
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:184 +0x293
github.com/cilium/cilium/pkg/envoy.(*xdsGRPCServer).StreamListeners(0xc0010b6d80, {0x50c8768, 0xc000dbd330})
	/go/src/github.com/cilium/cilium/pkg/envoy/grpc.go:105 +0x6d
github.com/envoyproxy/go-control-plane/envoy/service/listener/v3._ListenerDiscoveryService_StreamListeners_Handler({0x4826a60?, 0xc0010b6d80}, {0x50b9420, 0xc001e38c40})
	/go/src/github.com/cilium/cilium/vendor/github.com/envoyproxy/go-control-plane/envoy/service/listener/v3/lds_grpc.pb.go:177 +0xd8
google.golang.org/grpc.(*Server).processStreamingRPC(0xc000347200, {0x50a7f78, 0xc0012d8ae0}, 0xc002b30cc0, 0xc0010b70b0, 0x7df0d60, 0x0)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1721 +0x1252
google.golang.org/grpc.(*Server).handleStream(0xc000347200, {0x50a9da0, 0xc0029e6820}, 0xc002b30cc0)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1845 +0xb47
google.golang.org/grpc.(*Server).serveStreams.func2.1()
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1061 +0x7f
created by google.golang.org/grpc.(*Server).serveStreams.func2 in goroutine 1511
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1072 +0x11d

goroutine 303 [select, 2 minutes]:
github.com/cilium/statedb.graveyardWorker(0xc0013c6738, {0x50a7fb0, 0xc002b90d70}, 0x3b9aca00?)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/graveyard.go:25 +0x17a
created by github.com/cilium/statedb.(*DB).Start in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/db.go:276 +0x165

goroutine 312 [select]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002b0e9a0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 487 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc001c4c690}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc00086c3c0}, {0x50b0080, 0xc0031a1c80}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc001c4c690?}, {0xc003284cc8?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc00086c3c0?}, {0x50b0080?, 0xc0031a1c80?}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc00242c3c0, {0x50a9338, 0xc001c4c690}, {0x0, 0x0}, 0xc0003f4540)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc00242c3c0, {0x50a9338, 0xc001c4c690}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc00242c3c0, {0x50a9338, 0xc001c4c690})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x300000004907cc0?, 0xc002df5601?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc001c4c690?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc001c4c690}, 0xc0031d1ec8, {0x504c4a0, 0xc0004988c0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc0004988c0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc00242c3c0, {0x50a9338, 0xc001c4c690})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*Reflector).Run(0xc000ff4bd0?, 0xc002df57d0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:349 +0x1d
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9.5()
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:485 +0x3b
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9 in goroutine 360
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:484 +0x21f

goroutine 310 [IO wait]:
internal/poll.runtime_pollWait(0x7f460ad65de0, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002a4ac00?, 0xc0025a2000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc002a4ac00, {0xc0025a2000, 0x8000, 0x8000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc002a4ac00, {0xc0025a2000?, 0xc?, 0xc002d3f968?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc001292020, {0xc0025a2000?, 0x419514?, 0xc0025a2060?})
	/usr/local/go/src/net/net.go:194 +0x45
crypto/tls.(*atLeastReader).Read(0xc0013ac408, {0xc0025a2000?, 0x7fa0?, 0xc0030c1608?})
	/usr/local/go/src/crypto/tls/conn.go:809 +0x3b
bytes.(*Buffer).ReadFrom(0xc0021f62b8, {0x503e920, 0xc0013ac408})
	/usr/local/go/src/bytes/buffer.go:211 +0x98
crypto/tls.(*Conn).readFromUntil(0xc0021f6008, {0x7f460aa30fc8, 0xc001d80048}, 0x440a54?)
	/usr/local/go/src/crypto/tls/conn.go:831 +0xde
crypto/tls.(*Conn).readRecordOrCCS(0xc0021f6008, 0x0)
	/usr/local/go/src/crypto/tls/conn.go:629 +0x3cf
crypto/tls.(*Conn).readRecord(...)
	/usr/local/go/src/crypto/tls/conn.go:591
crypto/tls.(*Conn).Read(0xc0021f6008, {0xc00134e000, 0x1000, 0x41175e?})
	/usr/local/go/src/crypto/tls/conn.go:1385 +0x145
bufio.(*Reader).Read(0xc002b45260, {0xc001e38ac0, 0x9, 0x4117e0?})
	/usr/local/go/src/bufio/bufio.go:245 +0x197
io.ReadAtLeast({0x5038b80, 0xc002b45260}, {0xc001e38ac0, 0x9, 0x9}, 0x9)
	/usr/local/go/src/io/io.go:335 +0x91
io.ReadFull(...)
	/usr/local/go/src/io/io.go:354
golang.org/x/net/http2.readFrameHeader({0xc001e38ac0, 0x9, 0xf18875?}, {0x5038b80?, 0xc002b45260?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/frame.go:242 +0x65
golang.org/x/net/http2.(*Framer).ReadFrame(0xc001e38a80)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/frame.go:506 +0x7d
golang.org/x/net/http2.(*clientConnReadLoop).run(0xc002d3ffa8)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2258 +0xda
golang.org/x/net/http2.(*ClientConn).readLoop(0xc0004ab880)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2127 +0x79
created by golang.org/x/net/http2.(*Transport).newClientConn in goroutine 309
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:912 +0xde5

goroutine 32 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc002d807a8, 0x1)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc00183d1c0?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc002d80780, 0xc002d9c900)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002b129a0?}, 0xc000e7fd40?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002b129a0}, 0xc002b1eeb8, {0x504c480, 0xc000e7fd40}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002b129a0}, 0xc002b1eeb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc0008b9340, {0x50a9338, 0xc002b129a0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc002d8c920, 0xc002b129a0)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 325
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 326 [select, 2 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).reconcileLoop(0x50f4560, {0x50a7f78, 0xc001034570}, {0x50b22c0, 0xc002b30000})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:64 +0x3a6
github.com/cilium/hive/job.(*jobOneShot).start(0xc0016c2c00, {0x50a7f78, 0xc001034570}, 0x0?, {0x50b22c0, 0xc0016c2ba0}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 327 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).refreshLoop(0x50f4560, {0x50a7f78, 0xc0010346f0}, {0x50b22c0, 0xc002d46300})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:134 +0x1b7
github.com/cilium/hive/job.(*jobOneShot).start(0xc0016c2c60, {0x50a7f78, 0xc0010346f0}, 0x65?, {0x50b22c0, 0xc0016c2ba0}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 314 [sync.Cond.Wait]:
sync.runtime_notifyListWait(0xc002b56268, 0x3)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc000efc3e0?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc002b56240, 0xc002b16700)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002b12a10?}, 0xc000e7bd70?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002b12a10}, 0xc0011c9eb8, {0x504c480, 0xc000e7bd70}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002b12a10}, 0xc0011c9eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc0029ee160, {0x50a9338, 0xc002b12a10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x51ba01?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc00183c500, 0xc002b12a10)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 323
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 459 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc001c4c930}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc000644960}, {0x50b0080, 0xc002e04ae0}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc001c4c930?}, {0xc0031b3c98?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc000644960?}, {0x50b0080?, 0xc002e04ae0?}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc00263c000, {0x50a9338, 0xc001c4c930}, {0x0, 0x0}, 0xc000697ea0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc00263c000, {0x50a9338, 0xc001c4c930}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc00263c000, {0x50a9338, 0xc001c4c930})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0xc001335de8?, 0x90000000041101e?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc001c4c930?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc001c4c930}, 0xc0031d3ec8, {0x504c4a0, 0xc002e0f400}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc002e0f400?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc00263c000, {0x50a9338, 0xc001c4c930})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*Reflector).Run(0x44d352?, 0xc001335fa8?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:349 +0x1d
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9.5()
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:485 +0x3b
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9 in goroutine 359
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:484 +0x21f

goroutine 391 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 403
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 317 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 314
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 393 [sync.Cond.Wait]:
sync.runtime_notifyListWait(0xc002b17710, 0x7)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dcd40, {0x50a7fb0, 0xc002b10730}, 0xc002b13180, {0x50c1900, 0xc002b085d0})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 403
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 394 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 403
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 395 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0xc003284eec?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 528
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 318 [select]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002b12a10}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc002e9c910}, {0x7f460aa312c0, 0xc002b56240}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002b12a10?}, {0xc002b20b00?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc002e9c910?}, {0x7f460aa312c0?, 0xc002b56240?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc002b64000, {0x50a9338, 0xc002b12a10}, {0x0, 0x0}, 0xc00068f420)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc002b64000, {0x50a9338, 0xc002b12a10}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc002b64000, {0x50a9338, 0xc002b12a10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x7f460aa312c0?, 0xc000557df8?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002b12a10?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002b12a10}, 0xc002d43ea8, {0x504c4a0, 0xc002b10460}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc002b10460?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc002b64000, {0x50a9338, 0xc002b12a10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 314
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 385 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 318
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 352 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 32
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 388 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 417
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 426 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc002b56868, 0x1)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc002d3c7a0?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc002b56840, 0xc00044c440)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc00260df10?}, 0xc001022540?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc00260df10}, 0xc002e82eb8, {0x504c480, 0xc001022540}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc00260df10}, 0xc002e82eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc0029ee370, {0x50a9338, 0xc00260df10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc002f94220, 0xc00260df10)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 441
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 392 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0xc002e02000?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 403
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 123 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 526
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 530 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc00098b500, 0xc00139aa00, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc00098b500, 0x226e6f6974706972?, 0x6e2065685422203a?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 77
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 430 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc00260df10}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc00086ca50}, {0x7f460aa312c0, 0xc002b56840}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc00260df10?}, {0xc002d4c888?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc00086ca50?}, {0x7f460aa312c0?, 0xc002b56840?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc002b640f0, {0x50a9338, 0xc00260df10}, {0x0, 0x0}, 0xc0003f8380)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc002b640f0, {0x50a9338, 0xc00260df10}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc002b640f0, {0x50a9338, 0xc00260df10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x50486e0?, 0xc002600450?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc00260df10?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc00260df10}, 0xc0031cfea8, {0x504c4a0, 0xc0006444b0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc0006444b0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc002b640f0, {0x50a9338, 0xc00260df10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 426
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 499 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0xfffffaffffffffff?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1437 [select]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003b21b80)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 118 [sync.Cond.Wait]:
sync.runtime_notifyListWait(0xc002b5adc8, 0x3)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc002b5adb0, {0xc001442c01, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x77?}, {0xc001442c01?, 0x419514?, 0xc00235bc58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc002ecc280)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc002ecc280)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc002ecc280, {0x3fd8fe0, 0xc0013ac390})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc0010b6630, {0xc002e94800, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc002e9c9b0, 0x0, {0x5079208, 0xc002072440})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc002e90260)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc002e9ca00)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 417
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 417 [select]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002b129a0}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc002e9ca00}, {0x7f460aa312c0, 0xc002d80780}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002b129a0?}, {0xc00300b3a8?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc002e9ca00?}, {0x7f460aa312c0?, 0xc002d80780?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc00263c5a0, {0x50a9338, 0xc002b129a0}, {0x0, 0x0}, 0xc00068f730)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc00263c5a0, {0x50a9338, 0xc002b129a0}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc00263c5a0, {0x50a9338, 0xc002b129a0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x0?, 0x0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002b129a0?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002b129a0}, 0xc002623ea8, {0x504c4a0, 0xc00260ad20}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc00260ad20?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc00263c5a0, {0x50a9338, 0xc002b129a0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 32
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 370 [IO wait, 3 minutes]:
internal/poll.runtime_pollWait(0x7f460ad65408, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002b30120?, 0xc0022cbe53?, 0x1)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc002b30120, {0xc0022cbe53, 0x10000, 0x10000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
os.(*File).read(...)
	/usr/local/go/src/os/file_posix.go:29
os.(*File).Read(0xc001bea180, {0xc0022cbe53?, 0x3a?, 0xc001013134?})
	/usr/local/go/src/os/file.go:124 +0x4f
github.com/fsnotify/fsnotify.(*inotify).readEvents(0xc002dce3c0)
	/go/src/github.com/cilium/cilium/vendor/github.com/fsnotify/fsnotify/backend_inotify.go:357 +0xcf
created by github.com/fsnotify/fsnotify.newBackend in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/fsnotify/fsnotify/backend_inotify.go:155 +0x1f6

goroutine 367 [select]:
github.com/cilium/cilium/pkg/cgroups/manager.(*cgroupManager).processPodEvents(0xc000428e00)
	/go/src/github.com/cilium/cilium/pkg/cgroups/manager/manager.go:218 +0x91
created by github.com/cilium/cilium/pkg/cgroups/manager.newCGroupManager.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/cgroups/manager/cell.go:53 +0x56

goroutine 390 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc002b5ad80, 0xc002b43680, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc002b5ad80, 0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 417
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 514 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc00242c3c0, {0x50a7fb0, 0xc0006445f0}, 0xc0003f4540)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 487
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1045 [select, 3 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002609ce0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 383
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 429 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 426
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 439 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc00316ed20)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 1321 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1289
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 492 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc00263c000, {0x50a7fb0, 0xc000846370}, 0xc000697ea0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 459
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 515 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc002b5a480, 0xc002b42640, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc002b5a480, 0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 487
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 448 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 430
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 498 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 1082 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 117 [sync.Cond.Wait]:
sync.runtime_notifyListWait(0xc002b5aac8, 0x6)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc002b5aab0, {0xc001b08e48, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc001b08e48?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f460aa311c0, 0xc002b5aa80}, {0xc001b08e48, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc001400510, {0xc002af4000, 0x2000, 0x2500})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc002e9c8c0, 0x0, {0x5079208, 0xc001ad8940})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc002e90200)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc002e9c910)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 318
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 386 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc002b64000, {0x50a7fb0, 0xc002b10500}, 0xc00068f420)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 318
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 387 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc002b5aa80, 0xc002b43180, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc002b5aa80, 0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 318
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 419 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/monitor/agent.(*server).connectionHandler1_2.func1()
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/server.go:76 +0x2c
created by github.com/cilium/cilium/pkg/monitor/agent.(*server).connectionHandler1_2 in goroutine 404
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/server.go:75 +0xa5

goroutine 1425 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc0035c67e0}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc000e033b0}, {0x7f460aa312c0, 0xc0023c7ec0}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc0035c67e0?}, {0xc002d4cfd0?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc000e033b0?}, {0x7f460aa312c0?, 0xc0023c7ec0?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc003160d20, {0x50a9338, 0xc0035c67e0}, {0x0, 0x0}, 0xc000650620)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc003160d20, {0x50a9338, 0xc0035c67e0}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc003160d20, {0x50a9338, 0xc0035c67e0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x50385a0?, 0x480412?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc0035c67e0?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc0035c67e0}, 0xc002a09ea8, {0x504c4a0, 0xc000e02a50}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc000e02a50?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc003160d20, {0x50a9338, 0xc0035c67e0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1101
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 440 [select]:
github.com/cilium/cilium/pkg/node/manager.(*manager).backgroundSync(0xc00089c900, {0x50a7f78, 0xc00113b470}, {0x50b22c0, 0xc002f1a6c0})
	/go/src/github.com/cilium/cilium/pkg/node/manager/manager.go:386 +0x24d
github.com/cilium/hive/job.(*jobOneShot).start(0xc002b31500, {0x50a7f78, 0xc00113b470}, 0xc002ed6fd0?, {0x50b22c0, 0xc0016c34a0}, {{{0xc000ec61c0, 0x1, 0x1}}, 0xc00111cc90, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*group).add.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:263 +0x172

goroutine 1429 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc0006863c0, {0x50a7fb0, 0xc000e02d70}, 0xc0005b0930)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1396
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 389 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc00263c5a0, {0x50a7fb0, 0xc002b10690}, 0xc00068f730)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 417
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 403 [chan receive]:
github.com/cilium/cilium/daemon/cmd.(*localNodeSynchronizer).SyncLocalNode(0xc001096b40, {0x50a7fb0?, 0xc0007f8320?}, 0xc001096f00)
	/go/src/github.com/cilium/cilium/daemon/cmd/local_node_sync.go:79 +0xb4
github.com/cilium/cilium/pkg/node.NewLocalNodeStore.func1.1()
	/go/src/github.com/cilium/cilium/pkg/node/local_node_store.go:150 +0x31
created by github.com/cilium/cilium/pkg/node.NewLocalNodeStore.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/node/local_node_store.go:149 +0x37b

goroutine 404 [IO wait, 3 minutes]:
internal/poll.runtime_pollWait(0x7f460ad65cc8, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002d99180?, 0x0?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc002d99180)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc002d99180)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0x4122de?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).Accept(0xc0010ccb40)
	/usr/local/go/src/net/unixsock.go:260 +0x30
github.com/cilium/cilium/pkg/monitor/agent.(*server).connectionHandler1_2(0xc0010ccb70, {0x50a7fb0, 0xc0007f8500}, 0x2800)
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/server.go:81 +0xe3
created by github.com/cilium/cilium/pkg/monitor/agent.ServeMonitorAPI in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/server.go:67 +0x1a5

goroutine 405 [select, 3 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002dea580)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 406 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002dea840)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 407 [select, 3 minutes]:
github.com/cilium/hive/job.(*jobTimer).start(0xc0016c2f00, {0x50a7f78, 0xc0010cd140}, 0x0?, {0x50b22c0, 0xc0016c2ea0}, {{{0x0, 0x0, 0x0}}, 0xc00111de30, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 408 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded(0x511d0a0)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:313 +0x85
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:300 +0x88

goroutine 411 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).reconcileLoop(0x50f46e0, {0x50a7f78, 0xc0010cd860}, {0x50b22c0, 0xc002e006c0})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:64 +0x3a6
github.com/cilium/hive/job.(*jobOneShot).start(0xc0016c3320, {0x50a7f78, 0xc0010cd860}, 0x0?, {0x50b22c0, 0xc0016c32c0}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 412 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).refreshLoop(0x50f46e0, {0x50a7f78, 0xc0010cd9e0}, {0x50b22c0, 0xc002f80060})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:134 +0x1b7
github.com/cilium/hive/job.(*jobOneShot).start(0xc0016c3380, {0x50a7f78, 0xc0010cd9e0}, 0x0?, {0x50b22c0, 0xc0016c32c0}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 365 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x508d680, {0x50a7f78, 0xc000ff5890}, 0xc002633790, {0x50b22c0?, 0xc0020f6540}, {{{0xc000e99be0, 0x1, 0x1}}, 0xc000fc0360, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 414 [select]:
github.com/cilium/cilium/pkg/datapath/linux.(*devicesController).processUpdates(0xc000936dc0, 0xc002d958f0, 0xc002d959d0, 0xc002d95a40, 0xc002d95ab0)
	/go/src/github.com/cilium/cilium/pkg/datapath/linux/devices_controller.go:366 +0x2e5
github.com/cilium/cilium/pkg/datapath/linux.(*devicesController).subscribeAndProcess(0xc000936dc0, {0x50a7fb0?, 0xc002d8b3b0?})
	/go/src/github.com/cilium/cilium/pkg/datapath/linux/devices_controller.go:246 +0x5c5
github.com/cilium/cilium/pkg/datapath/linux.(*devicesController).run(0xc000936dc0, {0x50a7fb0, 0xc002d8b3b0})
	/go/src/github.com/cilium/cilium/pkg/datapath/linux/devices_controller.go:178 +0x89
created by github.com/cilium/cilium/pkg/datapath/linux.(*devicesController).Start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/datapath/linux/devices_controller.go:158 +0x125

goroutine 415 [chan receive, 3 minutes]:
github.com/vishvananda/netlink.addrSubscribeAt.func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/addr_linux.go:358 +0x25
created by github.com/vishvananda/netlink.addrSubscribeAt in goroutine 414
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/addr_linux.go:357 +0x146

goroutine 416 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f460ad65a98, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002b30960?, 0x30?, 0x1)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).RawRead(0xc002b30960, 0xc000ec8930)
	/usr/local/go/src/internal/poll/fd_unix.go:717 +0x125
os.(*rawConn).Read(0xc00197f2a0, 0xc002b31320?)
	/usr/local/go/src/os/rawconn.go:31 +0x4a
github.com/vishvananda/netlink/nl.(*NetlinkSocket).Receive(0xc002d9cfc0)
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/nl/nl_linux.go:898 +0x1e5
github.com/vishvananda/netlink.addrSubscribeAt.func2()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/addr_linux.go:374 +0x8b
created by github.com/vishvananda/netlink.addrSubscribeAt in goroutine 414
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/addr_linux.go:371 +0x35f

goroutine 433 [chan receive, 3 minutes]:
github.com/vishvananda/netlink.routeSubscribeAt.func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/route_linux.go:1770 +0x25
created by github.com/vishvananda/netlink.routeSubscribeAt in goroutine 414
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/route_linux.go:1769 +0x146

goroutine 434 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f460ad65980, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002b309c0?, 0x30?, 0x1)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).RawRead(0xc002b309c0, 0xc000ec8900)
	/usr/local/go/src/internal/poll/fd_unix.go:717 +0x125
os.(*rawConn).Read(0xc00197f298, 0xc002b312c0?)
	/usr/local/go/src/os/rawconn.go:31 +0x4a
github.com/vishvananda/netlink/nl.(*NetlinkSocket).Receive(0xc002d9d000)
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/nl/nl_linux.go:898 +0x1e5
github.com/vishvananda/netlink.routeSubscribeAt.func2()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/route_linux.go:1786 +0x91
created by github.com/vishvananda/netlink.routeSubscribeAt in goroutine 414
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/route_linux.go:1783 +0x35f

goroutine 435 [chan receive, 3 minutes]:
github.com/vishvananda/netlink.linkSubscribeAt.func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/link_linux.go:2516 +0x25
created by github.com/vishvananda/netlink.linkSubscribeAt in goroutine 414
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/link_linux.go:2515 +0x139

goroutine 436 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f460ad65868, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002b30a20?, 0x30?, 0x1)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).RawRead(0xc002b30a20, 0xc000dc9b60)
	/usr/local/go/src/internal/poll/fd_unix.go:717 +0x125
os.(*rawConn).Read(0xc0019b4618, 0xc002b31320?)
	/usr/local/go/src/os/rawconn.go:31 +0x4a
github.com/vishvananda/netlink/nl.(*NetlinkSocket).Receive(0xc002d9d040)
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/nl/nl_linux.go:898 +0x1e5
github.com/vishvananda/netlink.linkSubscribeAt.func2()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/link_linux.go:2532 +0x85
created by github.com/vishvananda/netlink.linkSubscribeAt in goroutine 414
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/link_linux.go:2529 +0x345

goroutine 437 [chan receive, 3 minutes]:
github.com/vishvananda/netlink.neighSubscribeAt.func2()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/neigh_linux.go:431 +0x25
created by github.com/vishvananda/netlink.neighSubscribeAt in goroutine 414
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/neigh_linux.go:430 +0x1cd

goroutine 438 [IO wait]:
internal/poll.runtime_pollWait(0x7f460ad65638, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002b30a80?, 0x30?, 0x1)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).RawRead(0xc002b30a80, 0xc000e476e0)
	/usr/local/go/src/internal/poll/fd_unix.go:717 +0x125
os.(*rawConn).Read(0xc000ecbcc8, 0xc002b31380?)
	/usr/local/go/src/os/rawconn.go:31 +0x4a
github.com/vishvananda/netlink/nl.(*NetlinkSocket).Receive(0xc002d9d080)
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/nl/nl_linux.go:898 +0x1e5
github.com/vishvananda/netlink.neighSubscribeAt.func3()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/neigh_linux.go:444 +0x94
created by github.com/vishvananda/netlink.neighSubscribeAt in goroutine 414
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/neigh_linux.go:441 +0x415

goroutine 1322 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1289
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 442 [select, 3 minutes]:
github.com/cilium/cilium/pkg/dial.newServiceResolver.func2({0x50a7f78, 0xc00113b800}, {0x50b22c0, 0xc003190120})
	/go/src/github.com/cilium/cilium/pkg/dial/resolver.go:53 +0xa6
github.com/cilium/hive/job.(*jobOneShot).start(0xc0016c3620, {0x50a7f78, 0xc00113b800}, 0x0?, {0x50b22c0, 0xc0016c3560}, {{{0xc000ec73c0, 0x1, 0x1}}, 0xc0011d75e0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 443 [select]:
github.com/cilium/hive/job.(*jobTimer).start(0xc001b813e0, {0x50a7f78, 0xc00113bd40}, 0x0?, {0x50b22c0, 0xc001b81320}, {{{0xc000ddcf20, 0x1, 0x1}}, 0xc000f27ab0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 445 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x508b2a0, {0x50a7f78, 0xc00114e060}, 0x0, {0x50b22c0?, 0xc001b81320}, {{{0xc000ddcf20, 0x1, 0x1}}, 0xc000f27ab0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 446 [select, 3 minutes]:
github.com/cilium/cilium/pkg/fqdn/namemanager.New.FromChannel[...].func1.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:108 +0xf6
created by github.com/cilium/cilium/pkg/fqdn/namemanager.New.FromChannel[...].func1 in goroutine 445
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:105 +0xca

goroutine 425 [select, 2 minutes]:
github.com/cilium/statedb.(*observable[...]).Observe.func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/observable.go:45 +0x2ab
created by github.com/cilium/statedb.(*observable[...]).Observe in goroutine 365
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/observable.go:27 +0xbd

goroutine 513 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 487
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 363 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/bgpv1/manager/store.NewDiffStore[...].func1({0x7, 0xfffffffffffffffc})
	/go/src/github.com/cilium/cilium/pkg/bgpv1/manager/store/diffstore.go:101 +0x266
github.com/cilium/hive/job.(*jobOneShot).start(0xc0020f66c0, {0x50a7f78, 0xc000ff5590}, 0xc001333fd0?, {0x50b22c0, 0xc0020f6540}, {{{0xc000e99be0, 0x1, 0x1}}, 0xc000fc0360, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 362 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x5089d00, {0x50a7f78, 0xc000ff5170}, 0xc002d50cb0, {0x50b22c0?, 0xc0016c2ea0}, {{{0xc000e98840, 0x1, 0x1}}, 0xc00111de30, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 371 [select, 3 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0031ab8c0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 372 [select, 3 minutes]:
github.com/cilium/cilium/daemon/cmd/cni.(*cniConfigManager).watchForDirectoryChanges(0xc00222d200)
	/go/src/github.com/cilium/cilium/daemon/cmd/cni/config.go:269 +0x11b
created by github.com/cilium/cilium/daemon/cmd/cni.(*cniConfigManager).Start in goroutine 1
	/go/src/github.com/cilium/cilium/daemon/cmd/cni/config.go:243 +0x3ae

goroutine 373 [select, 2 minutes]:
github.com/cilium/cilium/pkg/mtu.(*MTUManager).Updater(0xc00242c000, {0x50a7f78, 0xc00114f5f0}, {0x50b22c0, 0xc002d46f00})
	/go/src/github.com/cilium/cilium/pkg/mtu/manager.go:101 +0x8f0
github.com/cilium/hive/job.(*jobOneShot).start(0xc002b301e0, {0x50a7f78, 0xc00114f5f0}, 0x502b650?, {0x50b22c0, 0xc001b81b60}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*group).add.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:263 +0x172

goroutine 364 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/bgpv1/manager/store.NewDiffStore[...].func1({0x7, 0xfffffffffffffffc})
	/go/src/github.com/cilium/cilium/pkg/bgpv1/manager/store/diffstore.go:101 +0x266
github.com/cilium/hive/job.(*jobOneShot).start(0xc0020f6720, {0x50a7f78, 0xc000ff56e0}, 0x5cf865?, {0x50b22c0, 0xc0020f6540}, {{{0xc000e99be0, 0x1, 0x1}}, 0xc000fc0360, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 376 [select]:
github.com/cilium/cilium/pkg/datapath/iptables.reconciliationLoop({0x50a7f78, 0xc00114fc20}, 0xc000f51b40, {0x50b22c0, 0xc002d47260}, 0x1, 0xc00101cda0, 0xc0031dfd30, 0xc0031dfd20, 0xc0031dfd10, ...)
	/go/src/github.com/cilium/cilium/pkg/datapath/iptables/reconciler.go:192 +0x7ef
github.com/cilium/cilium/pkg/datapath/iptables.newIptablesManager.func2({0x50a7f78, 0xc00114fc20}, {0x50b22c0, 0xc002d47260})
	/go/src/github.com/cilium/cilium/pkg/datapath/iptables/iptables.go:359 +0x18c
github.com/cilium/hive/job.(*jobOneShot).start(0xc001b81c20, {0x50a7f78, 0xc00114fc20}, 0xc0007f8320?, {0x50b22c0, 0xc001b81bc0}, {{{0xc000e1d540, 0x1, 0x1}}, 0xc000f51b40, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 382 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f460ad65520, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc00177cb00?, 0x20?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc00177cb00)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc00177cb00)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0x44ea60?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).Accept(0xc0010b6bd0)
	/usr/local/go/src/net/unixsock.go:260 +0x30
google.golang.org/grpc.(*Server).Serve(0xc000347200, {0x5087d40, 0xc0010b6bd0})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:915 +0x473
github.com/cilium/cilium/pkg/envoy.(*xdsServer).startXDSGRPCServer.func1()
	/go/src/github.com/cilium/cilium/pkg/envoy/grpc.go:77 +0x3af
created by github.com/cilium/cilium/pkg/envoy.(*xdsServer).startXDSGRPCServer in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/envoy/grpc.go:53 +0x21c

goroutine 1487 [select, 2 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).refreshLoop(0x50f4620, {0x50a7f78, 0xc0010a6930}, {0x50b22c0, 0xc0014a4180})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:134 +0x1b7
github.com/cilium/hive/job.(*jobOneShot).start(0xc001ac83c0, {0x50a7f78, 0xc0010a6930}, 0x0?, {0x50b22c0, 0xc001ac8300}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1168
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 381 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/envoy.(*AccessLogServer).start.func2()
	/go/src/github.com/cilium/cilium/pkg/envoy/accesslog_server.go:87 +0x2f
created by github.com/cilium/cilium/pkg/envoy.(*AccessLogServer).start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/envoy/accesslog_server.go:86 +0x185

goroutine 359 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run(0x5121d20, {0x50a7f78, 0xc000ff4a20}, {0x50b22c0, 0xc002e01ce0})
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:434 +0x713
github.com/cilium/hive/job.(*jobOneShot).start(0xc0020f6120, {0x50a7f78, 0xc000ff4a20}, 0xc0026307d0?, {0x50b22c0, 0xc0020f6060}, {{{0xc000e65f40, 0x1, 0x1}}, 0xc000f8ac60, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 360 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run(0x5121ea0, {0x50a7f78, 0xc000ff4bd0}, {0x50b22c0, 0xc002f80720})
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:434 +0x713
github.com/cilium/hive/job.(*jobOneShot).start(0xc0020f61e0, {0x50a7f78, 0xc000ff4bd0}, 0xc002df57d0?, {0x50b22c0, 0xc0020f6060}, {{{0xc000e65f40, 0x1, 0x1}}, 0xc000f8ac60, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1356 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 1346
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 358 [syscall, 3 minutes]:
syscall.Syscall6(0xe8, 0x20, 0xc002e16680, 0xa, 0xffffffffffffffff, 0x0, 0x0)
	/usr/local/go/src/syscall/syscall_linux.go:95 +0x39
golang.org/x/sys/unix.EpollWait(0x50a7d40?, {0xc002e16680?, 0x29b4aa7?, 0x29b4aa7?}, 0xc21bfa03598dd176?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/sys/unix/zsyscall_linux_amd64.go:55 +0x4f
github.com/cilium/ebpf/internal/unix.EpollWait(...)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/ebpf/internal/unix/types_linux.go:114
github.com/cilium/ebpf/internal/epoll.(*Poller).Wait(0xc0010a9c80, {0xc002e16680, 0xa, 0xa}, {0x0?, 0x0?, 0x0?})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/ebpf/internal/epoll/poller.go:177 +0x24c
github.com/cilium/ebpf/perf.(*Reader).ReadInto(0xc0010c49a0, 0xc002361e70)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/ebpf/perf/reader.go:366 +0x2b9
github.com/cilium/ebpf/perf.(*Reader).Read(0xc000f7b4c0?)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/ebpf/perf/reader.go:333 +0x45
github.com/cilium/cilium/pkg/signal.(*signalManager).start.func1()
	/go/src/github.com/cilium/cilium/pkg/signal/signal.go:272 +0x67
created by github.com/cilium/cilium/pkg/signal.(*signalManager).start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/signal/signal.go:269 +0x118

goroutine 357 [select, 2 minutes]:
github.com/cilium/cilium/pkg/datapath/orchestrator.(*orchestrator).reconciler(0xc0020eaf08, {0x50a7f78, 0xc0010a9b00}, {0x50b22c0, 0xc002e8ae40})
	/go/src/github.com/cilium/cilium/pkg/datapath/orchestrator/orchestrator.go:239 +0x97e
github.com/cilium/hive/job.(*jobOneShot).start(0xc001b81ec0, {0x50a7f78, 0xc0010a9b00}, 0xc002637fd0?, {0x50b22c0, 0xc001b81e60}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 356 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 384
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 465 [chan receive, 3 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 376
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 380 [IO wait, 3 minutes]:
internal/poll.runtime_pollWait(0x7f460ad65750, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc00177c700?, 0x0?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc00177c700)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc00177c700)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0x1?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).AcceptUnix(0xc0010b65d0)
	/usr/local/go/src/net/unixsock.go:247 +0x30
github.com/cilium/cilium/pkg/envoy.(*AccessLogServer).start.func1()
	/go/src/github.com/cilium/cilium/pkg/envoy/accesslog_server.go:67 +0xd9
created by github.com/cilium/cilium/pkg/envoy.(*AccessLogServer).start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/envoy/accesslog_server.go:60 +0x125

goroutine 460 [select]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x127
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10 in goroutine 359
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 1376 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1352
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 355 [chan receive, 3 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 384
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 383 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc002cfb7c0)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 384 [select, 2 minutes]:
github.com/cilium/cilium/pkg/datapath/tables.(*nodeAddressController).run(0xc0020b2360, {0x50a7f78, 0xc001001a40}, {0x50b22c0, 0xc002d47380})
	/go/src/github.com/cilium/cilium/pkg/datapath/tables/node_address.go:317 +0x36a
github.com/cilium/hive/job.(*jobOneShot).start(0xc002b31ec0, {0x50a7f78, 0xc001001a40}, 0x0?, {0x50b22c0, 0xc001b81da0}, {{{0xc000e3a740, 0x1, 0x1}}, 0xc000f659a0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*group).add.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:263 +0x172

goroutine 537 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0xfffffaffffffffff?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 364
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1213 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003d41760)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1475
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1438 [select, 2 minutes]:
github.com/cilium/cilium/pkg/endpoint.(*Endpoint).startRegenerationFailureHandler.func1({0x50a7fb0, 0xc002e9cdc0})
	/go/src/github.com/cilium/cilium/pkg/endpoint/policy.go:945 +0x90
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0036486e0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:333 +0x1c7
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 486 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded(0x511d360)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:313 +0x85
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:300 +0x88

goroutine 488 [select]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x127
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10 in goroutine 360
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 73 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc00222c7a8, 0x5)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc002e04b80?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc00222c780, 0xc001488640)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002e10700?}, 0xc00100c3c0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002e10700}, 0xc00268feb8, {0x504c480, 0xc00100c3c0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002e10700}, 0xc002d5beb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc0021044d0, {0x50a9338, 0xc002e10700})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc0032081c0, 0xc002e10700)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 481
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 447 [select, 2 minutes]:
github.com/cilium/statedb.(*observable[...]).Observe.func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/observable.go:45 +0x2ab
created by github.com/cilium/statedb.(*observable[...]).Observe in goroutine 366
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/observable.go:27 +0xbd

goroutine 707 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 363
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 545 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc002b640f0, {0x50a7fb0, 0xc002b91b80}, 0xc0003f8380)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 430
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 76 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 73
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 77 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002e10700}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc000846b40}, {0x7f460aa312c0, 0xc00222c780}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002e10700?}, {0xc00300b868?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc000846b40?}, {0x7f460aa312c0?, 0xc00222c780?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc001c141e0, {0x50a9338, 0xc002e10700}, {0x0, 0x0}, 0xc0004285b0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc001c141e0, {0x50a9338, 0xc002e10700}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc001c141e0, {0x50a9338, 0xc002e10700})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x20?, 0xc0031cadf8?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002e10700?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002e10700}, 0xc002483ea8, {0x504c4a0, 0xc0011112c0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc0011112c0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc001c141e0, {0x50a9338, 0xc002e10700})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 73
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 80 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 77
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 489 [select, 3 minutes]:
github.com/cilium/cilium/pkg/policy/cell.newPolicyImporter.FromChannel[...].func1.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:108 +0xba
created by github.com/cilium/cilium/pkg/policy/cell.newPolicyImporter.FromChannel[...].func1 in goroutine 362
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:105 +0xca

goroutine 490 [select]:
github.com/cilium/cilium/pkg/policy/cell.newPolicyImporter.Buffer[...].func2.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x138
created by github.com/cilium/cilium/pkg/policy/cell.newPolicyImporter.Buffer[...].func2 in goroutine 362
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 529 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc001c141e0, {0x50a7fb0, 0xc001111a90}, 0xc0004285b0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 77
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 500 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dcd40, {0x50a7fb0, 0xc0014a85f0}, 0xc000201b20, {0x50c1900, 0xc002b085d0})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:587 +0x5d2
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 501 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 493 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc000682600, 0xc002dcea00, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc000682600, 0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 459
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 546 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc002dda000, 0xc000ae4500, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc002dda000, 0x50b22c0?, 0xc0016c2ea0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 430
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 517 [select, 2 minutes]:
github.com/cilium/cilium/pkg/k8s/watchers.(*K8sPodWatcher).podsInit.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/pod.go:172 +0x219
created by github.com/cilium/cilium/pkg/k8s/watchers.(*K8sPodWatcher).podsInit in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/pod.go:143 +0xf2

goroutine 708 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0xc002012c40?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 363
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1318 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1289
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 520 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 521 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0x2020200a7b203a22?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 522 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc00044d810, 0xb)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dc8c0, {0x50a7fb0, 0xc000644780}, 0xc001b60e00, {0x50c1630, 0xc0010521a0})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 523 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 524 [select, 2 minutes]:
github.com/cilium/cilium/pkg/k8s/watchers.(*K8sEndpointsWatcher).endpointsInit.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/endpoints.go:82 +0xe6
created by github.com/cilium/cilium/pkg/k8s/watchers.(*K8sEndpointsWatcher).endpointsInit in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/endpoints.go:80 +0x1ea

goroutine 1319 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0xc0031f5ce0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1289
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 526 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/watchers.(*K8sCiliumNodeWatcher).ciliumNodeInit.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/cilium_node.go:87 +0x12b
created by github.com/cilium/cilium/pkg/k8s/watchers.(*K8sCiliumNodeWatcher).ciliumNodeInit in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/cilium_node.go:84 +0x12e

goroutine 1366 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc00263c690, {0x50a7fb0, 0xc0024334a0}, 0xc0005e91f0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1051
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 528 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/watchers.(*K8sCiliumEndpointsWatcher).ciliumEndpointsInit.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/cilium_endpoint.go:101 +0x116
created by github.com/cilium/cilium/pkg/k8s/watchers.(*K8sCiliumEndpointsWatcher).ciliumEndpointsInit in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/cilium_endpoint.go:98 +0x12e

goroutine 1432 [select, 2 minutes]:
github.com/cilium/cilium/pkg/endpoint.(*Endpoint).startRegenerationFailureHandler.func1({0x50a7fb0, 0xc002e9c050})
	/go/src/github.com/cilium/cilium/pkg/endpoint/policy.go:945 +0x90
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003b211e0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:333 +0x1c7
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 536 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 364
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 1413 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc002f1d3c8, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc002f1d3b0, {0xc00339a001, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x8b?}, {0xc00339a001?, 0x419514?, 0xc002f25c58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc0038c68c0)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc0038c68c0)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc0038c68c0, {0x3fd8fe0, 0xc004866378})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc000daff50, {0xc003d48000, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc0024fe320, 0x0, {0x5079208, 0xc0020e23c0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc000862840)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc0024fe370)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1357
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 124 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0x0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 526
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 125 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc002611790, 0x3)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dccc0, {0x50a7fb0, 0xc003294e10}, 0xc001c4cf50, {0x50c18b0, 0xc002e02f80})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 526
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 126 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 526
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 127 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc002f889e8, 0x1)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc000f243c0?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc002f889c0, 0xc002611880)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc00260d8f0?}, 0xc00100dd70?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc00260d8f0}, 0xc002640eb8, {0x504c480, 0xc00100dd70}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc00260d8f0}, 0xc002640eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc0018f42c0, {0x50a9338, 0xc00260d8f0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc00315dbc0, 0xc00260d8f0)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 409
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 1320 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc0011b6810, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dc9c0, {0x50a7fb0, 0xc0024325f0}, 0xc0035497a0, {0x50c16d0, 0xc000cb93e0})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1289
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 396 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc00138e150, 0x3)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dc840, {0x50a7fb0, 0xc001410050}, 0xc0027d8070, {0x50c15e0, 0xc00165c490})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 528
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 397 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 528
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 532 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 127
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 709 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc001e8f990, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x1?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dcdc0, {0x50a7fb0, 0xc000645220}, 0xc002d95730, {0x50c1950, 0xc002600420})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 363
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 398 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc001708028, 0x1)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc002f956e0?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc001708000, 0xc00138f980)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002e102a0?}, 0xc00111fb30?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002e102a0}, 0xc00276deb8, {0x504c480, 0xc00111fb30}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002e102a0}, 0xc002704eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc000311b80, {0x50a9338, 0xc002e102a0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc000efc060, 0xc002e102a0)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 410
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 1317 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1289
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1368 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1151
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1314 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1289
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 578 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 398
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 1335 [select, 2 minutes]:
github.com/cilium/cilium/pkg/allocator.(*Allocator).startLocalKeySync.func1(...)
	/go/src/github.com/cilium/cilium/pkg/allocator/allocator.go:1053
created by github.com/cilium/cilium/pkg/allocator.(*Allocator).startLocalKeySync in goroutine 1047
	/go/src/github.com/cilium/cilium/pkg/allocator/allocator.go:1049 +0x5a

goroutine 1046 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc00311a4a8, 0x1)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc000579240?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc00311a480, 0xc002e8d5c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc003548c40?}, 0xc000cba540?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc003548c40}, 0xc003dafde8, {0x504c480, 0xc000cba540}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc003548c40}, 0xc002b1ade8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc000937600, {0x50a9338, 0xc003548c40})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0xc003548c40?, 0x526ec0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/informer.(*privateRunner).Run(0xc000ae01c0, 0xc003548c40)
	/go/src/github.com/cilium/cilium/pkg/k8s/informer/informer.go:46 +0x9e
github.com/cilium/cilium/pkg/k8s/identitybackend.(*crdBackend).ListAndWatch(0xc002e8d540, {0x50a7fb0, 0xc0007f2f50}, {0x508d920, 0xc000cc5388})
	/go/src/github.com/cilium/cilium/pkg/k8s/identitybackend/identity.go:427 +0x56f
github.com/cilium/cilium/pkg/allocator.(*cache).start.func1()
	/go/src/github.com/cilium/cilium/pkg/allocator/cache.go:264 +0x3e
created by github.com/cilium/cilium/pkg/allocator.(*cache).start in goroutine 1153
	/go/src/github.com/cilium/cilium/pkg/allocator/cache.go:263 +0x10c

goroutine 533 [select]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc00260d8f0}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc000847090}, {0x7f460aa312c0, 0xc002f889c0}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc00260d8f0?}, {0xc0011a0538?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc000847090?}, {0x7f460aa312c0?, 0xc002f889c0?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc001c151d0, {0x50a9338, 0xc00260d8f0}, {0x0, 0x0}, 0xc0004362a0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc001c151d0, {0x50a9338, 0xc00260d8f0}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc001c151d0, {0x50a9338, 0xc00260d8f0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x20?, 0xc002df45f8?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc00260d8f0?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc00260d8f0}, 0xc0024dfea8, {0x504c4a0, 0xc001111b30}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc001111b30?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc001c151d0, {0x50a9338, 0xc00260d8f0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 127
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1204 [select, 2 minutes]:
github.com/cilium/cilium/pkg/datapath/l2responder.(*l2ResponderReconciler).cycle(0xc002a4a000, {0x50a7f78, 0xc000df6240}, {0x503c880, 0xc00034e0c0}, 0xc00170fd50)
	/go/src/github.com/cilium/cilium/pkg/datapath/l2responder/l2responder.go:167 +0x27a
github.com/cilium/cilium/pkg/datapath/l2responder.(*l2ResponderReconciler).run(0xc002a4a000, {0x50a7f78, 0xc000df6240}, {0xc003e37d78?, 0x4f1373?})
	/go/src/github.com/cilium/cilium/pkg/datapath/l2responder/l2responder.go:107 +0x265
github.com/cilium/hive/job.(*jobOneShot).start(0xc001b80120, {0x50a7f78, 0xc000df6240}, 0xc0030d57d0?, {0x50b22c0, 0xc001b800c0}, {{{0xc002a48700, 0x1, 0x1}}, 0xc002a44580, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1567 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc003148000)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1499
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 5239 [IO wait]:
internal/poll.runtime_pollWait(0x7f460aa34b40, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002aaf700?, 0xc002a91000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc002aaf700, {0xc002a91000, 0x1000, 0x1000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc002aaf700, {0xc002a91000?, 0x4083f4?, 0x0?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc001293078, {0xc002a91000?, 0x4081ef?, 0xc003bb9b30?})
	/usr/local/go/src/net/net.go:194 +0x45
net/http.(*persistConn).Read(0xc001df2360, {0xc002a91000?, 0x8e59e5?, 0x50385a0?})
	/usr/local/go/src/net/http/transport.go:2122 +0x47
bufio.(*Reader).fill(0xc002e15c80)
	/usr/local/go/src/bufio/bufio.go:113 +0x103
bufio.(*Reader).Peek(0xc002e15c80, 0x1)
	/usr/local/go/src/bufio/bufio.go:152 +0x53
net/http.(*persistConn).readLoop(0xc001df2360)
	/usr/local/go/src/net/http/transport.go:2275 +0x172
created by net/http.(*Transport).dialConn in goroutine 5237
	/usr/local/go/src/net/http/transport.go:1944 +0x174f

goroutine 1434 [select]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003b214a0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1433 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run.func1()
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:233 +0x6e
sync.(*Once).doSlow(0xc31320?, 0xc002cfc9c0?)
	/usr/local/go/src/sync/once.go:78 +0xab
sync.(*Once).Do(...)
	/usr/local/go/src/sync/once.go:69
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run(0xc002642f98?)
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:231 +0x36
created by github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).Run in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:227 +0x6a

goroutine 1478 [select, 2 minutes]:
github.com/cilium/cilium/pkg/maps/ctmap/gc.(*GC).Enable.func1()
	/go/src/github.com/cilium/cilium/pkg/maps/ctmap/gc/gc.go:202 +0x4a5
created by github.com/cilium/cilium/pkg/maps/ctmap/gc.(*GC).Enable in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/maps/ctmap/gc/gc.go:120 +0xa5

goroutine 1829 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f460aa346e0, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc004bb2c80?, 0xc00473c000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc004bb2c80, {0xc00473c000, 0x1000, 0x1000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc004bb2c80, {0xc00473c000?, 0xc003f49ad0?, 0x4fd085?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc001bb0488, {0xc00473c000?, 0x0?, 0x0?})
	/usr/local/go/src/net/net.go:194 +0x45
net/http.(*connReader).Read(0xc004a5ac60, {0xc00473c000, 0x1000, 0x1000})
	/usr/local/go/src/net/http/server.go:798 +0x159
bufio.(*Reader).fill(0xc0021ff680)
	/usr/local/go/src/bufio/bufio.go:113 +0x103
bufio.(*Reader).Peek(0xc0021ff680, 0x4)
	/usr/local/go/src/bufio/bufio.go:152 +0x53
net/http.(*conn).serve(0xc001f733b0, {0x50a7f78, 0xc003dff140})
	/usr/local/go/src/net/http/server.go:2137 +0x785
created by net/http.(*Server).Serve in goroutine 1771
	/usr/local/go/src/net/http/server.go:3454 +0x485

goroutine 1481 [chan receive, 2 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0xec
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1154
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 93 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 533
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 579 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002e102a0}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc000644e60}, {0x7f460aa312c0, 0xc001708000}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002e102a0?}, {0xc0012f8b68?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc000644e60?}, {0x7f460aa312c0?, 0xc001708000?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc000b4aa50, {0x50a9338, 0xc002e102a0}, {0x0, 0x0}, 0xc0003f47e0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc000b4aa50, {0x50a9338, 0xc002e102a0}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc000b4aa50, {0x50a9338, 0xc002e102a0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x20?, 0xc002df4df8?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002e102a0?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002e102a0}, 0xc0024ddea8, {0x504c4a0, 0xc003294eb0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc003294eb0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc000b4aa50, {0x50a9338, 0xc002e102a0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 398
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 563 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 579
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 496 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002e0dce0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 524
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 565 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc002b5a900, 0xc002b43040, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc002b5a900, 0x76?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 579
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 564 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc000b4aa50, {0x50a7fb0, 0xc000644d70}, 0xc0003f47e0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 579
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 91 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc002b5a4c8, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc002b5a4b0, {0xc0011989f8, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc0011989f8?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f460aa311c0, 0xc002b5a480}, {0xc0011989f8, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc002d08090, {0xc0007d8000, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc00086c370, 0x0, {0x5079208, 0xc001a0c600})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc000f240e0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc00086c3c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 487
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 609 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc00098b548, 0x6)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc00098b530, {0xc00159f3b0, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc00159f3b0?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f460aa311c0, 0xc00098b500}, {0xc00159f3b0, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc00091dce0, {0xc002b7cc00, 0x800, 0xc00})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc000846a00, 0x0, {0x5079208, 0xc00207df00})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc00183cb80)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc000846b40)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 77
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 562 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc000682648, 0x5)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc000682630, {0xc001198a18, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc001198a18?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f460aa311c0, 0xc000682600}, {0xc001198a18, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc000b80c00, {0xc002cd2000, 0x8000, 0xa000})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc000644910, 0x0, {0x5079208, 0xc001a0c640})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc002f95200)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc000644960)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 459
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 92 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc002dda048, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc002dda030, {0xc00159f6a0, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc00159f6a0?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f460aa311c0, 0xc002dda000}, {0xc00159f6a0, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc002d080d8, {0xc0007d8800, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc00086c960, 0x0, {0x5079208, 0xc0020e2180})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc000f24140)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc00086ca50)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 430
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 502 [IO wait, 3 minutes]:
internal/poll.runtime_pollWait(0x7f460a9922d0, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc0014aed00?, 0x8388740?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc0014aed00)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc0014aed00)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*TCPListener).accept(0xc000636500)
	/usr/local/go/src/net/tcpsock_posix.go:159 +0x1b
net.(*TCPListener).Accept(0xc000636500)
	/usr/local/go/src/net/tcpsock.go:380 +0x30
github.com/cilium/cilium/pkg/fqdn/dnsproxy.(*wrappedTCPListener).Accept(0xc0021b85e8)
	/go/src/github.com/cilium/cilium/pkg/fqdn/dnsproxy/proxy.go:1338 +0x24
github.com/cilium/dns.(*Server).serveTCP(0xc000dcf100, {0x5093e60, 0xc0021b85e8})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/dns/server.go:454 +0x107
github.com/cilium/dns.(*Server).ActivateAndServe(0xc000dcf100)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/dns/server.go:372 +0x22b
github.com/cilium/cilium/pkg/fqdn/dnsproxy.(*DNSProxy).Listen.func1(0xc000dcf100)
	/go/src/github.com/cilium/cilium/pkg/fqdn/dnsproxy/proxy.go:699 +0x2a8
created by github.com/cilium/cilium/pkg/fqdn/dnsproxy.(*DNSProxy).Listen in goroutine 497
	/go/src/github.com/cilium/cilium/pkg/fqdn/dnsproxy/proxy.go:688 +0x45b

goroutine 503 [IO wait]:
internal/poll.runtime_pollWait(0x7f460a9923e8, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc0014aed80?, 0xc00166a200?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).ReadMsgInet4(0xc0014aed80, {0xc00166a200, 0x200, 0x200}, {0xc002c84270, 0x2c, 0x2c}, 0x0, 0xc0027eeaa8)
	/usr/local/go/src/internal/poll/fd_unix.go:329 +0x330
net.(*netFD).readMsgInet4(0xc0014aed80, {0xc00166a200?, 0x838e000?, 0xc0027eea88?}, {0xc002c84270?, 0x429adc?, 0x838e000?}, 0xc0027eeab0?, 0x419514?)
	/usr/local/go/src/net/fd_posix.go:84 +0x31
net.(*UDPConn).readMsg(0x0?, {0xc00166a200?, 0x42458a0?, 0x7f460a9924f8?}, {0xc002c84270?, 0xeb58?, 0x0?})
	/usr/local/go/src/net/udpsock_posix.go:101 +0x187
net.(*UDPConn).ReadMsgUDPAddrPort(0xc001bb0920, {0xc00166a200?, 0x49933d?, 0x7f460a9923e8?}, {0xc002c84270?, 0xc0027eec08?, 0x499145?})
	/usr/local/go/src/net/udpsock.go:203 +0x3e
net.(*UDPConn).ReadMsgUDP(0xc000636b08?, {0xc00166a200?, 0x41b1200?, 0xc0014aed80?}, {0xc002c84270?, 0xc0027eec68?, 0x419fa5?})
	/usr/local/go/src/net/udpsock.go:191 +0x25
github.com/cilium/cilium/pkg/fqdn/dnsproxy.(*sessionUDPFactory).ReadRequest(0xc001bb0920?, 0xc001bb0920)
	/go/src/github.com/cilium/cilium/pkg/fqdn/dnsproxy/udp.go:163 +0x5f
github.com/cilium/dns.(*Server).readUDP(0xc000dcf200, 0xc001bb0920, 0x77359400)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/dns/server.go:688 +0xe2
github.com/cilium/dns.defaultReader.ReadUDP({0x7dbd900?}, 0x423eaa0?, 0x79?)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/dns/server.go:174 +0x13
github.com/cilium/dns.(*Server).serveUDP(0xc000dcf200, {0x50c0e90, 0xc001bb0920})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/dns/server.go:510 +0x242
github.com/cilium/dns.(*Server).ActivateAndServe(0xc000dcf200)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/dns/server.go:367 +0x19a
github.com/cilium/cilium/pkg/fqdn/dnsproxy.(*DNSProxy).Listen.func1(0xc000dcf200)
	/go/src/github.com/cilium/cilium/pkg/fqdn/dnsproxy/proxy.go:699 +0x2a8
created by github.com/cilium/cilium/pkg/fqdn/dnsproxy.(*DNSProxy).Listen in goroutine 497
	/go/src/github.com/cilium/cilium/pkg/fqdn/dnsproxy/proxy.go:688 +0x45b

goroutine 94 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc001c151d0, {0x50a7fb0, 0xc00086d090}, 0xc0004362a0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 533
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 95 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc001972180, 0xc00068c640, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc001972180, 0x11a98e5?, 0xc00086ca50?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 533
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 610 [sync.Cond.Wait]:
sync.runtime_notifyListWait(0xc0019721c8, 0x3)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc0019721b0, {0xc002146c01, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x77?}, {0xc002146c01?, 0x419514?, 0xc003573c58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc002dcedc0)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc002dcedc0)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc002dcedc0, {0x3fd8fe0, 0xc0021b8540})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc0013b22d0, {0xc002605400, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc000846e10, 0x0, {0x5079208, 0xc00207dd80})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc00183cbe0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc000847090)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 533
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1352 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002d51340}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc000e02870}, {0x7f460aa312c0, 0xc00311a900}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002d51340?}, {0xc000eb36e0?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc000e02870?}, {0x7f460aa312c0?, 0xc00311a900?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc00263cf00, {0x50a9338, 0xc002d51340}, {0x0, 0x0}, 0xc0005e9730)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc00263cf00, {0x50a9338, 0xc002d51340}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc00263cf00, {0x50a9338, 0xc002d51340})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x0?, 0xffffffffffffffff?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002d51340?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002d51340}, 0xc003acfea8, {0x504c4a0, 0xc002432d20}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc002432d20?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc00263cf00, {0x50a9338, 0xc002d51340})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1328
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 566 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc002b5a948, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc002b5a930, {0xc002146601, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x7b?}, {0xc002146601?, 0x419514?, 0xc003575c58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc002b43400)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc002b43400)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc002b43400, {0x3fd8fe0, 0xc0045ce510})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc00148b9b0, {0xc002b4b400, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc000644e10, 0x0, {0x5079208, 0xc001a0c5c0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc002f95a00)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc000644e60)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 579
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 4082 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f460aa34398, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc00466e600?, 0xc004674000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc00466e600, {0xc004674000, 0x1000, 0x1000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc00466e600, {0xc004674000?, 0x4083f4?, 0x0?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc00197f598, {0xc004674000?, 0x4081ef?, 0xc003bb9b30?})
	/usr/local/go/src/net/net.go:194 +0x45
net/http.(*persistConn).Read(0xc001c95e60, {0xc004674000?, 0x8e59e5?, 0x50385a0?})
	/usr/local/go/src/net/http/transport.go:2122 +0x47
bufio.(*Reader).fill(0xc004668540)
	/usr/local/go/src/bufio/bufio.go:113 +0x103
bufio.(*Reader).Peek(0xc004668540, 0x1)
	/usr/local/go/src/bufio/bufio.go:152 +0x53
net/http.(*persistConn).readLoop(0xc001c95e60)
	/usr/local/go/src/net/http/transport.go:2275 +0x172
created by net/http.(*Transport).dialConn in goroutine 4069
	/usr/local/go/src/net/http/transport.go:1944 +0x174f

goroutine 1292 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1357
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1378 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc003dad200, 0xc003dc92c0, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc003dad200, 0x100?, 0xffff?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1352
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1357 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002d51420}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc0024fe370}, {0x7f460aa312c0, 0xc00311a9c0}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002d51420?}, {0xc000f222b0?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc0024fe370?}, {0x7f460aa312c0?, 0xc00311a9c0?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc00263d3b0, {0x50a9338, 0xc002d51420}, {0x0, 0x0}, 0xc0005ac380)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc00263d3b0, {0x50a9338, 0xc002d51420}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc00263d3b0, {0x50a9338, 0xc002d51420})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x0?, 0xffffffffffffffff?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002d51420?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002d51420}, 0xc003acbea8, {0x504c4a0, 0xc002432e60}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc002432e60?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc00263d3b0, {0x50a9338, 0xc002d51420})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1346
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1374 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc00263d860, {0x50a7fb0, 0xc002433ef0}, 0xc0005e96c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1362
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1365 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1051
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1101 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc0023c7ee8, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc002ed3bc8?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc0023c7ec0, 0xc001b130c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc0035c67e0?}, 0xc000cc9350?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc0035c67e0}, 0xc002ed3eb8, {0x504c480, 0xc000cc9350}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc0035c67e0}, 0xc002ed3eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc002d03600, {0x50a9338, 0xc0035c67e0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc001c63d20, 0xc0035c67e0)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 1283
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 1377 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc00263cf00, {0x50a7fb0, 0xc003de40a0}, 0xc0005e9730)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1352
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1351 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 1328
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 539 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 364
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1430 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc0034fed80, 0xc003ce6140, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc0034fed80, 0x5cf8c4?, 0xc00260d6c0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1396
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1212 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003d411e0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1408
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 538 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc001489e90, 0x8)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dc8c0, {0x50a7fb0, 0xc000c12690}, 0xc002b94bd0, {0x50c1630, 0xc0010521a0})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 364
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 1431 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc003ee0048, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc003ee0030, {0xc00159fb10, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc00159fb10?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f460aa311c0, 0xc003ee0000}, {0xc00159fb10, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc000fa04b0, {0xc0034f2c00, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc000e03360, 0x0, {0x5079208, 0xc0020e2840})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc0009591c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc000e033b0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1425
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1327 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 1326
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 1328 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc00311a928, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc003d94bc8?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc00311a900, 0xc0011b7980)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002d51340?}, 0xc000ceb0b0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002d51340}, 0xc003d94eb8, {0x504c480, 0xc000ceb0b0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002d51340}, 0xc003d94eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc000937810, {0x50a9338, 0xc002d51340})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x7241724f616d6568?, 0x100b6ff01796172?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc000914a20, 0xc002d51340)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 483
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 1348 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc00311aaa8, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc003da4bc8?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc00311aa80, 0xc0011b7a00)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002d51490?}, 0xc000ceb980?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002d51490}, 0xc003da4eb8, {0x504c480, 0xc000ceb980}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002d51490}, 0xc003da4eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc000937970, {0x50a9338, 0xc002d51490})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0xc01657079540401?, 0x616c6c754e080100?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc000914b60, 0xc002d51490)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 485
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 710 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 363
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1323 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0xc002d95110?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1289
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1324 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc0011b6e10, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dc940, {0x50a7fb0, 0xc002432690}, 0xc003549880, {0x50c1680, 0xc000cb9430})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1289
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 1325 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1289
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1568 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc004132420)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1499
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1346 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc00311a9e8, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc003da2bc8?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc00311a9c0, 0xc0011b79c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002d51420?}, 0xc000ceb4d0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002d51420}, 0xc003da2eb8, {0x504c480, 0xc000ceb4d0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002d51420}, 0xc003da2eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc0009378c0, {0x50a9338, 0xc002d51420})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc000914ac0, 0xc002d51420)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 484
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 1326 [select, 2 minutes]:
github.com/cilium/cilium/pkg/policy/k8s.startK8sPolicyWatcher.serviceEventStream.func7.1()
	/go/src/github.com/cilium/cilium/pkg/policy/k8s/service.go:151 +0x631
created by github.com/cilium/cilium/pkg/policy/k8s.startK8sPolicyWatcher.serviceEventStream.func7 in goroutine 1289
	/go/src/github.com/cilium/cilium/pkg/policy/k8s/service.go:70 +0x105

goroutine 1083 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1316 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc0011b6250, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dca40, {0x50a7fb0, 0xc002432190}, 0xc0035496c0, {0x50c1720, 0xc000cb9380})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1289
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 5240 [select]:
net/http.(*persistConn).writeLoop(0xc001df2360)
	/usr/local/go/src/net/http/transport.go:2590 +0xe7
created by net/http.(*Transport).dialConn in goroutine 5237
	/usr/local/go/src/net/http/transport.go:1945 +0x17a5

goroutine 1403 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1425
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1254 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1331
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1313 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1289
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1151 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002d513b0}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc002b91e50}, {0x7f460aa312c0, 0xc002c13bc0}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002d513b0?}, {0xc000eb2788?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc002b91e50?}, {0x7f460aa312c0?, 0xc002c13bc0?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc002b64b40, {0x50a9338, 0xc002d513b0}, {0x0, 0x0}, 0xc0005e93b0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc002b64b40, {0x50a9338, 0xc002d513b0}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc002b64b40, {0x50a9338, 0xc002d513b0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x0?, 0xffffffffffffffff?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002d513b0?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002d513b0}, 0xc0035b7ea8, {0x504c4a0, 0xc00098c7d0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc00098c7d0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc002b64b40, {0x50a9338, 0xc002d513b0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1147
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 4043 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f460aa34280, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc00477e900?, 0xc004988000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc00477e900, {0xc004988000, 0x1000, 0x1000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc00477e900, {0xc004988000?, 0xc0031d5ad0?, 0x4fd085?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc0012c96a8, {0xc004988000?, 0x0?, 0x0?})
	/usr/local/go/src/net/net.go:194 +0x45
net/http.(*connReader).Read(0xc004800060, {0xc004988000, 0x1000, 0x1000})
	/usr/local/go/src/net/http/server.go:798 +0x159
bufio.(*Reader).fill(0xc004ae7800)
	/usr/local/go/src/bufio/bufio.go:113 +0x103
bufio.(*Reader).Peek(0xc004ae7800, 0x4)
	/usr/local/go/src/bufio/bufio.go:152 +0x53
net/http.(*conn).serve(0xc004183ef0, {0x50a7f78, 0xc003dff140})
	/usr/local/go/src/net/http/server.go:2137 +0x785
created by net/http.(*Server).Serve in goroutine 1771
	/usr/local/go/src/net/http/server.go:3454 +0x485

goroutine 1100 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc003dad248, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc003dad230, {0xc000c3d801, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x80?}, {0xc000c3d801?, 0x419514?, 0xc0035bdc58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc000dcadc0)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc000dcadc0)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc000dcadc0, {0x3fd8fe0, 0xc004b28060})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc000cc9140, {0xc0034f2800, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc000e02820, 0x0, {0x5079208, 0xc0020ec3c0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc001c63d00)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc000e02870)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1352
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1150 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 1147
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 1146 [runnable]:
github.com/cilium/cilium/pkg/monitor/agent.(*agent).notifyPerfEventLocked(...)
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/agent.go:429
github.com/cilium/cilium/pkg/monitor/agent.(*agent).processPerfRecord(0xc00170eb60, {0x1, {0xc0022306c0, 0x2c, 0x2c}, 0x0, 0x38})
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/agent.go:390 +0x1d7
github.com/cilium/cilium/pkg/monitor/agent.(*agent).handleEvents(0xc00170eb60, {0x50a7fb0, 0xc00094a6e0})
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/agent.go:370 +0x758
created by github.com/cilium/cilium/pkg/monitor/agent.(*agent).startPerfReaderLocked in goroutine 1162
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/agent.go:213 +0xd0

goroutine 1054 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1289
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 1079 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1050 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 1046
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 1144 [select, 3 minutes]:
github.com/cilium/cilium/pkg/hubble/observer.(*namespaceManager).Run(0xc000c91200, {0x50a7f78, 0xc000cc3950})
	/go/src/github.com/cilium/cilium/pkg/hubble/observer/namespace_manager.go:49 +0xf7
created by github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch in goroutine 1162
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:295 +0xbaa

goroutine 1145 [runnable]:
github.com/cilium/cilium/pkg/hubble/observer.(*LocalObserverServer).Start(0xc000adcd80)
	/go/src/github.com/cilium/cilium/pkg/hubble/observer/local_observer.go:124 +0x97
created by github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch in goroutine 1162
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:306 +0xc45

goroutine 1104 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 1101
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 1080 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1051 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc003548c40}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc00098ca50}, {0x7f460aa312c0, 0xc00311a480}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc003548c40?}, {0xc000eb25f0?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc00098ca50?}, {0x7f460aa312c0?, 0xc00311a480?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc00263c690, {0x50a9338, 0xc003548c40}, {0x0, 0x0}, 0xc0005e91f0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc00263c690, {0x50a9338, 0xc003548c40}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc00263c690, {0x50a9338, 0xc003548c40})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x4898540?, 0x480412?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc003548c40?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc003548c40}, 0xc003579ea8, {0x504c4a0, 0xc0007f3040}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc0007f3040?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc00263c690, {0x50a9338, 0xc003548c40})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1046
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1055 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0xc002b95f10?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1289
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1084 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1147 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc002c13be8, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc00270bbc8?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc002c13bc0, 0xc001187040)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002d513b0?}, 0xc000ce2db0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002d513b0}, 0xc00270beb8, {0x504c480, 0xc000ce2db0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002d513b0}, 0xc00270beb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc0035fc210, {0x50a9338, 0xc002d513b0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc000c15f40, 0xc002d513b0)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 482
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 1081 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1315 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0xc0031f5a40?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1289
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1056 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc002e8db50, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dcac0, {0x50a7fb0, 0xc0024320f0}, 0xc0035495e0, {0x50c1770, 0xc000cd1c80})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1289
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 1367 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc003dac900, 0xc003dc83c0, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc003dac900, 0xc00134dab0?, 0xc0026337b8?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1051
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1085 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1261 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002d5cdc0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1408
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1078 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1143 [chan receive, 3 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1162
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1098 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 357
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 1142 [select, 3 minutes]:
github.com/cilium/cilium/pkg/auth.registerSignalAuthenticationJob.FromChannel[...].func2.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:108 +0xd0
created by github.com/cilium/cilium/pkg/auth.registerSignalAuthenticationJob.FromChannel[...].func2 in goroutine 1157
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:105 +0xca

goroutine 1128 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002e9b340)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1129 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002e9bb80)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1130 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc00376e580)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1131 [chan receive, 3 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1132 [select, 2 minutes]:
github.com/cilium/cilium/pkg/nodediscovery.(*NodeDiscovery).StartDiscovery.Debounce[...].func4.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:281 +0x1b5
created by github.com/cilium/cilium/pkg/nodediscovery.(*NodeDiscovery).StartDiscovery.Debounce[...].func4 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:271 +0x185

goroutine 1140 [select, 3 minutes]:
github.com/cilium/stream.ToTruncatingChannel[...].func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sinks.go:161 +0x13f
created by github.com/cilium/stream.ToTruncatingChannel[...] in goroutine 357
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sinks.go:154 +0xb9

goroutine 1139 [chan receive, 3 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 357
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1136 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/nodediscovery.(*NodeDiscovery).StartDiscovery.func3()
	/go/src/github.com/cilium/cilium/pkg/nodediscovery/nodediscovery.go:144 +0x112
created by github.com/cilium/cilium/pkg/nodediscovery.(*NodeDiscovery).StartDiscovery in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/nodediscovery/nodediscovery.go:142 +0x329

goroutine 1214 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003d41a20)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1475
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1804 [select, 2 minutes]:
reflect.rselect({0xc002bb3ee8, 0x4, 0x291f525?})
	/usr/local/go/src/runtime/select.go:616 +0x2ce
reflect.Select({0xc0012e9260?, 0x4, 0xc002bb3fb8?})
	/usr/local/go/src/reflect/value.go:2875 +0x5ca
github.com/cilium/cilium/pkg/common.MergeChannels[...].func1()
	/go/src/github.com/cilium/cilium/pkg/common/utils.go:89 +0x65
created by github.com/cilium/cilium/pkg/common.MergeChannels[...] in goroutine 357
	/go/src/github.com/cilium/cilium/pkg/common/utils.go:87 +0x1a9

goroutine 1155 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc0037c74a0)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 1156 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run.func1()
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:233 +0x6e
sync.(*Once).doSlow(0x0?, 0x0?)
	/usr/local/go/src/sync/once.go:78 +0xab
sync.(*Once).Do(...)
	/usr/local/go/src/sync/once.go:69
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run(0x0?)
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:231 +0x36
created by github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).Run in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:227 +0x6a

goroutine 1157 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x50880e0, {0x50a7f78, 0xc000cc2960}, 0x0, {0x50b22c0?, 0xc002c692c0}, {{{0xc001b10ac0, 0x1, 0x1}}, 0xc00053e1b0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1158 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x50880a0, {0x50a7f78, 0xc000cc2cf0}, 0x0, {0x50b22c0?, 0xc002c692c0}, {{{0xc001b10ac0, 0x1, 0x1}}, 0xc00053e1b0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1159 [select, 3 minutes]:
github.com/cilium/hive/job.(*jobTimer).start(0xc002c69560, {0x50a7f78, 0xc000cc2ea0}, 0x0?, {0x50b22c0, 0xc002c692c0}, {{{0xc001b10ac0, 0x1, 0x1}}, 0xc00053e1b0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 600 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 1276
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 1161 [select]:
github.com/cilium/hive/job.(*jobTimer).start(0xc002c69920, {0x50a7f78, 0xc000cc3680}, 0x0?, {0x50b22c0, 0xc002c698c0}, {{{0xc001493200, 0x1, 0x1}}, 0xc000cb89c0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 616 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/shell/server.shell.listener.func1()
	/go/src/github.com/cilium/cilium/pkg/shell/server/shell_server.go:76 +0x3e
created by github.com/cilium/cilium/pkg/shell/server.shell.listener in goroutine 1265
	/go/src/github.com/cilium/cilium/pkg/shell/server/shell_server.go:75 +0x2d6

goroutine 1163 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/status.newStatusCollector.func1({0x50a7f78, 0xc000cc3aa0}, {0x7?, 0xfffffffffffffffc?})
	/go/src/github.com/cilium/cilium/pkg/status/cell.go:154 +0x32e
github.com/cilium/hive/job.(*jobOneShot).start(0xc002c69ec0, {0x50a7f78, 0xc000cc3aa0}, 0x0?, {0x50b22c0, 0xc002c69260}, {{{0xc001e95e80, 0x1, 0x1}}, 0xc00022cdf0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1164 [IO wait]:
internal/poll.runtime_pollWait(0x7f460a9921b8, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc0038b4680?, 0x20?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc0038b4680)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc0038b4680)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0xc0027cbdf8?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).Accept(0xc000cc3c50)
	/usr/local/go/src/net/unixsock.go:260 +0x30
net/http.(*Server).Serve(0xc002577500, {0x5087d40, 0xc000cc3c50})
	/usr/local/go/src/net/http/server.go:3424 +0x30c
github.com/cilium/cilium/api/v1/server.(*Server).Start.func1({0x5087d40?, 0xc000cc3c50?})
	/go/src/github.com/cilium/cilium/api/v1/server/server.go:466 +0x72
created by github.com/cilium/cilium/api/v1/server.(*Server).Start in goroutine 1
	/go/src/github.com/cilium/cilium/api/v1/server/server.go:464 +0x4a5

goroutine 1165 [select, 3 minutes]:
github.com/cilium/cilium/pkg/metrics.(*sampler).collectLoop(0xc000d94690, {0x50a7f78, 0xc000cce000}, {0x50b22c0, 0xc002f819e0})
	/go/src/github.com/cilium/cilium/pkg/metrics/sampler.go:305 +0x117
github.com/cilium/hive/job.(*jobOneShot).start(0xc0016c3ec0, {0x50a7f78, 0xc000cce000}, 0x0?, {0x50b22c0, 0xc0016c3e60}, {{{0xc000cc1cc0, 0x1, 0x1}}, 0xc0011391f0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1166 [select, 3 minutes]:
github.com/cilium/hive/job.(*jobTimer).start(0xc0016c3f20, {0x50a7f78, 0xc000cce150}, 0x0?, {0x50b22c0, 0xc0016c3e60}, {{{0xc000cc1cc0, 0x1, 0x1}}, 0xc0011391f0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1167 [chan receive, 3 minutes]:
github.com/cilium/workerpool.(*WorkerPool).run(0xc00087cc30, {0x50a7fb0, 0xc00087cc80})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/workerpool/workerpool.go:173 +0x6e
created by github.com/cilium/workerpool.NewWithContext in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/workerpool/workerpool.go:68 +0x13b

goroutine 1086 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1087 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1088 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1169 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1170 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1171 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1172 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1173 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1174 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1175 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1176 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1177 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1178 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1179 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 607 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0xc003b12000?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1273
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 608 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc002cfdd10, 0x8)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dc8c0, {0x50a7fb0, 0xc003e91630}, 0xc003eaa4d0, {0x50c1630, 0xc0010521a0})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1273
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 1180 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 611 [select]:
github.com/cilium/cilium/pkg/fswatcher.(*Watcher).loop(0xc000a48190)
	/go/src/github.com/cilium/cilium/pkg/fswatcher/fswatcher.go:165 +0x9f
created by github.com/cilium/cilium/pkg/fswatcher.New in goroutine 1160
	/go/src/github.com/cilium/cilium/pkg/fswatcher/fswatcher.go:151 +0x34c

goroutine 1181 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1182 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1183 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1184 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1185 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1163
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1498 [select, 2 minutes]:
github.com/cilium/cilium/pkg/endpoint.(*Endpoint).startRegenerationFailureHandler.func1({0x50a7fb0, 0xc003f17540})
	/go/src/github.com/cilium/cilium/pkg/endpoint/policy.go:945 +0x90
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002f9e580)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:333 +0x1c7
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 623
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1370 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc003dacc00, 0xc003dc8780, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc003dacc00, 0x5cf8c4?, 0xc0004e4300?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1151
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1509 [select, 2 minutes]:
google.golang.org/grpc/internal/transport.(*controlBuffer).get(0xc001e8fbc0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/controlbuf.go:425 +0x108
google.golang.org/grpc/internal/transport.(*loopyWriter).run(0xc003283880)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/controlbuf.go:590 +0x78
google.golang.org/grpc/internal/transport.NewServerTransport.func3()
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:341 +0xde
created by google.golang.org/grpc/internal/transport.NewServerTransport in goroutine 1508
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:339 +0x18bb

goroutine 1210 [chan receive, 2 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0xf5
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1209
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1331 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc003e34770}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc0024fe640}, {0x50b0080, 0xc0000b3d20}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc003e34770?}, {0xc001f05b70?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc0024fe640?}, {0x50b0080?, 0xc0000b3d20?}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc002b650e0, {0x50a9338, 0xc003e34770}, {0x0, 0x0}, 0xc0005cb260)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc002b650e0, {0x50a9338, 0xc003e34770}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc002b650e0, {0x50a9338, 0xc003e34770})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x429cea0?, 0x1?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc003e34770?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc003e34770}, 0xc003e3dec8, {0x504c4a0, 0xc003e328c0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc003e328c0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc002b650e0, {0x50a9338, 0xc003e34770})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*Reflector).Run(0xc0000f0f30?, 0xc0000f0fd0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:349 +0x1d
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9.5()
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:485 +0x3b
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9 in goroutine 1245
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:484 +0x21f

goroutine 1330 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc003dac948, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc003dac930, {0xc000c3d201, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x7b?}, {0xc000c3d201?, 0x419514?, 0xc003f23c58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc0035fa780)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc0035fa780)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc0035fa780, {0x3fd8fe0, 0xc004b282e8})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc000ce3b00, {0xc0035ef000, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc00098c9b0, 0x0, {0x5079208, 0xc0020ec480})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc0000b3420)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc00098ca50)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1051
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1299 [chan receive, 3 minutes]:
github.com/cilium/cilium/daemon/healthz.registerAgentHealthHTTPService.func1.1()
	/go/src/github.com/cilium/cilium/daemon/healthz/agenthealth.go:85 +0x2c
created by github.com/cilium/cilium/daemon/healthz.registerAgentHealthHTTPService.func1 in goroutine 1266
	/go/src/github.com/cilium/cilium/daemon/healthz/agenthealth.go:84 +0x42b

goroutine 604 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1273
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 603 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc002cfdbd0, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x1?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dcdc0, {0x50a7fb0, 0xc003e91590}, 0xc003eaa380, {0x50c1950, 0xc002600420})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1273
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 1206 [select]:
golang.org/x/sync/semaphore.(*Weighted).Acquire(0xc003d616d0, {0x50a7f78, 0xc000df7110}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/sync/semaphore/semaphore.go:74 +0x339
github.com/cilium/cilium/pkg/rate.(*Limiter).WaitN(0xc001291540, {0x50a7f78, 0xc000df7110}, 0x1)
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:104 +0x6a
github.com/cilium/cilium/pkg/rate.(*Limiter).Wait(...)
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:91
github.com/cilium/cilium/pkg/hive/health.publishJob({0x50a7f78, 0xc000df7110}, {{{}}, 0xc0013c6798, {0x51187b8, 0xc0014aea00}, {0x5070750, 0xc002ca2870}, 0xc000e64a80}, 0xc002cfce80)
	/go/src/github.com/cilium/cilium/pkg/hive/health/metrics.go:126 +0x2ee
github.com/cilium/cilium/pkg/hive/health.metricPublisher.func2({0x50a7f78?, 0xc000df7110?}, {0x7?, 0xfffffffffffffffc?})
	/go/src/github.com/cilium/cilium/pkg/hive/health/metrics.go:79 +0x39
github.com/cilium/hive/job.(*jobOneShot).start(0xc001b81080, {0x50a7f78, 0xc000df7110}, 0x3c057a0?, {0x50b22c0, 0xc001b81020}, {{{0xc002cf5ca0, 0x1, 0x1}}, 0xc000fb2e80, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 602 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0xc000c106a0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1273
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 601 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1273
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 606 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1273
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 605 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...].func1.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:108 +0x12a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...].func1 in goroutine 1273
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:105 +0xca

goroutine 1394 [select, 2 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...].func1.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:108 +0x12a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...].func1 in goroutine 1273
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:105 +0xca

goroutine 1393 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1273
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1245 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run(0x51221a0, {0x50a7f78, 0xc000cd8ba0}, {0x50b22c0, 0xc003f08de0})
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:434 +0x713
github.com/cilium/hive/job.(*jobOneShot).start(0xc0021ff1a0, {0x50a7f78, 0xc000cd8ba0}, 0xc003b12230?, {0x50b22c0, 0xc0021ff020}, {{{0xc0026a6680, 0x1, 0x1}}, 0xc0026a5790, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1298 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 1281
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 1297 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 1272
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 599 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc003dacc48, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc003dacc30, {0xc00159f808, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc00159f808?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f460aa311c0, 0xc003dacc00}, {0xc00159f808, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc0014b6f30, {0xc002fbe800, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc002b91e00, 0x0, {0x5079208, 0xc0020e2380})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc002d3cf60)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc002b91e50)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1151
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1250 [IO wait, 3 minutes]:
internal/poll.runtime_pollWait(0x7f460a992730, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc0035c2800?, 0xeb8625?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc0035c2800)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc0035c2800)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0xc002eab788?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).Accept(0xc000c916b0)
	/usr/local/go/src/net/unixsock.go:260 +0x30
google.golang.org/grpc.(*Server).Serve(0xc000e0ac00, {0x5087d40, 0xc000c916b0})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:915 +0x473
github.com/cilium/cilium/pkg/hubble/server.(*Server).Serve(...)
	/go/src/github.com/cilium/cilium/pkg/hubble/server/server.go:98
github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch.func4()
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:369 +0x4a
created by github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch in goroutine 1162
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:368 +0x1ac9

goroutine 1243 [select]:
github.com/cilium/hive/job.(*jobTimer).start(0xc003b01140, {0x50a7f78, 0xc000cd8900}, 0x0?, {0x50b22c0, 0xc0021fee40}, {{{0xc002680880, 0x1, 0x1}}, 0xc0025fedf0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*group).add.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:263 +0x172

goroutine 1332 [select]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x127
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10 in goroutine 1245
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 1265 [IO wait, 3 minutes]:
internal/poll.runtime_pollWait(0x7f460a991d58, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc003a90c80?, 0x1?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc003a90c80)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc003a90c80)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0x1?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).Accept(0xc0013b37d0)
	/usr/local/go/src/net/unixsock.go:260 +0x30
github.com/cilium/cilium/pkg/shell/server.shell.listener({{0x5070750?, 0xc00248b170?}, 0xc000f14990?, 0xc000da0330?}, {0x50a7f78, 0xc000ccf080}, {0x50b22c0, 0xc002d1f3e0})
	/go/src/github.com/cilium/cilium/pkg/shell/server/shell_server.go:85 +0x3dc
github.com/cilium/hive/job.(*jobOneShot).start(0xc001ac9500, {0x50a7f78, 0xc000ccf080}, 0x0?, {0x50b22c0, 0xc001ac8b40}, {{{0xc000ccbf00, 0x1, 0x1}}, 0xc000f14990, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1266 [IO wait]:
internal/poll.runtime_pollWait(0x7f460a991f88, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc003c0d980?, 0x900000036?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc003c0d980)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc003c0d980)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*TCPListener).accept(0xc000dea580)
	/usr/local/go/src/net/tcpsock_posix.go:159 +0x1b
net.(*TCPListener).Accept(0xc000dea580)
	/usr/local/go/src/net/tcpsock.go:380 +0x30
net/http.(*Server).Serve(0xc003c2e100, {0x5089f90, 0xc000dea580})
	/usr/local/go/src/net/http/server.go:3424 +0x30c
github.com/cilium/cilium/daemon/healthz.registerAgentHealthHTTPService.func1({0x50a7f78, 0xc000ccf2f0}, {0x7?, 0xfffffffffffffffc?})
	/go/src/github.com/cilium/cilium/daemon/healthz/agenthealth.go:90 +0x4ea
github.com/cilium/hive/job.(*jobOneShot).start(0xc001ac96e0, {0x50a7f78, 0xc000ccf2f0}, 0x0?, {0x50b22c0, 0xc001ac9620}, {{{0xc000ddcdc0, 0x1, 0x1}}, 0xc000f7ade0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1267 [select, 3 minutes]:
github.com/cilium/cilium/pkg/endpointmanager.(*namespaceUpdater).run(0xc00121ed80, {0x50a7f78, 0xc000ccf830}, {0xc003c19d78?, 0x4f1373?})
	/go/src/github.com/cilium/cilium/pkg/endpointmanager/namespace_updater.go:62 +0x133
github.com/cilium/hive/job.(*jobOneShot).start(0xc001ac9c80, {0x50a7f78, 0xc000ccf830}, 0x0?, {0x50b22c0, 0xc0016c29c0}, {{{0xc000f608e0, 0x1, 0x1}}, 0xc001138c30, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1486 [select, 2 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).reconcileLoop(0x50f4620, {0x50a7f78, 0xc0010a60c0}, {0x50b22c0, 0xc00437aba0})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:64 +0x3a6
github.com/cilium/hive/job.(*jobOneShot).start(0xc001ac8360, {0x50a7f78, 0xc0010a60c0}, 0x8388740?, {0x50b22c0, 0xc001ac8300}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1168
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1760 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/health/server.(*Server).Serve(0xc001f8ed88)
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:394 +0xdc
github.com/cilium/cilium/pkg/health.(*CiliumHealth).runServer.func1()
	/go/src/github.com/cilium/cilium/pkg/health/health_connectivity_node.go:95 +0x6b
created by github.com/cilium/cilium/pkg/health.(*CiliumHealth).runServer in goroutine 622
	/go/src/github.com/cilium/cilium/pkg/health/health_connectivity_node.go:93 +0x168

goroutine 1270 [select]:
github.com/cilium/hive/job.(*jobTimer).start(0xc001dea2a0, {0x50a7f78, 0xc000ccfec0}, 0x0?, {0x50b22c0, 0xc001dea1e0}, {{{0xc001108dc0, 0x1, 0x1}}, 0xc001002bc0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1490 [syscall, 2 minutes]:
syscall.Syscall6(0xf7, 0x3, 0x59, 0xc002708dc0, 0x4, 0xc003bfb8c0, 0x0)
	/usr/local/go/src/syscall/syscall_linux.go:95 +0x39
internal/syscall/unix.Waitid(0x49ceae1?, 0x16?, 0x50b22c0?, 0xc0020f6a20?, 0x4be5d38?)
	/usr/local/go/src/internal/syscall/unix/waitid_linux.go:18 +0x39
os.(*Process).pidfdWait.func1(...)
	/usr/local/go/src/os/pidfd_linux.go:106
os.ignoringEINTR(...)
	/usr/local/go/src/os/file_posix.go:251
os.(*Process).pidfdWait(0x6f446c616e726574?)
	/usr/local/go/src/os/pidfd_linux.go:105 +0x209
os.(*Process).wait(0xc016e6f69747069?)
	/usr/local/go/src/os/exec_unix.go:27 +0x25
os.(*Process).Wait(...)
	/usr/local/go/src/os/exec.go:358
os/exec.(*Cmd).Wait(0xc001972600)
	/usr/local/go/src/os/exec/exec.go:922 +0x45
github.com/cilium/cilium/pkg/launcher.(*Launcher).Run.func1()
	/go/src/github.com/cilium/cilium/pkg/launcher/launcher.go:48 +0x3e
created by github.com/cilium/cilium/pkg/launcher.(*Launcher).Run in goroutine 1489
	/go/src/github.com/cilium/cilium/pkg/launcher/launcher.go:47 +0x3ab

goroutine 614 [select, 3 minutes]:
github.com/cilium/cilium/pkg/crypto/certloader.(*Watcher).Watch.func2()
	/go/src/github.com/cilium/cilium/pkg/crypto/certloader/watcher.go:140 +0x17c
created by github.com/cilium/cilium/pkg/crypto/certloader.(*Watcher).Watch in goroutine 612
	/go/src/github.com/cilium/cilium/pkg/crypto/certloader/watcher.go:137 +0x205

goroutine 1272 [select, 3 minutes]:
github.com/cilium/cilium/pkg/loadbalancer/writer.(*nodePortAddrReconciler).nodePortAddressReconcilerLoop(0xc0012d5ac0, {0x50a7f78, 0xc000ce0540}, {0xc003c1bd78?, 0x4f1373?})
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/writer/node_addr_reconciler.go:83 +0x14e
github.com/cilium/hive/job.(*jobOneShot).start(0xc001dea5a0, {0x50a7f78, 0xc000ce0540}, 0x0?, {0x50b22c0, 0xc001dea540}, {{{0xc001294660, 0x1, 0x1}}, 0xc0016baa20, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1273 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/loadbalancer/reflectors.runServiceEndpointsReflector({_, _}, {_, _}, {{{}}, 0xc001b1b968, 0xc001812e90, {0x50a8268, 0xc000968a40}, {0x5070750, ...}, ...}, ...)
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/reflectors/k8s.go:385 +0x645
github.com/cilium/cilium/pkg/loadbalancer/reflectors.RegisterK8sReflector.func1({0x50a7f78?, 0xc000ce0840?}, {0x50b22c0?, 0xc002d1f5c0?})
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/reflectors/k8s.go:134 +0x69
github.com/cilium/hive/job.(*jobOneShot).start(0xc001deac00, {0x50a7f78, 0xc000ce0840}, 0x0?, {0x50b22c0, 0xc001dea720}, {{{0xc000968da0, 0x1, 0x1}}, 0xc001812e90, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1274 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/loadbalancer/reflectors.runPodReflector({_, _}, {_, _}, {{{}}, 0xc001b1b968, 0xc001812e90, {0x50a8268, 0xc000968a40}, {0x5070750, ...}, ...}, ...)
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/reflectors/k8s.go:223 +0x4da
github.com/cilium/cilium/pkg/loadbalancer/reflectors.RegisterK8sReflector.func2({0x50a7f78?, 0xc000ce0990?}, {0x50b22c0?, 0xc002d1f560?})
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/reflectors/k8s.go:137 +0x65
github.com/cilium/hive/job.(*jobOneShot).start(0xc001deac60, {0x50a7f78, 0xc000ce0990}, 0x0?, {0x50b22c0, 0xc001dea720}, {{{0xc000968da0, 0x1, 0x1}}, 0xc001812e90, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1275 [select, 3 minutes]:
github.com/cilium/hive/job.(*jobTimer).start(0xc001deafc0, {0x50a7f78, 0xc000ce0e70}, 0x0?, {0x50b22c0, 0xc001deaf60}, {{{0xc001041480, 0x1, 0x1}}, 0xc000f3c6b0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1276 [select, 2 minutes]:
github.com/cilium/cilium/pkg/loadbalancer/reconciler.socketTerminationLoop({{{}}, {0x5070750, 0xc0024bb200}, 0xc001a000f0, {0x5118218, 0xc0029f8b80}, 0xc001859da0, {{0x2faf080, 0x2faf080, 0x10000, ...}, ...}, ...}, ...)
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/reconciler/termination.go:159 +0x3b7
github.com/cilium/cilium/pkg/loadbalancer/reconciler.registerSocketTermination.func1({0x50a7f78?, 0xc000ce11a0?}, {0x50b22c0?, 0xc003aac120?})
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/reconciler/termination.go:112 +0x7b
github.com/cilium/hive/job.(*jobOneShot).start(0xc001deb320, {0x50a7f78, 0xc000ce11a0}, 0x0?, {0x50b22c0, 0xc001deb200}, {{{0xc00142cf60, 0x1, 0x1}}, 0xc001859da0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1277 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run(0x5122320, {0x50a7f78, 0xc000ce1470}, {0x50b22c0, 0xc003654d20})
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:434 +0x713
github.com/cilium/hive/job.(*jobOneShot).start(0xc001deb560, {0x50a7f78, 0xc000ce1470}, 0x0?, {0x50b22c0, 0xc001deb440}, {{{0xc00158d300, 0x1, 0x1}}, 0xc000f3cde0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1278 [select]:
reflect.rselect({0xc0035cf900, 0x2, 0xc0035cf878?})
	/usr/local/go/src/runtime/select.go:616 +0x2ce
reflect.Select({0xc00350fab0?, 0x2, 0xc0035cfae0?})
	/usr/local/go/src/reflect/value.go:2875 +0x5ca
github.com/cilium/statedb.(*WatchSet).Wait(0xc0012d3e90, {0x50a7f78, 0xc000ce15f0}, 0xc0012d3ef0?)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/watchset.go:114 +0x648
github.com/cilium/cilium/pkg/loadbalancer/redirectpolicy.(*lrpController).run(0xc0024bb440, {0x50a7f78, 0xc000ce15f0}, {0xc0035cfd78?, 0x4f1373?})
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/redirectpolicy/controller.go:185 +0x825
github.com/cilium/hive/job.(*jobOneShot).start(0xc001deb920, {0x50a7f78, 0xc000ce15f0}, 0x0?, {0x50b22c0, 0xc001deb440}, {{{0xc00158d300, 0x1, 0x1}}, 0xc000f3cde0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1279 [select, 2 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).reconcileLoop(0x50f4920, {0x50a7f78, 0xc000ce19e0}, {0x50b22c0, 0xc0035f6f00})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:64 +0x3a6
github.com/cilium/hive/job.(*jobOneShot).start(0xc001deb9e0, {0x50a7f78, 0xc000ce19e0}, 0x0?, {0x50b22c0, 0xc001deb440}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1280 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).refreshLoop(0x50f4920, {0x50a7f78, 0xc000ce1c50}, {0x50b22c0, 0xc0014a5320})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:134 +0x1b7
github.com/cilium/hive/job.(*jobOneShot).start(0xc001deba40, {0x50a7f78, 0xc000ce1c50}, 0x0?, {0x50b22c0, 0xc001deb440}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1281 [select, 2 minutes]:
github.com/cilium/cilium/pkg/loadbalancer/healthserver.(*healthServer).controlLoop(0xc000a25a00, {0x50a7f78, 0xc000ce1ef0}, {0x50b22c0, 0xc003654d80})
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/healthserver/healthserver.go:239 +0x4f8
github.com/cilium/hive/job.(*jobOneShot).start(0xc001debc80, {0x50a7f78, 0xc000ce1ef0}, 0x0?, {0x50b22c0, 0xc001debc20}, {{{0xc0016be1e0, 0x1, 0x1}}, 0xc001b54f00, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1282 [select, 2 minutes]:
github.com/cilium/hive/job.(*jobTimer).start(0xc001debe60, {0x50a7f78, 0xc000ce4300}, 0x0?, {0x50b22c0, 0xc001debe00}, {{{0xc0017ac040, 0x1, 0x1}}, 0xc0011387c0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1436 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run.func1()
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:233 +0x6e
sync.(*Once).doSlow(0xc001d9bef0?, 0x8?)
	/usr/local/go/src/sync/once.go:78 +0xab
sync.(*Once).Do(...)
	/usr/local/go/src/sync/once.go:69
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run(0x511cde0?)
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:231 +0x36
created by github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).Run in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:227 +0x6a

goroutine 1284 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x5088f60, {0x50a7f78, 0xc000ce4720}, 0x0, {0x50b22c0?, 0xc001debe00}, {{{0xc0017ac5e0, 0x1, 0x1}}, 0xc0011387c0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1285 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x5088940, {0x50a7f78, 0xc000ce4ae0}, 0x0, {0x50b22c0?, 0xc0021fe300}, {{{0xc001916f20, 0x1, 0x1}}, 0xc00252c7f0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1286 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).reconcileLoop(0x50f4280, {0x50a7f78, 0xc000ce4d80}, {0x50b22c0, 0xc003aac300})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:64 +0x3a6
github.com/cilium/hive/job.(*jobOneShot).start(0xc0021fe540, {0x50a7f78, 0xc000ce4d80}, 0x0?, {0x50b22c0, 0xc0021fe300}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1287 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).refreshLoop(0x50f4280, {0x50a7f78, 0xc000ce4f30}, {0x50b22c0, 0xc003aac240})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:134 +0x1b7
github.com/cilium/hive/job.(*jobOneShot).start(0xc0021fe5a0, {0x50a7f78, 0xc000ce4f30}, 0x0?, {0x50b22c0, 0xc0021fe300}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1289 [select, 2 minutes]:
github.com/cilium/cilium/pkg/policy/k8s.(*policyWatcher).watchResources.func2()
	/go/src/github.com/cilium/cilium/pkg/policy/k8s/watcher.go:154 +0x48c
created by github.com/cilium/cilium/pkg/policy/k8s.(*policyWatcher).watchResources in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/policy/k8s/watcher.go:120 +0x1c6

goroutine 1290 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded(0x511d200)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:313 +0x85
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:300 +0x88

goroutine 1369 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc002b64b40, {0x50a7fb0, 0xc002433950}, 0xc0005e93b0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1151
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1251 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch.func5()
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:377 +0x35
created by github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch in goroutine 1162
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:376 +0x1b47

goroutine 1252 [IO wait, 3 minutes]:
internal/poll.runtime_pollWait(0x7f460ad651d8, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc0030e8e00?, 0x20?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc0030e8e00)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc0030e8e00)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*TCPListener).accept(0xc000971b40)
	/usr/local/go/src/net/tcpsock_posix.go:159 +0x1b
net.(*TCPListener).Accept(0xc000971b40)
	/usr/local/go/src/net/tcpsock.go:380 +0x30
google.golang.org/grpc.(*Server).Serve(0xc002754600, {0x5089f90, 0xc000971b40})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:915 +0x473
github.com/cilium/cilium/pkg/hubble/server.(*Server).Serve(...)
	/go/src/github.com/cilium/cilium/pkg/hubble/server/server.go:98
github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch.func6()
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:422 +0x4a
created by github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch in goroutine 1162
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:421 +0x21f9

goroutine 1253 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch.func7()
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:432 +0x2c
created by github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch in goroutine 1162
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:431 +0x225f

goroutine 1361 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 1348
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 1362 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002d51490}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc0024fe1e0}, {0x7f460aa312c0, 0xc00311aa80}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002d51490?}, {0xc000eb2e10?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc0024fe1e0?}, {0x7f460aa312c0?, 0xc00311aa80?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc00263d860, {0x50a9338, 0xc002d51490}, {0x0, 0x0}, 0xc0005e96c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc00263d860, {0x50a9338, 0xc002d51490}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc00263d860, {0x50a9338, 0xc002d51490})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x20?, 0xc002c6cdf8?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002d51490?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002d51490}, 0xc003db3ea8, {0x504c4a0, 0xc002432fa0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc002432fa0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc00263d860, {0x50a9338, 0xc002d51490})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1348
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1373 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1362
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1375 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc003dacf00, 0xc003dc8f00, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc003dacf00, 0x5cf8c4?, 0xc0004e4300?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1362
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1293 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc00263d3b0, {0x50a7fb0, 0xc0024fe0f0}, 0xc0005ac380)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1357
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1294 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc002f1d380, 0xc0038c63c0, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc002f1d380, 0x50b22c0?, 0xc001ac8b40?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1357
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1395 [select]:
github.com/cilium/cilium/pkg/loadbalancer/reflectors.runServiceEndpointsReflector.Buffer[...].func9.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x14e
created by github.com/cilium/cilium/pkg/loadbalancer/reflectors.runServiceEndpointsReflector.Buffer[...].func9 in goroutine 1273
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 1295 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc003dacf48, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc003dacf30, {0xc001443201, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x7c?}, {0xc001443201?, 0x419514?, 0xc003c21c58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc0038c6640)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc0038c6640)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc0038c6640, {0x3fd8fe0, 0xc004a0aa80})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc000daf830, {0xc0026b1c00, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc0024fe190, 0x0, {0x5079208, 0xc00209cc80})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc000862520)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc0024fe1e0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1362
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1396 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc003eaacb0}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc0024fe4b0}, {0x50b0080, 0xc002d3d520}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc003eaacb0?}, {0xc000661c88?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc0024fe4b0?}, {0x50b0080?, 0xc002d3d520?}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc0006863c0, {0x50a9338, 0xc003eaacb0}, {0x0, 0x0}, 0xc0005b0930)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc0006863c0, {0x50a9338, 0xc003eaacb0}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc0006863c0, {0x50a9338, 0xc003eaacb0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x300000000000000?, 0x0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc003eaacb0?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc003eaacb0}, 0xc003ea5ec8, {0x504c4a0, 0xc003e91bd0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc003e91bd0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc0006863c0, {0x50a9338, 0xc003eaacb0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*Reflector).Run(0xc000ccf830?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:349 +0x1d
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9.5()
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:485 +0x3b
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9 in goroutine 1277
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:484 +0x21f

goroutine 1397 [select]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x127
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10 in goroutine 1277
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 1428 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1396
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1205 [select, 2 minutes]:
github.com/cilium/cilium/pkg/mtu.(*endpointUpdater).Updater(0xc0027a7ef0, {0x50a7f78, 0xc000df67b0}, {0x50b22c0, 0xc0014a5680})
	/go/src/github.com/cilium/cilium/pkg/mtu/endpoint_updater.go:128 +0x1fb
github.com/cilium/hive/job.(*jobOneShot).start(0xc001b807e0, {0x50a7f78, 0xc000df67b0}, 0xc003b12230?, {0x50b22c0, 0xc001b81b60}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1296 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1284
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 1409 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc000314680?}, 0xc001ac8b40?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1284
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1410 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc001290890, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dbdc0, {0x50a7fb0, 0xc0024fe280}, 0xc003d2c460, {0x50bfe70, 0xc000df2060})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1284
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 1411 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1284
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1412 [select, 2 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...].func1.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:108 +0x12a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...].func1 in goroutine 1284
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:105 +0xca

goroutine 1400 [chan receive, 3 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1285
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1401 [select, 2 minutes]:
github.com/cilium/statedb.(*observable[...]).Observe.func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/observable.go:45 +0x2ab
created by github.com/cilium/statedb.(*observable[...]).Observe in goroutine 1274
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/observable.go:27 +0xbd

goroutine 1402 [select]:
github.com/cilium/cilium/pkg/loadbalancer/reflectors.runPodReflector.Buffer[...].func3.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x139
created by github.com/cilium/cilium/pkg/loadbalancer/reflectors.runPodReflector.Buffer[...].func3 in goroutine 1274
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 1404 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc003160d20, {0x50a7fb0, 0xc003ecb400}, 0xc000650620)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1425
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1405 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc003ee0000, 0xc000ae5b80, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc003ee0000, 0x4a33638?, 0xc001c6dd40?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1425
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1414 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc0034fedc8, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc0034fedb0, {0xc0011cf201, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x86?}, {0xc0011cf201?, 0x419514?, 0xc00235fc58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc0038c6c80)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc0038c6c80)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc0038c6c80, {0x3fd8fe0, 0xc004b28a50})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc000dc02d0, {0xc003d48400, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc0024fe460, 0x0, {0x5079208, 0xc0020ed0c0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc0008628c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc0024fe4b0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1396
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1246 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).reconcileLoop(0x50f4340, {0x50a7f78, 0xc000cd8f60}, {0x50b22c0, 0xc0036551a0})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:64 +0x3a6
github.com/cilium/hive/job.(*jobOneShot).start(0xc0021ff440, {0x50a7f78, 0xc000cd8f60}, 0xc003b124d0?, {0x50b22c0, 0xc0021ff2c0}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1247 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).refreshLoop(0x50f4340, {0x50a7f78, 0xc000cd90b0}, {0x50b22c0, 0xc003ebca80})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:134 +0x1b7
github.com/cilium/hive/job.(*jobOneShot).start(0xc0021ff4a0, {0x50a7f78, 0xc000cd90b0}, 0x0?, {0x50b22c0, 0xc0021ff2c0}, {{{0x0, 0x0, 0x0}}, 0xc000f8bac0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1248 [select, 2 minutes]:
github.com/cilium/cilium/pkg/driftchecker.checker.watchTableChanges({0xc0014c83f0, 0xc001a01c98, {0x5117378, 0xc00253c780}, 0xc002700e50, {{0x50e2d30, 0xc00164a880}}, 0xc000ef0780}, {0x50a7f78, 0xc000cd93e0})
	/go/src/github.com/cilium/cilium/pkg/driftchecker/checker.go:81 +0x213
github.com/cilium/cilium/pkg/driftchecker.Register.func1({0x50a7f78?, 0xc000cd93e0?}, {0x7?, 0xfffffffffffffffc?})
	/go/src/github.com/cilium/cilium/pkg/driftchecker/checker.go:61 +0x4c
github.com/cilium/hive/job.(*jobOneShot).start(0xc0021ff620, {0x50a7f78, 0xc000cd93e0}, 0xc003b12380?, {0x50b22c0, 0xc0021ff5c0}, {{{0xc0026ff160, 0x1, 0x1}}, 0xc002700e50, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1203 [select]:
github.com/cilium/hive/job.(*jobTimer).start(0xc0021ffe60, {0x50a7f78, 0xc000dbbce0}, 0xc002df4fd0?, {0x50b22c0, 0xc0021ffe00}, {{{0x0, 0x0, 0x0}}, 0xc002a1a770, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1442 [select]:
github.com/cilium/hive/job.(*jobTimer).start(0xc0021ffb60, {0x50a7f78, 0xc000cd9950}, 0xc0030d57d0?, {0x50b22c0, 0xc0021ffb00}, {{{0xc0027ac380, 0x1, 0x1}}, 0xc0027a32c0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1443 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc001067ce0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1255 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc002b650e0, {0x50a7fb0, 0xc00365f130}, 0xc0005cb260)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1331
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1256 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc001e09980, 0xc003d34280, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc001e09980, 0xc000314680?, 0xc002d95110?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1331
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1415 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc001e099c8, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc001e099b0, {0xc00161c700, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc00161c700?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f460aa311c0, 0xc001e09980}, {0xc00161c700, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc000f3a390, {0xc003d48800, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc0024fe5f0, 0x0, {0x5079208, 0xc00209cec0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc000862c00)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc0024fe640)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1331
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1208 [syscall, 2 minutes]:
os/signal.signal_recv()
	/usr/local/go/src/runtime/sigqueue.go:152 +0x29
os/signal.loop()
	/usr/local/go/src/os/signal/signal_unix.go:23 +0x13
created by os/signal.Notify.func1.1 in goroutine 1
	/usr/local/go/src/os/signal/signal.go:152 +0x1f

goroutine 1416 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 1206
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 1440 [select]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003648b00)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 2350 [IO wait]:
internal/poll.runtime_pollWait(0x7f460a991a10, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc001f71880?, 0xc00215d000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc001f71880, {0xc00215d000, 0x1000, 0x1000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc001f71880, {0xc00215d000?, 0x4083f4?, 0x0?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc001bb0348, {0xc00215d000?, 0x4081ef?, 0xc003bb9b30?})
	/usr/local/go/src/net/net.go:194 +0x45
net/http.(*persistConn).Read(0xc001e96240, {0xc00215d000?, 0x8e59e5?, 0x50385a0?})
	/usr/local/go/src/net/http/transport.go:2122 +0x47
bufio.(*Reader).fill(0xc0023b23c0)
	/usr/local/go/src/bufio/bufio.go:113 +0x103
bufio.(*Reader).Peek(0xc0023b23c0, 0x1)
	/usr/local/go/src/bufio/bufio.go:152 +0x53
net/http.(*persistConn).readLoop(0xc001e96240)
	/usr/local/go/src/net/http/transport.go:2275 +0x172
created by net/http.(*Transport).dialConn in goroutine 2348
	/usr/local/go/src/net/http/transport.go:1944 +0x174f

goroutine 1458 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0036498c0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1474
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1459 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003649b80)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1474
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1460 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003de2000)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1473
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 620 [chan receive, 2 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1154
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1461 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003de2420)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1473
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 622 [sleep]:
time.Sleep(0x12a05f200)
	/usr/local/go/src/runtime/time.go:338 +0x165
github.com/cilium/cilium/pkg/time.Sleep(...)
	/go/src/github.com/cilium/cilium/pkg/time/time.go:90
github.com/cilium/cilium/pkg/health.(*CiliumHealth).runServer(0xc0012cedc0, 0xc0000b3b60?)
	/go/src/github.com/cilium/cilium/pkg/health/health_connectivity_node.go:128 +0x38a
created by github.com/cilium/cilium/pkg/health.(*ciliumHealthManager).launchCiliumNodeHealth in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/health/health_connectivity_node.go:69 +0x2e9

goroutine 623 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002debce0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 624 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0031aa2c0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1154
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1257 [select]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002d5c420)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1480
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1510 [select, 2 minutes]:
google.golang.org/grpc/internal/transport.(*http2Server).keepalive(0xc0029e6820)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:1210 +0x1ec
created by google.golang.org/grpc/internal/transport.NewServerTransport in goroutine 1508
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:362 +0x18fd

goroutine 1511 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f460aa34e88, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002b4d480?, 0xc0026c4000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc002b4d480, {0xc0026c4000, 0x8000, 0x8000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc002b4d480, {0xc0026c4000?, 0xc0031f8fc0?, 0x4111e0?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc000ecaa10, {0xc0026c4000?, 0xc003cfcbf8?, 0x10000000003?})
	/usr/local/go/src/net/net.go:194 +0x45
bufio.(*Reader).Read(0xc002b30c60, {0xc001e38ba0, 0x9, 0xc003cfcc18?})
	/usr/local/go/src/bufio/bufio.go:245 +0x197
io.ReadAtLeast({0x5038b80, 0xc002b30c60}, {0xc001e38ba0, 0x9, 0x9}, 0x9)
	/usr/local/go/src/io/io.go:335 +0x91
io.ReadFull(...)
	/usr/local/go/src/io/io.go:354
golang.org/x/net/http2.readFrameHeader({0xc001e38ba0, 0x9, 0x7e3ad80?}, {0x5038b80?, 0xc002b30c60?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/frame.go:242 +0x65
golang.org/x/net/http2.(*Framer).ReadFrame(0xc001e38b60)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/frame.go:506 +0x7d
google.golang.org/grpc/internal/transport.(*http2Server).HandleStreams(0xc0029e6820, {0x50a7f78, 0xc0012d8810}, 0xc0012d8840)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:677 +0x105
google.golang.org/grpc.(*Server).serveStreams(0xc000347200, {0x50a7d40?, 0x8388740?}, {0x50a9da0, 0xc0029e6820}, {0x50c6e80?, 0xc000ecaa10?})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1055 +0x396
google.golang.org/grpc.(*Server).handleRawConn.func1()
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:989 +0x56
created by google.golang.org/grpc.(*Server).handleRawConn in goroutine 1508
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:988 +0x1cb

goroutine 1513 [select, 2 minutes]:
google.golang.org/grpc/internal/transport.(*recvBufferReader).readMessageHeader(0xc00086d360, {0xc0012d8be0, 0x5, 0x5})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:176 +0x9e
google.golang.org/grpc/internal/transport.(*recvBufferReader).ReadMessageHeader(0xc00086d360, {0xc0012d8be0?, 0xc0029e6820?, 0xc002b30cc0?})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:145 +0x72
google.golang.org/grpc/internal/transport.(*transportReader).ReadMessageHeader(0xc0031a0700, {0xc0012d8be0?, 0xccefc7?, 0xc001d4da40?})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:417 +0x25
google.golang.org/grpc/internal/transport.(*Stream).ReadMessageHeader(0xc0013861b0, {0xc0012d8be0, 0x5, 0x5})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:360 +0x9e
google.golang.org/grpc.(*parser).recvMsg(0xc0012d8bd0, 0x400000)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/rpc_util.go:690 +0x3b
google.golang.org/grpc.recvAndDecompress(0xc0012d8bd0, {0x50394a0, 0xc002b30cc0}, {0x0, 0x0}, 0x400000, 0x0, {0x0, 0x0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/rpc_util.go:850 +0x97
google.golang.org/grpc.recv(0xc002f27e34?, {0x7f460a7a3e18, 0x8388740}, {0x50394a0?, 0xc002b30cc0?}, {0x0?, 0x0?}, {0x4734640, 0xc002e96780}, 0x400000, ...)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/rpc_util.go:933 +0xab
google.golang.org/grpc.(*serverStream).RecvMsg(0xc001e38c40, {0x4734640, 0xc002e96780})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/stream.go:1769 +0x192
github.com/envoyproxy/go-control-plane/envoy/service/listener/v3.(*listenerDiscoveryServiceStreamListenersServer).Recv(0xc000dbd330)
	/go/src/github.com/cilium/cilium/vendor/github.com/envoyproxy/go-control-plane/envoy/service/listener/v3/lds_grpc.pb.go:196 +0x46
github.com/cilium/cilium/pkg/envoy/xds.(*Server).HandleRequestStream.func1(0xc0031b7140?)
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:151 +0xda
created by github.com/cilium/cilium/pkg/envoy/xds.(*Server).HandleRequestStream in goroutine 1512
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:148 +0x24c

goroutine 1515 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc00317f450, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc002e8ff10?)
	/usr/local/go/src/sync/cond.go:71 +0x85
github.com/cilium/cilium/pkg/envoy/xds.(*ResourceWatcher).WatchResources(0xc00317f400, {0x50a7fb0, 0xc0027a78b0}, {0xc00319c500, 0x35}, 0x2, 0x2, {0xc001eb0545, 0x9}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/watcher.go:130 +0x790
created by github.com/cilium/cilium/pkg/envoy/xds.(*Server).processRequestStream in goroutine 1512
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:422 +0x17fd

goroutine 1499 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run.func1()
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:233 +0x6e
sync.(*Once).doSlow(0x0?, 0x1?)
	/usr/local/go/src/sync/once.go:78 +0xab
sync.(*Once).Do(...)
	/usr/local/go/src/sync/once.go:69
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run(0xc0021feae0?)
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:231 +0x36
created by github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).Run in goroutine 623
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:227 +0x6a

goroutine 1501 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002f9e9a0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 623
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1800 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc003148c80)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1407
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 1645 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002b7a420)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1433
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1771 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f460aa34a28, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002b2a400?, 0x900000036?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc002b2a400)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc002b2a400)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*TCPListener).accept(0xc0016ef180)
	/usr/local/go/src/net/tcpsock_posix.go:159 +0x1b
net.(*TCPListener).Accept(0xc0016ef180)
	/usr/local/go/src/net/tcpsock.go:380 +0x30
net/http.(*Server).Serve(0xc003b98500, {0x5089f90, 0xc0016ef180})
	/usr/local/go/src/net/http/server.go:3424 +0x30c
net/http.(*Server).ListenAndServe(0xc003b98500)
	/usr/local/go/src/net/http/server.go:3350 +0x71
github.com/cilium/cilium/pkg/health/probe/responder.(*Server).Serve.func1()
	/go/src/github.com/cilium/cilium/pkg/health/probe/responder/responder.go:50 +0x25
created by github.com/cilium/cilium/pkg/health/probe/responder.(*Server).Serve in goroutine 1809
	/go/src/github.com/cilium/cilium/pkg/health/probe/responder/responder.go:49 +0x51

goroutine 1644 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc0037c6320)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1433
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 1780 [select]:
golang.org/x/time/rate.(*Limiter).wait(0xc0046f54f0, {0x50a7d40, 0x8388740}, 0x1, {0x44ea60?, 0xc003185980?, 0x7e3ad80?}, 0x4be8680)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/time/rate/rate.go:286 +0x3f3
golang.org/x/time/rate.(*Limiter).WaitN(0xc0046f54f0, {0x50a7d40, 0x8388740}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/time/rate/rate.go:249 +0x50
golang.org/x/time/rate.(*Limiter).Wait(...)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/time/rate/rate.go:234
github.com/cilium/cilium/pkg/health/server.(*prober).runProbe(0xc00065aee0, 0xc0046d9590)
	/go/src/github.com/cilium/cilium/pkg/health/server/prober.go:422 +0x485
github.com/cilium/cilium/pkg/health/server.(*prober).RunLoop.func1()
	/go/src/github.com/cilium/cilium/pkg/health/server/prober.go:492 +0x6d
created by github.com/cilium/cilium/pkg/health/server.(*prober).RunLoop in goroutine 1810
	/go/src/github.com/cilium/cilium/pkg/health/server/prober.go:460 +0x4f

goroutine 1638 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc00317f1d0, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc002f85a00?)
	/usr/local/go/src/sync/cond.go:71 +0x85
github.com/cilium/cilium/pkg/envoy/xds.(*ResourceWatcher).WatchResources(0xc00317f180, {0x50a7fb0, 0xc003a7c550}, {0xc001758340, 0x33}, 0x2, 0x2, {0xc002d10c45, 0x9}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/watcher.go:130 +0x790
created by github.com/cilium/cilium/pkg/envoy/xds.(*Server).processRequestStream in goroutine 1636
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:422 +0x17fd

goroutine 1637 [select, 2 minutes]:
google.golang.org/grpc/internal/transport.(*recvBufferReader).readMessageHeader(0xc003a7c460, {0xc00255bd80, 0x5, 0x5})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:176 +0x9e
google.golang.org/grpc/internal/transport.(*recvBufferReader).ReadMessageHeader(0xc003a7c460, {0xc00255bd80?, 0xc0029e6820?, 0xc002b45b00?})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:145 +0x72
google.golang.org/grpc/internal/transport.(*transportReader).ReadMessageHeader(0xc0013a4fc0, {0xc00255bd80?, 0xccefc7?, 0xc0036bc780?})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:417 +0x25
google.golang.org/grpc/internal/transport.(*Stream).ReadMessageHeader(0xc001cedb90, {0xc00255bd80, 0x5, 0x5})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:360 +0x9e
google.golang.org/grpc.(*parser).recvMsg(0xc00255bd70, 0x400000)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/rpc_util.go:690 +0x3b
google.golang.org/grpc.recvAndDecompress(0xc00255bd70, {0x50394a0, 0xc002b45b00}, {0x0, 0x0}, 0x400000, 0x0, {0x0, 0x0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/rpc_util.go:850 +0x97
google.golang.org/grpc.recv(0xc0035cde34?, {0x7f460a7a3e18, 0x8388740}, {0x50394a0?, 0xc002b45b00?}, {0x0?, 0x0?}, {0x4734640, 0xc0010af360}, 0x400000, ...)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/rpc_util.go:933 +0xab
google.golang.org/grpc.(*serverStream).RecvMsg(0xc001e38fc0, {0x4734640, 0xc0010af360})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/stream.go:1769 +0x192
github.com/envoyproxy/go-control-plane/envoy/service/cluster/v3.(*clusterDiscoveryServiceStreamClustersServer).Recv(0xc002f858c0)
	/go/src/github.com/cilium/cilium/vendor/github.com/envoyproxy/go-control-plane/envoy/service/cluster/v3/cds_grpc.pb.go:170 +0x46
github.com/cilium/cilium/pkg/envoy/xds.(*Server).HandleRequestStream.func1(0xc002d492e0?)
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:151 +0xda
created by github.com/cilium/cilium/pkg/envoy/xds.(*Server).HandleRequestStream in goroutine 1636
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:148 +0x24c

goroutine 1636 [select, 2 minutes]:
reflect.rselect({0xc00301b0e0, 0x9, 0xc003a7c410?})
	/usr/local/go/src/runtime/select.go:616 +0x2ce
reflect.Select({0xc003a70400?, 0x9, 0x8388740?})
	/usr/local/go/src/reflect/value.go:2875 +0x5ca
github.com/cilium/cilium/pkg/envoy/xds.(*Server).processRequestStream(0xc0010b6d80, {0x50a7f78, 0xc00255bdd0}, 0xc002f858d0, {0x7f460a7a4128, 0xc002f858c0}, 0xc0035c7260, {0x4a683b4?, 0x33})
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:276 +0x8a5
github.com/cilium/cilium/pkg/envoy/xds.(*Server).HandleRequestStream(0xc0010b6d80, {0x50a7f78, 0xc00255bdd0}, {0x7f460a7a4128, 0xc002f858c0}, {0x4a683b4, 0x33})
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:184 +0x293
github.com/cilium/cilium/pkg/envoy.(*xdsGRPCServer).StreamClusters(0xc0010b6d80, {0x50c8660, 0xc002f858c0})
	/go/src/github.com/cilium/cilium/pkg/envoy/grpc.go:133 +0x6d
github.com/envoyproxy/go-control-plane/envoy/service/cluster/v3._ClusterDiscoveryService_StreamClusters_Handler({0x4826a60?, 0xc0010b6d80}, {0x50b9420, 0xc001e38fc0})
	/go/src/github.com/cilium/cilium/vendor/github.com/envoyproxy/go-control-plane/envoy/service/cluster/v3/cds_grpc.pb.go:151 +0xd8
google.golang.org/grpc.(*Server).processStreamingRPC(0xc000347200, {0x50a7f78, 0xc00255bd10}, 0xc002b45b00, 0xc0010b6f30, 0x7df0cc0, 0x0)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1721 +0x1252
google.golang.org/grpc.(*Server).handleStream(0xc000347200, {0x50a9da0, 0xc0029e6820}, 0xc002b45b00)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1845 +0xb47
google.golang.org/grpc.(*Server).serveStreams.func2.1()
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1061 +0x7f
created by google.golang.org/grpc.(*Server).serveStreams.func2 in goroutine 1511
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1072 +0x11d

goroutine 1577 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002f9e6e0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1436
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1576 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc00363c000)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1436
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 1631 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0024318c0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1439
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1630 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc003ad8320)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1439
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 4052 [chan receive]:
github.com/cilium/cilium/pkg/health/server.(*prober).runProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/health/server/prober.go:393 +0x9e
created by github.com/cilium/cilium/pkg/health/server.(*prober).runProbe in goroutine 1780
	/go/src/github.com/cilium/cilium/pkg/health/server/prober.go:391 +0x28b

goroutine 1782 [IO wait]:
internal/poll.runtime_pollWait(0x7f460aa34c58, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc0030e9e80?, 0x20?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc0030e9e80)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc0030e9e80)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0xc003a82df8?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).Accept(0xc003a95680)
	/usr/local/go/src/net/unixsock.go:260 +0x30
net/http.(*Server).Serve(0xc00223d500, {0x5087d40, 0xc003a95680})
	/usr/local/go/src/net/http/server.go:3424 +0x30c
github.com/cilium/cilium/api/v1/health/server.(*Server).Start.func1({0x5087d40?, 0xc003a95680?})
	/go/src/github.com/cilium/cilium/api/v1/health/server/server.go:365 +0x72
created by github.com/cilium/cilium/api/v1/health/server.(*Server).Start in goroutine 1810
	/go/src/github.com/cilium/cilium/api/v1/health/server/server.go:363 +0x485

goroutine 1781 [select]:
github.com/cilium/cilium/pkg/health/server.(*Server).runActiveServices.func1()
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:349 +0x96
created by github.com/cilium/cilium/pkg/health/server.(*Server).runActiveServices in goroutine 1810
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:345 +0x11c

goroutine 1810 [sync.WaitGroup.Wait, 2 minutes]:
sync.runtime_SemacquireWaitGroup(0xc001ead6a0?)
	/usr/local/go/src/runtime/sema.go:110 +0x25
sync.(*WaitGroup).Wait(0xc001f8ed90?)
	/usr/local/go/src/sync/waitgroup.go:118 +0x48
github.com/cilium/cilium/api/v1/health/server.(*Server).Serve(0xc001f8ed90)
	/go/src/github.com/cilium/cilium/api/v1/health/server/server.go:318 +0x95
github.com/cilium/cilium/pkg/health/server.(*Server).runActiveServices(0xc001f8ed88)
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:372 +0x12c
github.com/cilium/cilium/pkg/health/server.(*Server).Serve.func2()
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:390 +0x25
created by github.com/cilium/cilium/pkg/health/server.(*Server).Serve in goroutine 1760
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:389 +0xc7

goroutine 1801 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0041329a0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1407
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 4053 [chan receive]:
github.com/cilium/cilium/pkg/health/server.(*prober).runProbe.func2()
	/go/src/github.com/cilium/cilium/pkg/health/server/prober.go:407 +0x9e
created by github.com/cilium/cilium/pkg/health/server.(*prober).runProbe in goroutine 1780
	/go/src/github.com/cilium/cilium/pkg/health/server/prober.go:405 +0x2fd

goroutine 2351 [select]:
net/http.(*persistConn).writeLoop(0xc001e96240)
	/usr/local/go/src/net/http/transport.go:2590 +0xe7
created by net/http.(*Transport).dialConn in goroutine 2348
	/usr/local/go/src/net/http/transport.go:1945 +0x17a5

goroutine 4083 [select, 2 minutes]:
net/http.(*persistConn).writeLoop(0xc001c95e60)
	/usr/local/go/src/net/http/transport.go:2590 +0xe7
created by net/http.(*Transport).dialConn in goroutine 4069
	/usr/local/go/src/net/http/transport.go:1945 +0x17a5
