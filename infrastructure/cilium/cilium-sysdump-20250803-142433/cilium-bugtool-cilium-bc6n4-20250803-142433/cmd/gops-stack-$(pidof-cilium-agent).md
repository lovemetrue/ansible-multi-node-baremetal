goroutine 273 [running]:
runtime/pprof.writeGoroutineStacks({0x7f4e4d5affe8, 0xc001c70090})
	/usr/local/go/src/runtime/pprof/pprof.go:764 +0x6a
runtime/pprof.writeGoroutine({0x7f4e4d5affe8?, 0xc001c70090?}, 0xc002be8180?)
	/usr/local/go/src/runtime/pprof/pprof.go:753 +0x25
runtime/pprof.(*Profile).WriteTo(0x7d8f4a0?, {0x7f4e4d5affe8?, 0xc001c70090?}, 0xc?)
	/usr/local/go/src/runtime/pprof/pprof.go:377 +0x14b
github.com/google/gops/agent.handle({0x7f4e4d5affc0, 0xc001c70090}, {0xc002bf3480?, 0x1?, 0x1?})
	/go/src/github.com/cilium/cilium/vendor/github.com/google/gops/agent/agent.go:200 +0x28b2
github.com/google/gops/agent.listen({0x5089f90, 0xc002c2c000})
	/go/src/github.com/cilium/cilium/vendor/github.com/google/gops/agent/agent.go:144 +0x1b4
created by github.com/google/gops/agent.Listen in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/google/gops/agent/agent.go:122 +0x385

goroutine 1 [select, 2 minutes]:
github.com/cilium/hive.(*Hive).waitForSignalOrShutdown(0xc000cd8870, 0xc00063aaf0)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/hive.go:256 +0x170
github.com/cilium/hive.(*Hive).Run(0xc000cd8870, 0xc00063aaf0)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/hive.go:240 +0x38b
github.com/cilium/cilium/daemon/cmd.NewAgentCmd.func1(0xc000b38c08, {0x4984fb6?, 0x4?, 0x4984e52?})
	/go/src/github.com/cilium/cilium/daemon/cmd/root.go:52 +0x1f9
github.com/spf13/cobra.(*Command).execute(0xc000b38c08, {0xc0001a4090, 0x1, 0x1})
	/go/src/github.com/cilium/cilium/vendor/github.com/spf13/cobra/command.go:1019 +0xa91
github.com/spf13/cobra.(*Command).ExecuteC(0xc000b38c08)
	/go/src/github.com/cilium/cilium/vendor/github.com/spf13/cobra/command.go:1148 +0x46f
github.com/spf13/cobra.(*Command).Execute(...)
	/go/src/github.com/cilium/cilium/vendor/github.com/spf13/cobra/command.go:1071
github.com/cilium/cilium/daemon/cmd.Execute(0x4be5bd0?)
	/go/src/github.com/cilium/cilium/daemon/cmd/root.go:90 +0x13
main.main()
	/go/src/github.com/cilium/cilium/daemon/main.go:15 +0x1f

goroutine 514 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 450
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 69 [select, 3 minutes]:
io.(*pipe).read(0xc000e0d1a0, {0xc001d9c000, 0x10000, 0x419f25?})
	/usr/local/go/src/io/pipe.go:57 +0xa5
io.(*PipeReader).Read(0xc001dac000?, {0xc001d9c000?, 0xc00044adb0?, 0x419c1c?})
	/usr/local/go/src/io/pipe.go:134 +0x1a
bufio.(*Scanner).Scan(0xc001d97ee8)
	/usr/local/go/src/bufio/scan.go:219 +0x81e
github.com/cilium/cilium/pkg/logging.writerScanner(0xc001d01930, 0x0?, 0xc001d01960, {0x0, 0x0, 0x0?})
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:156 +0x15b
created by github.com/cilium/cilium/pkg/logging.severityOverrideWriter in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:117 +0x2bf

goroutine 70 [select, 3 minutes]:
io.(*pipe).read(0xc000e0d200, {0xc001d80000, 0x10000, 0x418b7e?})
	/usr/local/go/src/io/pipe.go:57 +0xa5
io.(*PipeReader).Read(0xc00044b558?, {0xc001d80000?, 0x838e000?, 0xc00044b5b0?})
	/usr/local/go/src/io/pipe.go:134 +0x1a
bufio.(*Scanner).Scan(0xc001d96ee8)
	/usr/local/go/src/bufio/scan.go:219 +0x81e
github.com/cilium/cilium/pkg/logging.writerScanner(0xc001d01930, 0xc00044b7d0?, 0xc001d01970, {0x0, 0x0, 0xc000552000?})
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:156 +0x15b
created by github.com/cilium/cilium/pkg/logging.severityOverrideWriter in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:117 +0x2bf

goroutine 71 [select, 3 minutes]:
io.(*pipe).read(0xc000e0d260, {0xc001e00000, 0x10000, 0x418b7e?})
	/usr/local/go/src/io/pipe.go:57 +0xa5
io.(*PipeReader).Read(0xc0000f1d58?, {0xc001e00000?, 0x838e000?, 0xc0000f1db0?})
	/usr/local/go/src/io/pipe.go:134 +0x1a
bufio.(*Scanner).Scan(0xc001d92ee8)
	/usr/local/go/src/bufio/scan.go:219 +0x81e
github.com/cilium/cilium/pkg/logging.writerScanner(0xc001d01930, 0x0?, 0xc001d01980, {0x7e20a00, 0x1, 0x0?})
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:156 +0x15b
created by github.com/cilium/cilium/pkg/logging.severityOverrideWriter in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:117 +0x2bf

goroutine 72 [select, 3 minutes]:
io.(*pipe).read(0xc000e0d2c0, {0xc001e80000, 0x10000, 0x418b7e?})
	/usr/local/go/src/io/pipe.go:57 +0xa5
io.(*PipeReader).Read(0xc000004ca0?, {0xc001e80000?, 0x5?, 0xc001e94db0?})
	/usr/local/go/src/io/pipe.go:134 +0x1a
bufio.(*Scanner).Scan(0xc001e94ee8)
	/usr/local/go/src/bufio/scan.go:219 +0x81e
github.com/cilium/cilium/pkg/logging.writerScanner(0xc001d01930, 0x0?, 0xc001d019a0, {0x0, 0x0, 0x0?})
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:156 +0x15b
created by github.com/cilium/cilium/pkg/logging.severityOverrideWriter in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/logging/klog_bridge.go:117 +0x2bf

goroutine 412 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f4e4db3f418, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002644b00?, 0x20?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc002644b00)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc002644b00)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0x44ea60?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).Accept(0xc0010652c0)
	/usr/local/go/src/net/unixsock.go:260 +0x30
google.golang.org/grpc.(*Server).Serve(0xc003053a00, {0x5087d40, 0xc0010652c0})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:915 +0x473
github.com/cilium/cilium/pkg/envoy.(*xdsServer).startXDSGRPCServer.func1()
	/go/src/github.com/cilium/cilium/pkg/envoy/grpc.go:77 +0x3af
created by github.com/cilium/cilium/pkg/envoy.(*xdsServer).startXDSGRPCServer in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/envoy/grpc.go:53 +0x21c

goroutine 73 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/cleanup.DeferTerminationCleanupFunction.func1()
	/go/src/github.com/cilium/cilium/pkg/cleanup/cleanup.go:19 +0x52
created by github.com/cilium/cilium/pkg/cleanup.DeferTerminationCleanupFunction in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/cleanup/cleanup.go:17 +0x90

goroutine 263 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc00121ec80)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 265 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/identity/cache.(*identityWatcher).watch.func1()
	/go/src/github.com/cilium/cilium/pkg/identity/cache/cache.go:150 +0x97
created by github.com/cilium/cilium/pkg/identity/cache.(*identityWatcher).watch in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/identity/cache/cache.go:144 +0x67

goroutine 266 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc00121efa0)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 376 [select]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002f1e700}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc002d975e0}, {0x7f4e4d5ed2d0, 0xc00232f140}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002f1e700?}, {0xc002d2c658?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc002d975e0?}, {0x7f4e4d5ed2d0?, 0xc00232f140?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc0019f6000, {0x50a9338, 0xc002f1e700}, {0x0, 0x0}, 0xc00068c310)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc0019f6000, {0x50a9338, 0xc002f1e700}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc0019f6000, {0x50a9338, 0xc002f1e700})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x429adc?, 0x838e000?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002f1e700?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002f1e700}, 0xc002193ea8, {0x504c4a0, 0xc0009718b0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc0009718b0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc0019f6000, {0x50a9338, 0xc002f1e700})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 329
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1534 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc002bd6150, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc000ff6d00?)
	/usr/local/go/src/sync/cond.go:71 +0x85
github.com/cilium/cilium/pkg/envoy/xds.(*ResourceWatcher).WatchResources(0xc002bd6100, {0x50a7fb0, 0xc002760780}, {0xc001f0e340, 0x33}, 0x2, 0x2, {0xc002d36fc5, 0x9}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/watcher.go:130 +0x790
created by github.com/cilium/cilium/pkg/envoy/xds.(*Server).processRequestStream in goroutine 1531
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:422 +0x17fd

goroutine 1387 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run.func1()
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:233 +0x6e
sync.(*Once).doSlow(0xc000fdd0a0?, 0xc000bdf9d0?)
	/usr/local/go/src/sync/once.go:78 +0xab
sync.(*Once).Do(...)
	/usr/local/go/src/sync/once.go:69
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run(0xc002580000?)
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:231 +0x36
created by github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).Run in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:227 +0x6a

goroutine 1442 [select, 2 minutes]:
github.com/cilium/cilium/pkg/endpoint.(*Endpoint).startRegenerationFailureHandler.func1({0x50a7fb0, 0xc002b52910})
	/go/src/github.com/cilium/cilium/pkg/endpoint/policy.go:945 +0x90
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003efda20)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:333 +0x1c7
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1384 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run.func1()
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:233 +0x6e
sync.(*Once).doSlow(0x0?, 0x0?)
	/usr/local/go/src/sync/once.go:78 +0xab
sync.(*Once).Do(...)
	/usr/local/go/src/sync/once.go:69
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run(0x0?)
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:231 +0x36
created by github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).Run in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:227 +0x6a

goroutine 1383 [select, 2 minutes]:
github.com/cilium/cilium/pkg/endpoint.(*Endpoint).startRegenerationFailureHandler.func1({0x50a7fb0, 0xc00307d180})
	/go/src/github.com/cilium/cilium/pkg/endpoint/policy.go:945 +0x90
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002e522c0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:333 +0x1c7
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 274 [select, 2 minutes]:
github.com/cilium/statedb.graveyardWorker(0xc001bbd170, {0x50a7fb0, 0xc002c36000}, 0x3b9aca00?)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/graveyard.go:25 +0x17a
created by github.com/cilium/statedb.(*DB).Start in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/db.go:276 +0x165

goroutine 312 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc002c4ada8, 0x1)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc001606800?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc002c4ad80, 0xc002c2d700)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002c80000?}, 0xc000fed620?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002c80000}, 0xc001d94eb8, {0x504c480, 0xc000fed620}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002c80000}, 0xc001d94eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc000b3cbb0, {0x50a9338, 0xc002c80000})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0xc0002a6740?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc002c11480, 0xc002c80000)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 285
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 280 [IO wait]:
internal/poll.runtime_pollWait(0x7f4e4db3fdf0, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002c1a280?, 0xc002250000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc002c1a280, {0xc002250000, 0xa000, 0xa000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc002c1a280, {0xc002250000?, 0xc?, 0xc00065b968?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc001962098, {0xc002250000?, 0x419514?, 0xc00225009b?})
	/usr/local/go/src/net/net.go:194 +0x45
crypto/tls.(*atLeastReader).Read(0xc002a103d8, {0xc002250000?, 0x9f65?, 0xc0035b6848?})
	/usr/local/go/src/crypto/tls/conn.go:809 +0x3b
bytes.(*Buffer).ReadFrom(0xc0003c9eb8, {0x503e920, 0xc002a103d8})
	/usr/local/go/src/bytes/buffer.go:211 +0x98
crypto/tls.(*Conn).readFromUntil(0xc0003c9c08, {0x7f4e4d8c9b28, 0xc001c9c108}, 0x440a54?)
	/usr/local/go/src/crypto/tls/conn.go:831 +0xde
crypto/tls.(*Conn).readRecordOrCCS(0xc0003c9c08, 0x0)
	/usr/local/go/src/crypto/tls/conn.go:629 +0x3cf
crypto/tls.(*Conn).readRecord(...)
	/usr/local/go/src/crypto/tls/conn.go:591
crypto/tls.(*Conn).Read(0xc0003c9c08, {0xc001d76000, 0x1000, 0xc00065bc90?})
	/usr/local/go/src/crypto/tls/conn.go:1385 +0x145
bufio.(*Reader).Read(0xc002c74060, {0xc0023a22e0, 0x9, 0xc00065bd30?})
	/usr/local/go/src/bufio/bufio.go:245 +0x197
io.ReadAtLeast({0x5038b80, 0xc002c74060}, {0xc0023a22e0, 0x9, 0x9}, 0x9)
	/usr/local/go/src/io/io.go:335 +0x91
io.ReadFull(...)
	/usr/local/go/src/io/io.go:354
golang.org/x/net/http2.readFrameHeader({0xc0023a22e0, 0x9, 0xf1857b?}, {0x5038b80?, 0xc002c74060?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/frame.go:242 +0x65
golang.org/x/net/http2.(*Framer).ReadFrame(0xc0023a22a0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/frame.go:506 +0x7d
golang.org/x/net/http2.(*clientConnReadLoop).run(0xc00065bfa8)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2258 +0xda
golang.org/x/net/http2.(*ClientConn).readLoop(0xc000803880)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2127 +0x79
created by golang.org/x/net/http2.(*Transport).newClientConn in goroutine 279
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:912 +0xde5

goroutine 84 [select]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002586420)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1428 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc0048fc0a0)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1387
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 286 [select, 2 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).reconcileLoop(0x50f4560, {0x50a7f78, 0xc000f9cf60}, {0x50b22c0, 0xc002c82060})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:64 +0x3a6
github.com/cilium/hive/job.(*jobOneShot).start(0xc002000cc0, {0x50a7f78, 0xc000f9cf60}, 0x0?, {0x50b22c0, 0xc002000c60}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 287 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).refreshLoop(0x50f4560, {0x50a7f78, 0xc000f9d140}, {0x50b22c0, 0xc002c74240})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:134 +0x1b7
github.com/cilium/hive/job.(*jobOneShot).start(0xc002000d20, {0x50a7f78, 0xc000f9d140}, 0x0?, {0x50b22c0, 0xc002000c60}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 79 [sync.Cond.Wait]:
sync.runtime_notifyListWait(0xc00232f5e8, 0x3)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc0000b28c0?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc00232f5c0, 0xc002bd7300)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002af7f10?}, 0xc000e00150?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002af7f10}, 0xc001e96eb8, {0x504c480, 0xc000e00150}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002af7f10}, 0xc001e96eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc00013c4d0, {0x50a9338, 0xc002af7f10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0xc00044a788?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc002bd5aa0, 0xc002af7f10)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 283
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 504 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc000cd2480, 0xc0025a8a00, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc000cd2480, 0x5cf8c4?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 498
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 290 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 79
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 1229 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0xc0003943f0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1270
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 323 [sync.Cond.Wait]:
sync.runtime_notifyListWait(0xc002dc8348, 0x6)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc002dc8330, {0xc0011ee018, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc0011ee018?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f4e4d917a80, 0xc002dc8300}, {0xc0011ee018, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc00090cae0, {0xc002762000, 0x2000, 0x2500})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc002b52780, 0x0, {0x5079208, 0xc004bea640})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc002bd5b40)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc002b527d0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 291
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 335 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dcd40, {0x50a7fb0, 0xc00087fd60}, 0xc00280ea10, {0x50c1900, 0xc002bf75b0})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:587 +0x5d2
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 336 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1405 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0034de420)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1445
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 481 [chan receive, 3 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 414
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 334 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0xc002176a80?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 360 [sync.Cond.Wait]:
sync.runtime_notifyListWait(0xc0026aec50, 0x7)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dcd40, {0x50a7fb0, 0xc0026aa410}, 0xc001f27f80, {0x50c1900, 0xc002bf75b0})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 319
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 291 [select]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002af7f10}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc002b527d0}, {0x7f4e4d5ed2d0, 0xc00232f5c0}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002af7f10?}, {0xc002d9e270?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc002b527d0?}, {0x7f4e4d5ed2d0?, 0xc00232f5c0?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc002620000, {0x50a9338, 0xc002af7f10}, {0x0, 0x0}, 0xc00043ef50)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc002620000, {0x50a9338, 0xc002af7f10}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc002620000, {0x50a9338, 0xc002af7f10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x7f4e4d5ed2d0?, 0xc00044a5f8?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002af7f10?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002af7f10}, 0xc00263dea8, {0x504c4a0, 0xc00261c050}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc00261c050?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc002620000, {0x50a9338, 0xc002af7f10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 79
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1404 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0034de160)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1445
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 451 [select]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x127
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10 in goroutine 471
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 359 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0xc000dae540?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 319
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 450 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc001eb4310}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc002d976d0}, {0x50b0080, 0xc001640580}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc001eb4310?}, {0xc00258ffa8?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc002d976d0?}, {0x50b0080?, 0xc001640580?}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc0026200f0, {0x50a9338, 0xc001eb4310}, {0x0, 0x0}, 0xc0003872d0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc0026200f0, {0x50a9338, 0xc001eb4310}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc0026200f0, {0x50a9338, 0xc001eb4310})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x0?, 0x0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc001eb4310?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc001eb4310}, 0xc002d43ec8, {0x504c4a0, 0xc0026ab630}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc0026ab630?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc0026200f0, {0x50a9338, 0xc001eb4310})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*Reflector).Run(0x44d352?, 0x5cf865?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:349 +0x1d
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9.5()
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:485 +0x3b
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9 in goroutine 471
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:484 +0x21f

goroutine 341 [sync.Cond.Wait]:
sync.runtime_notifyListWait(0xc000863cc8, 0x3)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc000863cb0, {0xc002eaead0, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc002eaead0?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f4e4d917a80, 0xc000863c80}, {0xc002eaead0, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc0019ec510, {0xc0025be800, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc000618690, 0x0, {0x5079208, 0xc002b25240})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc002d12820)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc0006186e0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 444
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 296 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc00263e480, 0xc002e80640, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc00263e480, 0xc002c33798?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 316
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 370 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 291
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 329 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc00232f168, 0x5)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc000e83a60?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc00232f140, 0xc00262a080)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002f1e700?}, 0xc000ed8090?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002f1e700}, 0xc00224beb8, {0x504c480, 0xc000ed8090}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002f1e700}, 0xc002124eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc00013c9a0, {0x50a9338, 0xc002f1e700})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc0031a04a0, 0xc002f1e700)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 415
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 577 [IO wait, 3 minutes]:
internal/poll.runtime_pollWait(0x7f4e4db3f1e8, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc000627580?, 0x8388740?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc000627580)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc000627580)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*TCPListener).accept(0xc002a04140)
	/usr/local/go/src/net/tcpsock_posix.go:159 +0x1b
net.(*TCPListener).Accept(0xc002a04140)
	/usr/local/go/src/net/tcpsock.go:380 +0x30
github.com/cilium/cilium/pkg/fqdn/dnsproxy.(*wrappedTCPListener).Accept(0xc000c97c20)
	/go/src/github.com/cilium/cilium/pkg/fqdn/dnsproxy/proxy.go:1338 +0x24
github.com/cilium/dns.(*Server).serveTCP(0xc000d04800, {0x5093e60, 0xc000c97c20})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/dns/server.go:454 +0x107
github.com/cilium/dns.(*Server).ActivateAndServe(0xc000d04800)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/dns/server.go:372 +0x22b
github.com/cilium/cilium/pkg/fqdn/dnsproxy.(*DNSProxy).Listen.func1(0xc000d04800)
	/go/src/github.com/cilium/cilium/pkg/fqdn/dnsproxy/proxy.go:699 +0x2a8
created by github.com/cilium/cilium/pkg/fqdn/dnsproxy.(*DNSProxy).Listen in goroutine 332
	/go/src/github.com/cilium/cilium/pkg/fqdn/dnsproxy/proxy.go:688 +0x45b

goroutine 342 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc000cd24c8, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc000cd24b0, {0xc00124fe10, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc00124fe10?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f4e4d917a80, 0xc000cd2480}, {0xc00124fe10, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc0019ec540, {0xc0025bec00, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc000618730, 0x0, {0x5079208, 0xc004860440})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc002d12880)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc000618780)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 498
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 358 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 319
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 333 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 331 [select, 2 minutes]:
github.com/cilium/cilium/daemon/cmd.(*syncHostIPs).loop(0xc0029503c0, {0x50a7f78, 0xc000f87530}, {0x50b22c0, 0xc002d2a900})
	/go/src/github.com/cilium/cilium/daemon/cmd/hostips-sync.go:113 +0x374
github.com/cilium/hive/job.(*jobOneShot).start(0xc002950420, {0x50a7f78, 0xc000f87530}, 0x2488125?, {0x50b22c0, 0xc002176fc0}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 411 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/envoy.(*AccessLogServer).start.func2()
	/go/src/github.com/cilium/cilium/pkg/envoy/accesslog_server.go:87 +0x2f
created by github.com/cilium/cilium/pkg/envoy.(*AccessLogServer).start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/envoy/accesslog_server.go:86 +0x185

goroutine 414 [select, 2 minutes]:
github.com/cilium/cilium/pkg/datapath/tables.(*nodeAddressController).run(0xc001f70000, {0x50a7f78, 0xc000f9fe00}, {0x50b22c0, 0xc002bfb260})
	/go/src/github.com/cilium/cilium/pkg/datapath/tables/node_address.go:317 +0x36a
github.com/cilium/hive/job.(*jobOneShot).start(0xc0026adec0, {0x50a7f78, 0xc000f9fe00}, 0xc002ebb7d0?, {0x50b22c0, 0xc001b57ec0}, {{{0xc000d82d80, 0x1, 0x1}}, 0xc000ef9040, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*group).add.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:263 +0x172

goroutine 410 [IO wait, 3 minutes]:
internal/poll.runtime_pollWait(0x7f4e4db3f530, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002644980?, 0x0?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc002644980)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc002644980)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0x1?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).AcceptUnix(0xc0010649c0)
	/usr/local/go/src/net/unixsock.go:247 +0x30
github.com/cilium/cilium/pkg/envoy.(*AccessLogServer).start.func1()
	/go/src/github.com/cilium/cilium/pkg/envoy/accesslog_server.go:67 +0xd9
created by github.com/cilium/cilium/pkg/envoy.(*AccessLogServer).start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/envoy/accesslog_server.go:60 +0x125

goroutine 1137 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 469
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 371 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc002620000, {0x50a7fb0, 0xc002d96050}, 0xc00043ef50)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 291
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 372 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc002dc8300, 0xc002dc2500, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc002dc8300, 0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 291
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 297 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/monitor/agent.(*server).connectionHandler1_2.func1()
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/server.go:76 +0x2c
created by github.com/cilium/cilium/pkg/monitor/agent.(*server).connectionHandler1_2 in goroutine 320
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/server.go:75 +0xa5

goroutine 375 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 329
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 545 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0x0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 531
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1094 [select, 3 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002c14f20)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 413
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 295 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc002c7e0f0, {0x50a7fb0, 0xc00261c1e0}, 0xc0003d0af0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 316
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 5110 [IO wait]:
internal/poll.runtime_pollWait(0x7f4e4d91d660, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002237b00?, 0xc00347d000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc002237b00, {0xc00347d000, 0x1000, 0x1000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc002237b00, {0xc00347d000?, 0xc0025adad0?, 0x4fd085?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc0011f33d8, {0xc00347d000?, 0x0?, 0x0?})
	/usr/local/go/src/net/net.go:194 +0x45
net/http.(*connReader).Read(0xc000da61e0, {0xc00347d000, 0x1000, 0x1000})
	/usr/local/go/src/net/http/server.go:798 +0x159
bufio.(*Reader).fill(0xc0034780c0)
	/usr/local/go/src/bufio/bufio.go:113 +0x103
bufio.(*Reader).Peek(0xc0034780c0, 0x4)
	/usr/local/go/src/bufio/bufio.go:152 +0x53
net/http.(*conn).serve(0xc001f8d290, {0x50a7f78, 0xc0037b2840})
	/usr/local/go/src/net/http/server.go:2137 +0x785
created by net/http.(*Server).Serve in goroutine 1598
	/usr/local/go/src/net/http/server.go:3454 +0x485

goroutine 315 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 312
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 316 [select]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002c80000}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc0026aa7d0}, {0x7f4e4d5ed2d0, 0xc002c4ad80}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002c80000?}, {0xc002eae978?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc0026aa7d0?}, {0x7f4e4d5ed2d0?, 0xc002c4ad80?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc002c7e0f0, {0x50a9338, 0xc002c80000}, {0x0, 0x0}, 0xc0003d0af0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc002c7e0f0, {0x50a9338, 0xc002c80000}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc002c7e0f0, {0x50a9338, 0xc002c80000})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x50486e0?, 0xc002c078c0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002c80000?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002c80000}, 0xc0025b3ea8, {0x504c4a0, 0xc002e3c190}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc002e3c190?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc002c7e0f0, {0x50a9338, 0xc002c80000})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 312
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 294 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 316
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 319 [chan receive]:
github.com/cilium/cilium/daemon/cmd.(*localNodeSynchronizer).SyncLocalNode(0xc001028960, {0x50a7fb0?, 0xc0008542d0?}, 0xc001028b40)
	/go/src/github.com/cilium/cilium/daemon/cmd/local_node_sync.go:79 +0xb4
github.com/cilium/cilium/pkg/node.NewLocalNodeStore.func1.1()
	/go/src/github.com/cilium/cilium/pkg/node/local_node_store.go:150 +0x31
created by github.com/cilium/cilium/pkg/node.NewLocalNodeStore.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/node/local_node_store.go:149 +0x37b

goroutine 361 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 319
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 320 [IO wait, 3 minutes]:
internal/poll.runtime_pollWait(0x7f4e4db3fcd8, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002e40280?, 0x50a9338?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc002e40280)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc002e40280)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0x4122de?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).Accept(0xc001068030)
	/usr/local/go/src/net/unixsock.go:260 +0x30
github.com/cilium/cilium/pkg/monitor/agent.(*server).connectionHandler1_2(0xc001068090, {0x50a7fb0, 0xc0008544b0}, 0x2000)
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/server.go:81 +0xe3
created by github.com/cilium/cilium/pkg/monitor/agent.ServeMonitorAPI in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/server.go:67 +0x1a5

goroutine 385 [select, 3 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002e42dc0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 386 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002e43080)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 362 [sync.Cond.Wait]:
sync.runtime_notifyListWait(0xc00263e4c8, 0x3)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc00263e4b0, {0xc001085201, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x77?}, {0xc001085201?, 0x419514?, 0xc003bf9c58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc0026d68c0)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc0026d68c0)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc0026d68c0, {0x3fd8fe0, 0xc002a10408})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc000e09b60, {0xc002696400, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc0026aa780, 0x0, {0x5079208, 0xc00493e7c0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc0016409c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc0026aa7d0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 316
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 387 [select, 2 minutes]:
github.com/cilium/hive/job.(*jobTimer).start(0xc002000fc0, {0x50a7f78, 0xc001068630}, 0x0?, {0x50b22c0, 0xc002000f60}, {{{0x0, 0x0, 0x0}}, 0xc001057740, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 388 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded(0x511d0a0)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:313 +0x85
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:300 +0x88

goroutine 1327 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1238
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 1329 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc00102d7d0, 0x9)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dc8c0, {0x50a7fb0, 0xc000dc5a40}, 0xc003cbe620, {0x50c1630, 0xc003078590})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1238
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 391 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).reconcileLoop(0x50f46e0, {0x50a7f78, 0xc001068de0}, {0x50b22c0, 0xc002d2a3c0})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:64 +0x3a6
github.com/cilium/hive/job.(*jobOneShot).start(0xc0020013e0, {0x50a7f78, 0xc001068de0}, 0x0?, {0x50b22c0, 0xc002001380}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 392 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).refreshLoop(0x50f46e0, {0x50a7f78, 0xc001068f30}, {0x50b22c0, 0xc002d9c780})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:134 +0x1b7
github.com/cilium/hive/job.(*jobOneShot).start(0xc002001440, {0x50a7f78, 0xc001068f30}, 0x0?, {0x50b22c0, 0xc002001380}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1681 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0019fa160)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1376
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 394 [select]:
github.com/cilium/cilium/pkg/datapath/linux.(*devicesController).processUpdates(0xc00013c370, 0xc002e072d0, 0xc002e073b0, 0xc002e07420, 0xc002e07490)
	/go/src/github.com/cilium/cilium/pkg/datapath/linux/devices_controller.go:366 +0x2e5
github.com/cilium/cilium/pkg/datapath/linux.(*devicesController).subscribeAndProcess(0xc00013c370, {0x50a7fb0?, 0xc002e3c960?})
	/go/src/github.com/cilium/cilium/pkg/datapath/linux/devices_controller.go:246 +0x5c5
github.com/cilium/cilium/pkg/datapath/linux.(*devicesController).run(0xc00013c370, {0x50a7fb0, 0xc002e3c960})
	/go/src/github.com/cilium/cilium/pkg/datapath/linux/devices_controller.go:178 +0x89
created by github.com/cilium/cilium/pkg/datapath/linux.(*devicesController).Start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/datapath/linux/devices_controller.go:158 +0x125

goroutine 395 [chan receive, 3 minutes]:
github.com/vishvananda/netlink.addrSubscribeAt.func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/addr_linux.go:358 +0x25
created by github.com/vishvananda/netlink.addrSubscribeAt in goroutine 394
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/addr_linux.go:357 +0x146

goroutine 396 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f4e4db3faa8, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002c74c60?, 0x30?, 0x1)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).RawRead(0xc002c74c60, 0xc000f31290)
	/usr/local/go/src/internal/poll/fd_unix.go:717 +0x125
os.(*rawConn).Read(0xc0011f2960, 0xc002c75560?)
	/usr/local/go/src/os/rawconn.go:31 +0x4a
github.com/vishvananda/netlink/nl.(*NetlinkSocket).Receive(0xc002c2de80)
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/nl/nl_linux.go:898 +0x1e5
github.com/vishvananda/netlink.addrSubscribeAt.func2()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/addr_linux.go:374 +0x8b
created by github.com/vishvananda/netlink.addrSubscribeAt in goroutine 394
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/addr_linux.go:371 +0x35f

goroutine 397 [chan receive, 3 minutes]:
github.com/vishvananda/netlink.routeSubscribeAt.func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/route_linux.go:1770 +0x25
created by github.com/vishvananda/netlink.routeSubscribeAt in goroutine 394
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/route_linux.go:1769 +0x146

goroutine 398 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f4e4db3f990, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002c74cc0?, 0x30?, 0x1)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).RawRead(0xc002c74cc0, 0xc000f32930)
	/usr/local/go/src/internal/poll/fd_unix.go:717 +0x125
os.(*rawConn).Read(0xc001220660, 0xc002c75500?)
	/usr/local/go/src/os/rawconn.go:31 +0x4a
github.com/vishvananda/netlink/nl.(*NetlinkSocket).Receive(0xc002c2dec0)
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/nl/nl_linux.go:898 +0x1e5
github.com/vishvananda/netlink.routeSubscribeAt.func2()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/route_linux.go:1786 +0x91
created by github.com/vishvananda/netlink.routeSubscribeAt in goroutine 394
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/route_linux.go:1783 +0x35f

goroutine 399 [chan receive, 3 minutes]:
github.com/vishvananda/netlink.linkSubscribeAt.func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/link_linux.go:2516 +0x25
created by github.com/vishvananda/netlink.linkSubscribeAt in goroutine 394
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/link_linux.go:2515 +0x139

goroutine 400 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f4e4db3f878, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002c74d20?, 0x30?, 0x1)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).RawRead(0xc002c74d20, 0xc000d5bcb0)
	/usr/local/go/src/internal/poll/fd_unix.go:717 +0x125
os.(*rawConn).Read(0xc0019627f0, 0xc002c748a0?)
	/usr/local/go/src/os/rawconn.go:31 +0x4a
github.com/vishvananda/netlink/nl.(*NetlinkSocket).Receive(0xc002c2df00)
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/nl/nl_linux.go:898 +0x1e5
github.com/vishvananda/netlink.linkSubscribeAt.func2()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/link_linux.go:2532 +0x85
created by github.com/vishvananda/netlink.linkSubscribeAt in goroutine 394
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/link_linux.go:2529 +0x345

goroutine 401 [chan receive, 3 minutes]:
github.com/vishvananda/netlink.neighSubscribeAt.func2()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/neigh_linux.go:431 +0x25
created by github.com/vishvananda/netlink.neighSubscribeAt in goroutine 394
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/neigh_linux.go:430 +0x1cd

goroutine 402 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f4e4db3f760, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002c74d80?, 0x30?, 0x1)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).RawRead(0xc002c74d80, 0xc000e68f60)
	/usr/local/go/src/internal/poll/fd_unix.go:717 +0x125
os.(*rawConn).Read(0xc0012549e0, 0xc002c74900?)
	/usr/local/go/src/os/rawconn.go:31 +0x4a
github.com/vishvananda/netlink/nl.(*NetlinkSocket).Receive(0xc002c2df40)
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/nl/nl_linux.go:898 +0x1e5
github.com/vishvananda/netlink.neighSubscribeAt.func3()
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/neigh_linux.go:444 +0x94
created by github.com/vishvananda/netlink.neighSubscribeAt in goroutine 394
	/go/src/github.com/cilium/cilium/vendor/github.com/vishvananda/netlink/neigh_linux.go:441 +0x415

goroutine 403 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc00304bcc0)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 404 [select]:
github.com/cilium/cilium/pkg/node/manager.(*manager).backgroundSync(0xc00095e120, {0x50a7f78, 0xc00108cb10}, {0x50b22c0, 0xc002bfa3c0})
	/go/src/github.com/cilium/cilium/pkg/node/manager/manager.go:386 +0x24d
github.com/cilium/hive/job.(*jobOneShot).start(0xc002c75740, {0x50a7f78, 0xc00108cb10}, 0x0?, {0x50b22c0, 0xc002001560}, {{{0xc000e2dda0, 0x1, 0x1}}, 0xc001056610, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*group).add.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:263 +0x172

goroutine 526 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0xc000d26280?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 475
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 406 [select, 3 minutes]:
github.com/cilium/cilium/pkg/dial.newServiceResolver.func2({0x50a7f78, 0xc00108ce70}, {0x50b22c0, 0xc0026ad5c0})
	/go/src/github.com/cilium/cilium/pkg/dial/resolver.go:53 +0xa6
github.com/cilium/hive/job.(*jobOneShot).start(0xc0020016e0, {0x50a7f78, 0xc00108ce70}, 0x0?, {0x50b22c0, 0xc002001620}, {{{0xc000e44f80, 0x1, 0x1}}, 0xc001112840, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 407 [select]:
github.com/cilium/hive/job.(*jobTimer).start(0xc001b57380, {0x50a7f78, 0xc00108d260}, 0x0?, {0x50b22c0, 0xc001b572c0}, {{{0xc000d3f860, 0x1, 0x1}}, 0xc000eb6a20, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 2388 [select, 2 minutes]:
github.com/cilium/cilium/pkg/hubble/peer.(*Service).Notify.func1()
	/go/src/github.com/cilium/cilium/pkg/hubble/peer/service.go:59 +0xbb
golang.org/x/sync/errgroup.(*Group).Go.func1()
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/sync/errgroup/errgroup.go:93 +0x50
created by golang.org/x/sync/errgroup.(*Group).Go in goroutine 2387
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/sync/errgroup/errgroup.go:78 +0x93

goroutine 409 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x508b2a0, {0x50a7f78, 0xc00108d530}, 0x0, {0x50b22c0?, 0xc001b572c0}, {{{0xc000d3f860, 0x1, 0x1}}, 0xc000eb6a20, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 363 [select, 3 minutes]:
github.com/cilium/cilium/pkg/fqdn/namemanager.New.FromChannel[...].func1.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:108 +0xf6
created by github.com/cilium/cilium/pkg/fqdn/namemanager.New.FromChannel[...].func1 in goroutine 409
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:105 +0xca

goroutine 433 [IO wait, 3 minutes]:
internal/poll.runtime_pollWait(0x7f4e4db3f300, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc0021775c0?, 0xc00318fe53?, 0x1)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc0021775c0, {0xc00318fe53, 0x10000, 0x10000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
os.(*File).read(...)
	/usr/local/go/src/os/file_posix.go:29
os.(*File).Read(0xc0011f22a0, {0xc00318fe53?, 0x0?, 0x0?})
	/usr/local/go/src/os/file.go:124 +0x4f
github.com/fsnotify/fsnotify.(*inotify).readEvents(0xc0025a8640)
	/go/src/github.com/cilium/cilium/vendor/github.com/fsnotify/fsnotify/backend_inotify.go:357 +0xcf
created by github.com/fsnotify/fsnotify.newBackend in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/fsnotify/fsnotify/backend_inotify.go:155 +0x1f6

goroutine 434 [select, 3 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003114840)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 435 [select, 3 minutes]:
github.com/cilium/cilium/daemon/cmd/cni.(*cniConfigManager).watchForDirectoryChanges(0xc0021ab200)
	/go/src/github.com/cilium/cilium/daemon/cmd/cni/config.go:269 +0x11b
created by github.com/cilium/cilium/daemon/cmd/cni.(*cniConfigManager).Start in goroutine 1
	/go/src/github.com/cilium/cilium/daemon/cmd/cni/config.go:243 +0x3ae

goroutine 436 [select, 2 minutes]:
github.com/cilium/cilium/pkg/mtu.(*MTUManager).Updater(0xc00315a000, {0x50a7f78, 0xc0010bb350}, {0x50b22c0, 0xc002c827e0})
	/go/src/github.com/cilium/cilium/pkg/mtu/manager.go:101 +0x8f0
github.com/cilium/hive/job.(*jobOneShot).start(0xc002177680, {0x50a7f78, 0xc0010bb350}, 0x0?, {0x50b22c0, 0xc001b57bc0}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*group).add.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:263 +0x172

goroutine 440 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc002d381a8, 0x1)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc0015870e0?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc002d38180, 0xc002db6000)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002f1e5b0?}, 0xc00102ac00?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002f1e5b0}, 0xc002206eb8, {0x504c480, 0xc00102ac00}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002f1e5b0}, 0xc002206eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc000c9d130, {0x50a9338, 0xc002f1e5b0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc0015861a0, 0xc002f1e5b0)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 405
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 340 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc0012a4180, 0xc002dc23c0, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc0012a4180, 0xc0025a6300?, 0xc001441dc0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 376
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 62 [select]:
github.com/cilium/cilium/pkg/datapath/iptables.reconciliationLoop({0x50a7f78, 0xc000f9ec60}, 0xc000eecc20, {0x50b22c0, 0xc002d2a5a0}, 0x1, 0xc000dadca0, 0xc001f37d30, 0xc001f37d20, 0xc001f37d10, ...)
	/go/src/github.com/cilium/cilium/pkg/datapath/iptables/reconciler.go:192 +0x7ef
github.com/cilium/cilium/pkg/datapath/iptables.newIptablesManager.func2({0x50a7f78, 0xc000f9ec60}, {0x50b22c0, 0xc002d2a5a0})
	/go/src/github.com/cilium/cilium/pkg/datapath/iptables/iptables.go:359 +0x18c
github.com/cilium/hive/job.(*jobOneShot).start(0xc001b57c80, {0x50a7f78, 0xc000f9ec60}, 0x0?, {0x50b22c0, 0xc001b57c20}, {{{0xc000d71c80, 0x1, 0x1}}, 0xc000eecc20, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 327 [chan receive, 3 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 62
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 413 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc002617b80)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 482 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 414
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 1390 [select, 2 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).refreshLoop(0x50f4620, {0x50a7f78, 0xc0008b05d0}, {0x50b22c0, 0xc003be9140})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:134 +0x1b7
github.com/cilium/hive/job.(*jobOneShot).start(0xc002001b60, {0x50a7f78, 0xc0008b05d0}, 0x0?, {0x50b22c0, 0xc002001aa0}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1133
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 468 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded(0x511d360)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:313 +0x85
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:300 +0x88

goroutine 469 [select, 2 minutes]:
github.com/cilium/cilium/pkg/datapath/orchestrator.(*orchestrator).reconciler(0xc001f82f08, {0x50a7f78, 0xc000fbee40}, {0x50b22c0, 0xc00261f140})
	/go/src/github.com/cilium/cilium/pkg/datapath/orchestrator/orchestrator.go:239 +0x97e
github.com/cilium/hive/job.(*jobOneShot).start(0xc0021760c0, {0x50a7f78, 0xc000fbee40}, 0xc002dcd7d0?, {0x50b22c0, 0xc002176000}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 470 [syscall]:
syscall.Syscall6(0xe8, 0x22, 0xc003076f00, 0x8, 0xffffffffffffffff, 0x0, 0x0)
	/usr/local/go/src/syscall/syscall_linux.go:95 +0x39
golang.org/x/sys/unix.EpollWait(0x7dbf6a0?, {0xc003076f00?, 0x29b4aa7?, 0x29b4aa7?}, 0xc21bfa033a8ccfbc?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/sys/unix/zsyscall_linux_amd64.go:55 +0x4f
github.com/cilium/ebpf/internal/unix.EpollWait(...)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/ebpf/internal/unix/types_linux.go:114
github.com/cilium/ebpf/internal/epoll.(*Poller).Wait(0xc000fbef90, {0xc003076f00, 0x8, 0x8}, {0x0?, 0x0?, 0x0?})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/ebpf/internal/epoll/poller.go:177 +0x24c
github.com/cilium/ebpf/perf.(*Reader).ReadInto(0xc0023a2000, 0xc000659e70)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/ebpf/perf/reader.go:366 +0x2b9
github.com/cilium/ebpf/perf.(*Reader).Read(0xc000f15f00?)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/ebpf/perf/reader.go:333 +0x45
github.com/cilium/cilium/pkg/signal.(*signalManager).start.func1()
	/go/src/github.com/cilium/cilium/pkg/signal/signal.go:272 +0x67
created by github.com/cilium/cilium/pkg/signal.(*signalManager).start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/signal/signal.go:269 +0x118

goroutine 471 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run(0x5121d20, {0x50a7f78, 0xc000fbf890}, {0x50b22c0, 0xc00261f2c0})
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:434 +0x713
github.com/cilium/hive/job.(*jobOneShot).start(0xc002176360, {0x50a7f78, 0xc000fbf890}, 0x0?, {0x50b22c0, 0xc0021761e0}, {{{0xc000db3f20, 0x1, 0x1}}, 0xc000f22ef0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 472 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run(0x5121ea0, {0x50a7f78, 0xc000fbf9e0}, {0x50b22c0, 0xc002bfb560})
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:434 +0x713
github.com/cilium/hive/job.(*jobOneShot).start(0xc002176660, {0x50a7f78, 0xc000fbf9e0}, 0x0?, {0x50b22c0, 0xc0021761e0}, {{{0xc000db3f20, 0x1, 0x1}}, 0xc000f22ef0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 474 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x5089d00, {0x50a7f78, 0xc000fbff20}, 0x0, {0x50b22c0?, 0xc002000f60}, {{{0xc000de0b20, 0x1, 0x1}}, 0xc001057740, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 475 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/bgpv1/manager/store.NewDiffStore[...].func1({0x7, 0xfffffffffffffffc})
	/go/src/github.com/cilium/cilium/pkg/bgpv1/manager/store/diffstore.go:101 +0x266
github.com/cilium/hive/job.(*jobOneShot).start(0xc002176c60, {0x50a7f78, 0xc00103c390}, 0x0?, {0x50b22c0, 0xc002176a80}, {{{0xc000df4100, 0x1, 0x1}}, 0xc000f470e0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 476 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/bgpv1/manager/store.NewDiffStore[...].func1({0x7, 0xfffffffffffffffc})
	/go/src/github.com/cilium/cilium/pkg/bgpv1/manager/store/diffstore.go:101 +0x266
github.com/cilium/hive/job.(*jobOneShot).start(0xc002176cc0, {0x50a7f78, 0xc00103c4e0}, 0xc002dcb7d0?, {0x50b22c0, 0xc002176a80}, {{{0xc000df4100, 0x1, 0x1}}, 0xc000f470e0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 477 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x508d680, {0x50a7f78, 0xc00103c660}, 0x0, {0x50b22c0?, 0xc002176a80}, {{{0xc000df4100, 0x1, 0x1}}, 0xc000f470e0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 478 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x508d640, {0x50a7f78, 0xc00103c7b0}, 0x0, {0x50b22c0?, 0xc002176a80}, {{{0xc000df4100, 0x1, 0x1}}, 0xc000f470e0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 479 [select]:
github.com/cilium/cilium/pkg/cgroups/manager.(*cgroupManager).processPodEvents(0xc000481490)
	/go/src/github.com/cilium/cilium/pkg/cgroups/manager/manager.go:218 +0x91
created by github.com/cilium/cilium/pkg/cgroups/manager.newCGroupManager.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/cgroups/manager/cell.go:53 +0x56

goroutine 63 [select, 2 minutes]:
github.com/cilium/statedb.(*observable[...]).Observe.func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/observable.go:45 +0x2ab
created by github.com/cilium/statedb.(*observable[...]).Observe in goroutine 477
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/observable.go:27 +0xbd

goroutine 480 [select, 3 minutes]:
github.com/cilium/cilium/pkg/policy/cell.newPolicyImporter.FromChannel[...].func1.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:108 +0xba
created by github.com/cilium/cilium/pkg/policy/cell.newPolicyImporter.FromChannel[...].func1 in goroutine 474
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:105 +0xca

goroutine 497 [select]:
github.com/cilium/cilium/pkg/policy/cell.newPolicyImporter.Buffer[...].func2.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x138
created by github.com/cilium/cilium/pkg/policy/cell.newPolicyImporter.Buffer[...].func2 in goroutine 474
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 515 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc0026200f0, {0x50a7fb0, 0xc002d974a0}, 0xc0003872d0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 450
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 338 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 376
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 339 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc0019f6000, {0x50a7fb0, 0xc0006185f0}, 0xc00068c310)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 376
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 525 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 475
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 64 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 531
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 443 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 440
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 379 [select, 2 minutes]:
github.com/cilium/statedb.(*observable[...]).Observe.func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/observable.go:45 +0x2ab
created by github.com/cilium/statedb.(*observable[...]).Observe in goroutine 478
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/observable.go:27 +0xbd

goroutine 444 [select]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002f1e5b0}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc0006186e0}, {0x7f4e4d5ed2d0, 0xc002d38180}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002f1e5b0?}, {0xc00258f0b8?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc0006186e0?}, {0x7f4e4d5ed2d0?, 0xc002d38180?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc000950000, {0x50a9338, 0xc002f1e5b0}, {0x0, 0x0}, 0xc000386d90)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc000950000, {0x50a9338, 0xc002f1e5b0}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc000950000, {0x50a9338, 0xc002f1e5b0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x50486e0?, 0xc0025803f0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002f1e5b0?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002f1e5b0}, 0xc002241ea8, {0x504c4a0, 0xc002d966e0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc002d966e0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc000950000, {0x50a9338, 0xc002f1e5b0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 440
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 447 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 444
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 498 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc000cd5e30}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc000618780}, {0x50b0080, 0xc000e821c0}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc000cd5e30?}, {0xc0026cb5e8?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc000618780?}, {0x50b0080?, 0xc000e821c0?}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc002c7e2d0, {0x50a9338, 0xc000cd5e30}, {0x0, 0x0}, 0xc00050a070)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc002c7e2d0, {0x50a9338, 0xc000cd5e30}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc002c7e2d0, {0x50a9338, 0xc000cd5e30})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x2485c93?, 0xc002d07df8?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc000cd5e30?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc000cd5e30}, 0xc00223dec8, {0x504c4a0, 0xc000ae03c0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc000ae03c0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc002c7e2d0, {0x50a9338, 0xc000cd5e30})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*Reflector).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:349 +0x1d
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9.5()
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:485 +0x3b
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9 in goroutine 472
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:484 +0x21f

goroutine 499 [select]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x127
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10 in goroutine 472
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 502 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 498
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 448 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc000950000, {0x50a7fb0, 0xc002d96870}, 0xc000386d90)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 444
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 503 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc002c7e2d0, {0x50a7fb0, 0xc000ae06e0}, 0xc00050a070)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 498
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 513 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc000863c80, 0xc0026d6b40, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc000863c80, 0x5cf8c4?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 444
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 516 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc00137a180, 0xc0026d7040, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc00137a180, 0x50c7cf8?, 0xc001679200?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 450
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 517 [sync.Cond.Wait]:
sync.runtime_notifyListWait(0xc0012a41c8, 0x7)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc0012a41b0, {0xc000fbc4c0, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc000fbc4c0?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f4e4d917a80, 0xc0012a4180}, {0xc000fbc4c0, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc000935890, {0xc0028fac00, 0x800, 0xc00})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc002d97590, 0x0, {0x5079208, 0xc00493e340})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc0015879c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc002d975e0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 376
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 518 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc00137a1c8, 0x7)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc00137a1b0, {0xc00105dd4c, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc00105dd4c?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f4e4d917a80, 0xc00137a180}, {0xc00105dd4c, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc000935938, {0xc002cf4000, 0x8000, 0xa000})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc002d97680, 0x0, {0x5079208, 0xc0005e7f00})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc001587a20)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc002d976d0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 450
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 506 [select, 2 minutes]:
github.com/cilium/cilium/pkg/k8s/watchers.(*K8sPodWatcher).podsInit.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/pod.go:172 +0x219
created by github.com/cilium/cilium/pkg/k8s/watchers.(*K8sPodWatcher).podsInit in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/pod.go:143 +0xf2

goroutine 1099 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 1095
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 509 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 510 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0x0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 511 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc002591cd0, 0xb)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x4195c5?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dc8c0, {0x50a7fb0, 0xc000ae0a00}, 0xc002af6c40, {0x50c1630, 0xc003078590})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 512 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 529 [select, 2 minutes]:
github.com/cilium/cilium/pkg/k8s/watchers.(*K8sEndpointsWatcher).endpointsInit.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/endpoints.go:82 +0xe6
created by github.com/cilium/cilium/pkg/k8s/watchers.(*K8sEndpointsWatcher).endpointsInit in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/endpoints.go:80 +0x1ea

goroutine 531 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/watchers.(*K8sCiliumNodeWatcher).ciliumNodeInit.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/cilium_node.go:87 +0x12b
created by github.com/cilium/cilium/pkg/k8s/watchers.(*K8sCiliumNodeWatcher).ciliumNodeInit in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/cilium_node.go:84 +0x12e

goroutine 1425 [select]:
golang.org/x/sync/semaphore.(*Weighted).Acquire(0xc003f5d590, {0x50a7f78, 0xc000db5950}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/sync/semaphore/semaphore.go:74 +0x339
github.com/cilium/cilium/pkg/rate.(*Limiter).WaitN(0xc001175740, {0x50a7f78, 0xc000db5950}, 0x1)
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:104 +0x6a
github.com/cilium/cilium/pkg/rate.(*Limiter).Wait(...)
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:91
github.com/cilium/cilium/pkg/hive/health.publishJob({0x50a7f78, 0xc000db5950}, {{{}}, 0xc001bbd1d0, {0x51187b8, 0xc000ebc900}, {0x5070750, 0xc002a4f830}, 0xc000de06a0}, 0xc002bd7180)
	/go/src/github.com/cilium/cilium/pkg/hive/health/metrics.go:126 +0x2ee
github.com/cilium/cilium/pkg/hive/health.metricPublisher.func2({0x50a7f78?, 0xc000db5950?}, {0x7?, 0xfffffffffffffffc?})
	/go/src/github.com/cilium/cilium/pkg/hive/health/metrics.go:79 +0x39
github.com/cilium/hive/job.(*jobOneShot).start(0xc0027439e0, {0x50a7f78, 0xc000db5950}, 0x2480aa9?, {0x50b22c0, 0xc002743980}, {{{0xc002bd5960, 0x1, 0x1}}, 0xc000f05370, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 533 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/watchers.(*K8sCiliumEndpointsWatcher).ciliumEndpointsInit.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/cilium_endpoint.go:101 +0x116
created by github.com/cilium/cilium/pkg/k8s/watchers.(*K8sCiliumEndpointsWatcher).ciliumEndpointsInit in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/watchers/cilium_endpoint.go:98 +0x12e

goroutine 1375 [select, 2 minutes]:
github.com/cilium/cilium/pkg/endpoint.(*Endpoint).startRegenerationFailureHandler.func1({0x50a7fb0, 0xc002b520a0})
	/go/src/github.com/cilium/cilium/pkg/endpoint/policy.go:945 +0x90
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003efd1e0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:333 +0x1c7
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1104 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc00271f600)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1447
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 546 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc002ca28d0, 0x4)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dccc0, {0x50a7fb0, 0xc002959180}, 0xc002c00540, {0x50c18b0, 0xc002d10850})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 531
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 547 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 531
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 548 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc0025a0928, 0x1)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc002d12f00?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc0025a0900, 0xc002ca29c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002d28150?}, 0xc001038ab0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002d28150}, 0xc00250eeb8, {0x504c480, 0xc001038ab0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002d28150}, 0xc00250eeb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc001466580, {0x50a9338, 0xc002d28150})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc002c94800, 0xc002d28150)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 389
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 455 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0xc0026cb80c?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 533
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 456 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc0026aecd0, 0x3)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dc840, {0x50a7fb0, 0xc0026ab7c0}, 0xc001eb4770, {0x50c15e0, 0xc00260acd0})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 533
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 457 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 533
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 382 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc0026205a0, {0x50a7fb0, 0xc0008ace10}, 0xc00043f880)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 462
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 551 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 548
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 458 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc002f2a9e8, 0x1)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc002d82d20?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc002f2a9c0, 0xc0026aedc0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002d281c0?}, 0xc000e09ad0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002d281c0}, 0xc0029b9eb8, {0x504c480, 0xc000e09ad0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002d281c0}, 0xc002d0beb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc001f76790, {0x50a9338, 0xc002d281c0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc001640ce0, 0xc002d281c0)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 390
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 1328 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0x0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1238
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 383 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc001f22180, 0xc002e808c0, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc001f22180, 0x50b22c0?, 0xc002176000?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 462
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 461 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 458
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 552 [select]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002d28150}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc000618c30}, {0x7f4e4d5ed2d0, 0xc0025a0900}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002d28150?}, {0xc002d2cbb8?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc000618c30?}, {0x7f4e4d5ed2d0?, 0xc0025a0900?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc00032b860, {0x50a9338, 0xc002d28150}, {0x0, 0x0}, 0xc00068cf50)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc00032b860, {0x50a9338, 0xc002d28150}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc00032b860, {0x50a9338, 0xc002d28150})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x20?, 0xc002ebd5f8?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002d28150?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002d28150}, 0xc00223bea8, {0x504c4a0, 0xc002959220}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc002959220?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc00032b860, {0x50a9338, 0xc002d28150})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 548
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 462 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002d281c0}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc000ae1ef0}, {0x7f4e4d5ed2d0, 0xc002f2a9c0}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002d281c0?}, {0xc002d9fa68?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc000ae1ef0?}, {0x7f4e4d5ed2d0?, 0xc002f2a9c0?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc0026205a0, {0x50a9338, 0xc002d281c0}, {0x0, 0x0}, 0xc00043f880)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc0026205a0, {0x50a9338, 0xc002d281c0}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc0026205a0, {0x50a9338, 0xc002d281c0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x20?, 0xc002ebddf8?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002d281c0?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002d281c0}, 0xc002191ea8, {0x504c4a0, 0xc0026ab860}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc0026ab860?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc0026205a0, {0x50a9338, 0xc002d281c0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 458
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 570 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 552
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 381 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 462
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 345 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002e42580)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 529
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 2955 [IO wait]:
internal/poll.runtime_pollWait(0x7f4e4d91dbd8, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc0030ddb80?, 0xc003139000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc0030ddb80, {0xc003139000, 0x1000, 0x1000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc0030ddb80, {0xc003139000?, 0x4083f4?, 0x0?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc00198e950, {0xc003139000?, 0x4081ef?, 0xc0037b2f30?})
	/usr/local/go/src/net/net.go:194 +0x45
net/http.(*persistConn).Read(0xc002593b00, {0xc003139000?, 0x8e59e5?, 0x50385a0?})
	/usr/local/go/src/net/http/transport.go:2122 +0x47
bufio.(*Reader).fill(0xc003147ce0)
	/usr/local/go/src/bufio/bufio.go:113 +0x103
bufio.(*Reader).Peek(0xc003147ce0, 0x1)
	/usr/local/go/src/bufio/bufio.go:152 +0x53
net/http.(*persistConn).readLoop(0xc002593b00)
	/usr/local/go/src/net/http/transport.go:2275 +0x172
created by net/http.(*Transport).dialConn in goroutine 2922
	/usr/local/go/src/net/http/transport.go:1944 +0x174f

goroutine 1506 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run.func1()
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:233 +0x6e
sync.(*Once).doSlow(0xc0000ba3f0?, 0x1d?)
	/usr/local/go/src/sync/once.go:78 +0xab
sync.(*Once).Do(...)
	/usr/local/go/src/sync/once.go:69
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run(0xc0000bc020?)
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:231 +0x36
created by github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).Run in goroutine 1459
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:227 +0x6a

goroutine 2390 [select, 2 minutes]:
github.com/cilium/cilium/pkg/hubble/peer.(*buffer).Pop(0xc00167b100)
	/go/src/github.com/cilium/cilium/pkg/hubble/peer/buffer.go:80 +0x125
github.com/cilium/cilium/pkg/hubble/peer.(*Service).Notify.func3()
	/go/src/github.com/cilium/cilium/pkg/hubble/peer/service.go:91 +0x39
golang.org/x/sync/errgroup.(*Group).Go.func1()
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/sync/errgroup/errgroup.go:93 +0x50
created by golang.org/x/sync/errgroup.(*Group).Go in goroutine 2387
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/sync/errgroup/errgroup.go:78 +0x93

goroutine 1473 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc00271fb80)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1446
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1231 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1270
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1532 [select, 2 minutes]:
google.golang.org/grpc/internal/transport.(*recvBufferReader).readMessageHeader(0xc003f33180, {0xc000f3d150, 0x5, 0x5})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:176 +0x9e
google.golang.org/grpc/internal/transport.(*recvBufferReader).ReadMessageHeader(0xc003f33180, {0xc000f3d150?, 0xc0024a0820?, 0xc002bfaea0?})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:145 +0x72
google.golang.org/grpc/internal/transport.(*transportReader).ReadMessageHeader(0xc001641820, {0xc000f3d150?, 0xccefc7?, 0xc002576320?})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:417 +0x25
google.golang.org/grpc/internal/transport.(*Stream).ReadMessageHeader(0xc001a17cb0, {0xc000f3d150, 0x5, 0x5})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:360 +0x9e
google.golang.org/grpc.(*parser).recvMsg(0xc000f3d140, 0x400000)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/rpc_util.go:690 +0x3b
google.golang.org/grpc.recvAndDecompress(0xc000f3d140, {0x50394a0, 0xc002bfaea0}, {0x0, 0x0}, 0x400000, 0x0, {0x0, 0x0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/rpc_util.go:850 +0x97
google.golang.org/grpc.recv(0xc003b21e34?, {0x7f4e4d30a250, 0x8388740}, {0x50394a0?, 0xc002bfaea0?}, {0x0?, 0x0?}, {0x4734640, 0xc002582820}, 0x400000, ...)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/rpc_util.go:933 +0xab
google.golang.org/grpc.(*serverStream).RecvMsg(0xc0007102a0, {0x4734640, 0xc002582820})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/stream.go:1769 +0x192
github.com/envoyproxy/go-control-plane/envoy/service/cluster/v3.(*clusterDiscoveryServiceStreamClustersServer).Recv(0xc002bf7680)
	/go/src/github.com/cilium/cilium/vendor/github.com/envoyproxy/go-control-plane/envoy/service/cluster/v3/cds_grpc.pb.go:170 +0x46
github.com/cilium/cilium/pkg/envoy/xds.(*Server).HandleRequestStream.func1(0x0?)
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:151 +0xda
created by github.com/cilium/cilium/pkg/envoy/xds.(*Server).HandleRequestStream in goroutine 1531
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:148 +0x24c

goroutine 1530 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f4e4d91e038, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002701200?, 0xc002ae2000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc002701200, {0xc002ae2000, 0x8000, 0x8000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc002701200, {0xc002ae2000?, 0xc003bf3c00?, 0x4111e0?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc001220720, {0xc002ae2000?, 0xc0041abbf8?, 0x10000000003?})
	/usr/local/go/src/net/net.go:194 +0x45
bufio.(*Reader).Read(0xc002bfae40, {0xc000710200, 0x9, 0xc0041abc18?})
	/usr/local/go/src/bufio/bufio.go:245 +0x197
io.ReadAtLeast({0x5038b80, 0xc002bfae40}, {0xc000710200, 0x9, 0x9}, 0x9)
	/usr/local/go/src/io/io.go:335 +0x91
io.ReadFull(...)
	/usr/local/go/src/io/io.go:354
golang.org/x/net/http2.readFrameHeader({0xc000710200, 0x9, 0x7e3ad80?}, {0x5038b80?, 0xc002bfae40?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/frame.go:242 +0x65
golang.org/x/net/http2.(*Framer).ReadFrame(0xc0007101c0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/frame.go:506 +0x7d
google.golang.org/grpc/internal/transport.(*http2Server).HandleStreams(0xc0024a0820, {0x50a7f78, 0xc000f3c810}, 0xc000f3ca50)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:677 +0x105
google.golang.org/grpc.(*Server).serveStreams(0xc003053a00, {0x50a7d40?, 0x8388740?}, {0x50a9da0, 0xc0024a0820}, {0x50c6e80?, 0xc001220720?})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1055 +0x396
google.golang.org/grpc.(*Server).handleRawConn.func1()
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:989 +0x56
created by google.golang.org/grpc.(*Server).handleRawConn in goroutine 1527
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:988 +0x1cb

goroutine 1386 [select, 2 minutes]:
github.com/cilium/cilium/pkg/endpoint.(*Endpoint).startRegenerationFailureHandler.func1({0x50a7fb0, 0xc00307d630})
	/go/src/github.com/cilium/cilium/pkg/endpoint/policy.go:945 +0x90
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002e52c60)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:333 +0x1c7
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1385 [select]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002e52580)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1441 [select]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003efd600)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1376 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run.func1()
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:233 +0x6e
sync.(*Once).doSlow(0xc31320?, 0xc00295b7c0?)
	/usr/local/go/src/sync/once.go:78 +0xab
sync.(*Once).Do(...)
	/usr/local/go/src/sync/once.go:69
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run(0xc0041aff98?)
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:231 +0x36
created by github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).Run in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:227 +0x6a

goroutine 535 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc001f221c8, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc001f221b0, {0xc000baac01, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x7b?}, {0xc000baac01?, 0x419514?, 0xc0029bdc58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc0025a9540)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc0025a9540)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc0025a9540, {0x3fd8fe0, 0xc004852828})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc00087a3c0, {0xc002b6f800, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc000ae1ea0, 0x0, {0x5079208, 0xc004860400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc000e8de60)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc000ae1ef0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 462
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1084 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc0035d8900, 0xc003e4e280, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc0035d8900, 0xc002b95980?, 0xc002ba4bd0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1077
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 571 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc00032b860, {0x50a7fb0, 0xc000618aa0}, 0xc00068cf50)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 552
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 572 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc0012a4480, 0xc002dc2a00, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc0012a4480, 0x49f7449?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 552
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 578 [IO wait]:
internal/poll.runtime_pollWait(0x7f4e4d918988, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc000627600?, 0xc001b42600?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).ReadMsgInet4(0xc000627600, {0xc001b42600, 0x200, 0x200}, {0xc002398570, 0x2c, 0x2c}, 0x0, 0xc002511aa8)
	/usr/local/go/src/internal/poll/fd_unix.go:329 +0x330
net.(*netFD).readMsgInet4(0xc000627600, {0xc001b42600?, 0xc0030f2700?, 0xc002511a88?}, {0xc002398570?, 0x4000a81396?, 0xc002511a80?}, 0xc002511ab0?, 0x419514?)
	/usr/local/go/src/net/fd_posix.go:84 +0x31
net.(*UDPConn).readMsg(0x0?, {0xc001b42600?, 0x42458a0?, 0x7f4e4d918a98?}, {0xc002398570?, 0x1b58?, 0x0?})
	/usr/local/go/src/net/udpsock_posix.go:101 +0x187
net.(*UDPConn).ReadMsgUDPAddrPort(0xc001962738, {0xc001b42600?, 0x49933d?, 0x7f4e4d918988?}, {0xc002398570?, 0xc002511c08?, 0x499145?})
	/usr/local/go/src/net/udpsock.go:203 +0x3e
net.(*UDPConn).ReadMsgUDP(0xc002a044c8?, {0xc001b42600?, 0x41b1200?, 0xc000627600?}, {0xc002398570?, 0xc002511c68?, 0x419fa5?})
	/usr/local/go/src/net/udpsock.go:191 +0x25
github.com/cilium/cilium/pkg/fqdn/dnsproxy.(*sessionUDPFactory).ReadRequest(0xc001962738?, 0xc001962738)
	/go/src/github.com/cilium/cilium/pkg/fqdn/dnsproxy/udp.go:163 +0x5f
github.com/cilium/dns.(*Server).readUDP(0xc000d04900, 0xc001962738, 0x77359400)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/dns/server.go:688 +0xe2
github.com/cilium/dns.defaultReader.ReadUDP({0x7dbd900?}, 0x423eaa0?, 0xc000b94840?)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/dns/server.go:174 +0x13
github.com/cilium/dns.(*Server).serveUDP(0xc000d04900, {0x50c0e90, 0xc001962738})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/dns/server.go:510 +0x242
github.com/cilium/dns.(*Server).ActivateAndServe(0xc000d04900)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/dns/server.go:367 +0x19a
github.com/cilium/cilium/pkg/fqdn/dnsproxy.(*DNSProxy).Listen.func1(0xc000d04900)
	/go/src/github.com/cilium/cilium/pkg/fqdn/dnsproxy/proxy.go:699 +0x2a8
created by github.com/cilium/cilium/pkg/fqdn/dnsproxy.(*DNSProxy).Listen in goroutine 332
	/go/src/github.com/cilium/cilium/pkg/fqdn/dnsproxy/proxy.go:688 +0x45b

goroutine 573 [sync.Cond.Wait]:
sync.runtime_notifyListWait(0xc0012a44c8, 0x3)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc0012a44b0, {0xc001085801, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x77?}, {0xc001085801?, 0x419514?, 0xc003cadc58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc002dc2c80)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc002dc2c80)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc002dc2c80, {0x3fd8fe0, 0xc0036fe420})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc0013b62a0, {0xc0025bf000, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc000618b90, 0x0, {0x5079208, 0xc004bea700})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc002d13240)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc000618c30)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 552
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1087 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc0035d8c00, 0xc003e4ea00, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc0035d8c00, 0x50b22c0?, 0xc0004b82a0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1160
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1081 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc0016684c8, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc0016684b0, {0xc00308a601, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x7b?}, {0xc00308a601?, 0x419514?, 0xc002639c58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc000c9fe00)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc000c9fe00)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc000c9fe00, {0x3fd8fe0, 0xc0048a53c8})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc000d4d5c0, {0xc003e38000, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc003e10280, 0x0, {0x5079208, 0xc0048dc840})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc000c81600)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc003e102d0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1100
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1021 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0019fb760)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 528 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 475
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1083 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc00315a870, {0x50a7fb0, 0xc003e103c0}, 0xc000573180)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1077
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1289 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc003ce7f10}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc003e427d0}, {0x7f4e4d5ed2d0, 0xc003cf5680}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc003ce7f10?}, {0xc0001ad418?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc003e427d0?}, {0x7f4e4d5ed2d0?, 0xc003cf5680?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc0019f6a50, {0x50a9338, 0xc003ce7f10}, {0x0, 0x0}, 0xc000616310)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc0019f6a50, {0x50a9338, 0xc003ce7f10}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc0019f6a50, {0x50a9338, 0xc003ce7f10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x0?, 0xffffffffffffffff?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc003ce7f10?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc003ce7f10}, 0xc003bd5ea8, {0x504c4a0, 0xc00253cbe0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc00253cbe0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc0019f6a50, {0x50a9338, 0xc003ce7f10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1351
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1324 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc00102d2d0, 0x1)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dcdc0, {0x50a7fb0, 0xc000dc59a0}, 0xc003cbe4d0, {0x50c1950, 0xc002580370})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1238
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 1020 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0019faf20)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1315 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1270
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1377 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc0035d8948, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc0035d8930, {0xc00308ac01, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x86?}, {0xc00308ac01?, 0x419514?, 0xc003c0dc58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc002ea9cc0)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc002ea9cc0)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc002ea9cc0, {0x3fd8fe0, 0xc0041a3038})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc000d783f0, {0xc003635000, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc003edce60, 0x0, {0x5079208, 0xc00164e700})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc00055f2e0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc003edceb0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1077
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1378 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1289
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1142 [select, 3 minutes]:
github.com/cilium/cilium/pkg/crypto/certloader.(*Watcher).Watch.func2()
	/go/src/github.com/cilium/cilium/pkg/crypto/certloader/watcher.go:140 +0x17c
created by github.com/cilium/cilium/pkg/crypto/certloader.(*Watcher).Watch in goroutine 1140
	/go/src/github.com/cilium/cilium/pkg/crypto/certloader/watcher.go:137 +0x205

goroutine 1254 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc001668480, 0xc002cc0b40, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc001668480, 0xc002d11110?, 0xc002d11120?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1100
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1100 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc0036b2a80}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc003e102d0}, {0x7f4e4d5ed2d0, 0xc0036b0180}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc0036b2a80?}, {0xc002c84e60?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc003e102d0?}, {0x7f4e4d5ed2d0?, 0xc0036b0180?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc000950a50, {0x50a9338, 0xc0036b2a80}, {0x0, 0x0}, 0xc0005ccd20)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc000950a50, {0x50a9338, 0xc0036b2a80}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc000950a50, {0x50a9338, 0xc0036b2a80})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x50385a0?, 0x480412?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc0036b2a80?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc0036b2a80}, 0xc002f25ea8, {0x504c4a0, 0xc000855220}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc000855220?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc000950a50, {0x50a9338, 0xc0036b2a80})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1095
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1075 [chan receive, 3 minutes]:
github.com/cilium/cilium/daemon/healthz.registerAgentHealthHTTPService.func1.1()
	/go/src/github.com/cilium/cilium/daemon/healthz/agenthealth.go:85 +0x2c
created by github.com/cilium/cilium/daemon/healthz.registerAgentHealthHTTPService.func1 in goroutine 1135
	/go/src/github.com/cilium/cilium/daemon/healthz/agenthealth.go:84 +0x42b

goroutine 1253 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc000950a50, {0x50a7fb0, 0xc002959c20}, 0xc0005ccd20)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1100
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 632 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 476
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1314 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc000eb3ad0, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dc9c0, {0x50a7fb0, 0xc000dc4dc0}, 0xc003affb20, {0x50c16d0, 0xc000d470d0})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1270
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 1427 [syscall, 2 minutes]:
os/signal.signal_recv()
	/usr/local/go/src/runtime/sigqueue.go:152 +0x29
os/signal.loop()
	/usr/local/go/src/os/signal/signal_unix.go:23 +0x13
created by os/signal.Notify.func1.1 in goroutine 1
	/usr/local/go/src/os/signal/signal.go:152 +0x1f

goroutine 631 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc00304fdd0, 0x8)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dc8c0, {0x50a7fb0, 0xc00048fc70}, 0xc002d29b20, {0x50c1630, 0xc003078590})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 476
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 630 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0xc000b94840?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 476
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1024 [select, 3 minutes]:
github.com/cilium/stream.ToTruncatingChannel[...].func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sinks.go:161 +0x13f
created by github.com/cilium/stream.ToTruncatingChannel[...] in goroutine 469
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sinks.go:154 +0xb9

goroutine 629 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 476
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 527 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc002db7e10, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x1?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dcdc0, {0x50a7fb0, 0xc002d978b0}, 0xc001f27ce0, {0x50c1950, 0xc002580370})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 475
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 1326 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...].func1.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:108 +0x12a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...].func1 in goroutine 1238
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:105 +0xca

goroutine 1325 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1238
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1323 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0xc002d29f10?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1238
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1224 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1270
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 1077 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc0035fea10}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc003edceb0}, {0x50b0080, 0xc000c81000}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc0035fea10?}, {0xc001e11f68?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc003edceb0?}, {0x50b0080?, 0xc000c81000?}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc00315a870, {0x50a9338, 0xc0035fea10}, {0x0, 0x0}, 0xc000573180)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc00315a870, {0x50a9338, 0xc0035fea10}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc00315a870, {0x50a9338, 0xc0035fea10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x0?, 0x0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc0035fea10?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc0035fea10}, 0xc003e19ec8, {0x504c4a0, 0xc003e10050}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc003e10050?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc00315a870, {0x50a9338, 0xc0035fea10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*Reflector).Run(0x44d352?, 0x5cf865?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:349 +0x1d
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9.5()
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:485 +0x3b
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9 in goroutine 1242
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:484 +0x21f

goroutine 1317 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0xc00200c3f0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1270
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1322 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1238
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 1321 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 1320
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 1320 [select, 2 minutes]:
github.com/cilium/cilium/pkg/policy/k8s.startK8sPolicyWatcher.serviceEventStream.func7.1()
	/go/src/github.com/cilium/cilium/pkg/policy/k8s/service.go:151 +0x631
created by github.com/cilium/cilium/pkg/policy/k8s.startK8sPolicyWatcher.serviceEventStream.func7 in goroutine 1270
	/go/src/github.com/cilium/cilium/pkg/policy/k8s/service.go:70 +0x105

goroutine 1319 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1270
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1318 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc00102c690, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dc940, {0x50a7fb0, 0xc000dc4f00}, 0xc003affc00, {0x50c1680, 0xc000d47120})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1270
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 1225 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0x0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1270
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1626 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f4e4d91dcf0, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc00470be80?, 0xc00484c000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc00470be80, {0xc00484c000, 0x1000, 0x1000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc00470be80, {0xc00484c000?, 0xc00466fad0?, 0x4fd085?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc0019eb0f8, {0xc00484c000?, 0x0?, 0x0?})
	/usr/local/go/src/net/net.go:194 +0x45
net/http.(*connReader).Read(0xc004817560, {0xc00484c000, 0x1000, 0x1000})
	/usr/local/go/src/net/http/server.go:798 +0x159
bufio.(*Reader).fill(0xc0037f92c0)
	/usr/local/go/src/bufio/bufio.go:113 +0x103
bufio.(*Reader).Peek(0xc0037f92c0, 0x4)
	/usr/local/go/src/bufio/bufio.go:152 +0x53
net/http.(*conn).serve(0xc001c31290, {0x50a7f78, 0xc000b755c0})
	/usr/local/go/src/net/http/server.go:2137 +0x785
created by net/http.(*Server).Serve in goroutine 1129
	/usr/local/go/src/net/http/server.go:3454 +0x485

goroutine 1232 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1270
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 1639 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc00467c500)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1506
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 1022 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003708420)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1252 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1100
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1113 [select, 2 minutes]:
github.com/cilium/cilium/pkg/nodediscovery.(*NodeDiscovery).StartDiscovery.Debounce[...].func4.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:281 +0x1b5
created by github.com/cilium/cilium/pkg/nodediscovery.(*NodeDiscovery).StartDiscovery.Debounce[...].func4 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:271 +0x185

goroutine 1226 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc000eb27d0, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dcac0, {0x50a7fb0, 0xc000dc4be0}, 0xc003aff960, {0x50c1770, 0xc000d47030})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1270
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 1076 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 1237
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 1227 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1270
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1313 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0xc000394470?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1270
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1082 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1077
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1372 [chan receive, 2 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0xf5
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1371
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1228 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1270
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 1389 [select, 2 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).reconcileLoop(0x50f4620, {0x50a7f78, 0xc0008b0210}, {0x50b22c0, 0xc003f5b080})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:64 +0x3a6
github.com/cilium/hive/job.(*jobOneShot).start(0xc002001b00, {0x50a7f78, 0xc0008b0210}, 0x8388740?, {0x50b22c0, 0xc002001aa0}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1133
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1230 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc000eb3010, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dca40, {0x50a7fb0, 0xc000dc4cd0}, 0xc003affa40, {0x50c1720, 0xc000d47080})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1270
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 1620 [select, 2 minutes]:
reflect.rselect({0xc00095e240, 0x9, 0xc002f19b30?})
	/usr/local/go/src/runtime/select.go:616 +0x2ce
reflect.Select({0xc00337aa00?, 0x9, 0x8388740?})
	/usr/local/go/src/reflect/value.go:2875 +0x5ca
github.com/cilium/cilium/pkg/envoy/xds.(*Server).processRequestStream(0xc001065410, {0x50a7f78, 0xc0036a7080}, 0xc0010da1f0, {0x7f4e4d88d860, 0xc0010da1e0}, 0xc003ede930, {0x4a71e27?, 0x35})
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:276 +0x8a5
github.com/cilium/cilium/pkg/envoy/xds.(*Server).HandleRequestStream(0xc001065410, {0x50a7f78, 0xc0036a7080}, {0x7f4e4d88d860, 0xc0010da1e0}, {0x4a71e27, 0x35})
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:184 +0x293
github.com/cilium/cilium/pkg/envoy.(*xdsGRPCServer).StreamListeners(0xc001065410, {0x50c8768, 0xc0010da1e0})
	/go/src/github.com/cilium/cilium/pkg/envoy/grpc.go:105 +0x6d
github.com/envoyproxy/go-control-plane/envoy/service/listener/v3._ListenerDiscoveryService_StreamListeners_Handler({0x4826a60?, 0xc001065410}, {0x50b9420, 0xc000a50700})
	/go/src/github.com/cilium/cilium/vendor/github.com/envoyproxy/go-control-plane/envoy/service/listener/v3/lds_grpc.pb.go:177 +0xd8
google.golang.org/grpc.(*Server).processStreamingRPC(0xc003053a00, {0x50a7f78, 0xc0036a6fc0}, 0xc002794900, 0xc0010657a0, 0x7df0d60, 0x0)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1721 +0x1252
google.golang.org/grpc.(*Server).handleStream(0xc003053a00, {0x50a9da0, 0xc0024a0820}, 0xc002794900)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1845 +0xb47
google.golang.org/grpc.(*Server).serveStreams.func2.1()
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1061 +0x7f
created by google.golang.org/grpc.(*Server).serveStreams.func2 in goroutine 1530
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1072 +0x11d

goroutine 1531 [select, 2 minutes]:
reflect.rselect({0xc002489c20, 0x9, 0xc003f33130?})
	/usr/local/go/src/runtime/select.go:616 +0x2ce
reflect.Select({0xc00256b000?, 0x9, 0x8388740?})
	/usr/local/go/src/reflect/value.go:2875 +0x5ca
github.com/cilium/cilium/pkg/envoy/xds.(*Server).processRequestStream(0xc001065410, {0x50a7f78, 0xc000f3d2c0}, 0xc002bf7690, {0x7f4e4d30a278, 0xc002bf7680}, 0xc003cdbab0, {0x4a683b4?, 0x33})
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:276 +0x8a5
github.com/cilium/cilium/pkg/envoy/xds.(*Server).HandleRequestStream(0xc001065410, {0x50a7f78, 0xc000f3d2c0}, {0x7f4e4d30a278, 0xc002bf7680}, {0x4a683b4, 0x33})
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:184 +0x293
github.com/cilium/cilium/pkg/envoy.(*xdsGRPCServer).StreamClusters(0xc001065410, {0x50c8660, 0xc002bf7680})
	/go/src/github.com/cilium/cilium/pkg/envoy/grpc.go:133 +0x6d
github.com/envoyproxy/go-control-plane/envoy/service/cluster/v3._ClusterDiscoveryService_StreamClusters_Handler({0x4826a60?, 0xc001065410}, {0x50b9420, 0xc0007102a0})
	/go/src/github.com/cilium/cilium/vendor/github.com/envoyproxy/go-control-plane/envoy/service/cluster/v3/cds_grpc.pb.go:151 +0xd8
google.golang.org/grpc.(*Server).processStreamingRPC(0xc003053a00, {0x50a7f78, 0xc000f3d0e0}, 0xc002bfaea0, 0xc001065620, 0x7df0cc0, 0x0)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1721 +0x1252
google.golang.org/grpc.(*Server).handleStream(0xc003053a00, {0x50a9da0, 0xc0024a0820}, 0xc002bfaea0)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1845 +0xb47
google.golang.org/grpc.(*Server).serveStreams.func2.1()
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1061 +0x7f
created by google.golang.org/grpc.(*Server).serveStreams.func2 in goroutine 1530
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1072 +0x11d

goroutine 1121 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run.func1()
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:233 +0x6e
sync.(*Once).doSlow(0x0?, 0x0?)
	/usr/local/go/src/sync/once.go:78 +0xab
sync.(*Once).Do(...)
	/usr/local/go/src/sync/once.go:69
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run(0xc0024b81c0?)
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:231 +0x36
created by github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).Run in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:227 +0x6a

goroutine 1288 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 1351
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 1112 [chan receive, 3 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1474 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0026a8160)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1446
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1095 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc0036b01a8, 0x1)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc002c958e0?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc0036b0180, 0xc001f3f440)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc0036b2a80?}, 0xc000bd4d50?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc0036b2a80}, 0xc003c0bde8, {0x504c480, 0xc000bd4d50}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc0036b2a80}, 0xc002c45de8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc000c9dad0, {0x50a9338, 0xc0036b2a80})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0xc0036b2a80?, 0x526ec0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/informer.(*privateRunner).Run(0xc00064db20, 0xc0036b2a80)
	/go/src/github.com/cilium/cilium/pkg/k8s/informer/informer.go:46 +0x9e
github.com/cilium/cilium/pkg/k8s/identitybackend.(*crdBackend).ListAndWatch(0xc001f3f3c0, {0x50a7fb0, 0xc000855130}, {0x508d920, 0xc001029388})
	/go/src/github.com/cilium/cilium/pkg/k8s/identitybackend/identity.go:427 +0x56f
github.com/cilium/cilium/pkg/allocator.(*cache).start.func1()
	/go/src/github.com/cilium/cilium/pkg/allocator/cache.go:264 +0x3e
created by github.com/cilium/cilium/pkg/allocator.(*cache).start in goroutine 1118
	/go/src/github.com/cilium/cilium/pkg/allocator/cache.go:263 +0x10c

goroutine 1023 [chan receive, 3 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 469
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1122 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x50880e0, {0x50a7f78, 0xc000be6e40}, 0xc003012790, {0x50b22c0?, 0xc002950780}, {{{0xc000f79ce0, 0x1, 0x1}}, 0xc000c0ade0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1370 [select, 2 minutes]:
github.com/cilium/cilium/pkg/allocator.(*Allocator).startLocalKeySync.func1(...)
	/go/src/github.com/cilium/cilium/pkg/allocator/allocator.go:1053
created by github.com/cilium/cilium/pkg/allocator.(*Allocator).startLocalKeySync in goroutine 1096
	/go/src/github.com/cilium/cilium/pkg/allocator/allocator.go:1049 +0x5a

goroutine 1120 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc002577c20)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 1078 [select]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x127
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10 in goroutine 1242
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 1139 [select]:
github.com/cilium/cilium/pkg/fswatcher.(*Watcher).loop(0xc000957090)
	/go/src/github.com/cilium/cilium/pkg/fswatcher/fswatcher.go:165 +0x9f
created by github.com/cilium/cilium/pkg/fswatcher.New in goroutine 1125
	/go/src/github.com/cilium/cilium/pkg/fswatcher/fswatcher.go:151 +0x34c

goroutine 1117 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/nodediscovery.(*NodeDiscovery).StartDiscovery.func3()
	/go/src/github.com/cilium/cilium/pkg/nodediscovery/nodediscovery.go:144 +0x112
created by github.com/cilium/cilium/pkg/nodediscovery.(*NodeDiscovery).StartDiscovery in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/nodediscovery/nodediscovery.go:142 +0x329

goroutine 1123 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x50880a0, {0x50a7f78, 0xc000be71a0}, 0xc00300f7a0, {0x50b22c0?, 0xc002950780}, {{{0xc000f79ce0, 0x1, 0x1}}, 0xc000c0ade0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1124 [select, 3 minutes]:
github.com/cilium/hive/job.(*jobTimer).start(0xc002950a20, {0x50a7f78, 0xc000be7350}, 0x5cf865?, {0x50b22c0, 0xc002950780}, {{{0xc000f79ce0, 0x1, 0x1}}, 0xc000c0ade0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1316 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1270
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 1126 [select]:
github.com/cilium/hive/job.(*jobTimer).start(0xc002950de0, {0x50a7f78, 0xc000be7b90}, 0x0?, {0x50b22c0, 0xc002950d80}, {{{0xc001c94000, 0x1, 0x1}}, 0xc000395790, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1103 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/shell/server.shell.listener.func1()
	/go/src/github.com/cilium/cilium/pkg/shell/server/shell_server.go:76 +0x3e
created by github.com/cilium/cilium/pkg/shell/server.shell.listener in goroutine 1134
	/go/src/github.com/cilium/cilium/pkg/shell/server/shell_server.go:75 +0x2d6

goroutine 1128 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/status.newStatusCollector.func1({0x50a7f78, 0xc000bf0330}, {0x7?, 0xfffffffffffffffc?})
	/go/src/github.com/cilium/cilium/pkg/status/cell.go:154 +0x32e
github.com/cilium/hive/job.(*jobOneShot).start(0xc002951380, {0x50a7f78, 0xc000bf0330}, 0x0?, {0x50b22c0, 0xc002950720}, {{{0xc000f79080, 0x1, 0x1}}, 0xc00058d9e0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1129 [IO wait]:
internal/poll.runtime_pollWait(0x7f4e4d918cd0, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc00279da00?, 0x20?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc00279da00)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc00279da00)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0xc002c48df8?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).Accept(0xc000bf0750)
	/usr/local/go/src/net/unixsock.go:260 +0x30
net/http.(*Server).Serve(0xc000dac500, {0x5087d40, 0xc000bf0750})
	/usr/local/go/src/net/http/server.go:3424 +0x30c
github.com/cilium/cilium/api/v1/server.(*Server).Start.func1({0x5087d40?, 0xc000bf0750?})
	/go/src/github.com/cilium/cilium/api/v1/server/server.go:466 +0x72
created by github.com/cilium/cilium/api/v1/server.(*Server).Start in goroutine 1
	/go/src/github.com/cilium/cilium/api/v1/server/server.go:464 +0x4a5

goroutine 1130 [select, 3 minutes]:
github.com/cilium/cilium/pkg/metrics.(*sampler).collectLoop(0xc000d14870, {0x50a7f78, 0xc000bf09f0}, {0x50b22c0, 0xc001e131a0})
	/go/src/github.com/cilium/cilium/pkg/metrics/sampler.go:305 +0x117
github.com/cilium/hive/job.(*jobOneShot).start(0xc002003620, {0x50a7f78, 0xc000bf09f0}, 0x0?, {0x50b22c0, 0xc002003500}, {{{0xc0009fe440, 0x1, 0x1}}, 0xc001073c40, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1131 [select, 3 minutes]:
github.com/cilium/hive/job.(*jobTimer).start(0xc002003920, {0x50a7f78, 0xc000bf0ba0}, 0x0?, {0x50b22c0, 0xc002003500}, {{{0xc0009fe440, 0x1, 0x1}}, 0xc001073c40, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1132 [chan receive, 3 minutes]:
github.com/cilium/workerpool.(*WorkerPool).run(0xc0008661e0, {0x50a7fb0, 0xc000866230})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/workerpool/workerpool.go:173 +0x6e
created by github.com/cilium/workerpool.NewWithContext in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/workerpool/workerpool.go:68 +0x13b

goroutine 574 [chan receive, 3 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1127
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 575 [select, 3 minutes]:
github.com/cilium/cilium/pkg/hubble/observer.(*namespaceManager).Run(0xc0013b66f0, {0x50a7f78, 0xc000bf01b0})
	/go/src/github.com/cilium/cilium/pkg/hubble/observer/namespace_manager.go:49 +0xf7
created by github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch in goroutine 1127
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:295 +0xbaa

goroutine 576 [runnable]:
github.com/cilium/cilium/pkg/hubble/observer.(*LocalObserverServer).Start(0xc0026ff8c0)
	/go/src/github.com/cilium/cilium/pkg/hubble/observer/local_observer.go:124 +0x97
created by github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch in goroutine 1127
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:306 +0xc45

goroutine 1153 [runnable]:
syscall.Syscall6(0xe8, 0x3b, 0xc002dbd1a0, 0x8, 0xffffffffffffffff, 0x0, 0x0)
	/usr/local/go/src/syscall/syscall_linux.go:95 +0x39
golang.org/x/sys/unix.EpollWait(0x50385a0?, {0xc002dbd1a0?, 0x8?, 0x8?}, 0xc00068d100?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/sys/unix/zsyscall_linux_amd64.go:55 +0x4f
github.com/cilium/ebpf/internal/unix.EpollWait(...)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/ebpf/internal/unix/types_linux.go:114
github.com/cilium/ebpf/internal/epoll.(*Poller).Wait(0xc000d36660, {0xc002dbd1a0, 0x8, 0x8}, {0xaea0a06400040?, 0xe2979c01000a7c00?, 0x0?})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/ebpf/internal/epoll/poller.go:177 +0x24c
github.com/cilium/ebpf/perf.(*Reader).ReadInto(0xc000a50000, 0xc0034d6e60)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/ebpf/perf/reader.go:366 +0x2b9
github.com/cilium/ebpf/perf.(*Reader).Read(...)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/ebpf/perf/reader.go:333
github.com/cilium/cilium/pkg/monitor/agent.(*agent).handleEvents(0xc00121cbd0, {0x50a7fb0, 0xc0006191d0})
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/agent.go:349 +0x4a6
created by github.com/cilium/cilium/pkg/monitor/agent.(*agent).startPerfReaderLocked in goroutine 1127
	/go/src/github.com/cilium/cilium/pkg/monitor/agent/agent.go:213 +0xd0

goroutine 555 [select, 3 minutes]:
github.com/cilium/cilium/pkg/auth.registerSignalAuthenticationJob.FromChannel[...].func2.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:108 +0xd0
created by github.com/cilium/cilium/pkg/auth.registerSignalAuthenticationJob.FromChannel[...].func2 in goroutine 1122
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:105 +0xca

goroutine 556 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 557 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 558 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 559 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 560 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1169 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1170 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1171 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1172 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1173 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1174 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1175 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1176 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1177 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1178 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1179 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1180 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1181 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1182 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1183 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1184 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1185 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1186 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1187 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1188 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1189 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1190 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1191 [select]:
github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe.func1()
	/go/src/github.com/cilium/cilium/pkg/status/status.go:143 +0x10c
created by github.com/cilium/cilium/pkg/status.(*Collector).spawnProbe in goroutine 1128
	/go/src/github.com/cilium/cilium/pkg/status/status.go:129 +0xbc

goroutine 1432 [sync.WaitGroup.Wait, 2 minutes]:
sync.runtime_SemacquireWaitGroup(0xc002d118c0?)
	/usr/local/go/src/runtime/sema.go:110 +0x25
sync.(*WaitGroup).Wait(0xc001bfa490?)
	/usr/local/go/src/sync/waitgroup.go:118 +0x48
github.com/cilium/cilium/api/v1/health/server.(*Server).Serve(0xc001bfa490)
	/go/src/github.com/cilium/cilium/api/v1/health/server/server.go:318 +0x95
github.com/cilium/cilium/pkg/health/server.(*Server).runActiveServices(0xc001bfa488)
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:372 +0x12c
github.com/cilium/cilium/pkg/health/server.(*Server).Serve.func2()
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:390 +0x25
created by github.com/cilium/cilium/pkg/health/server.(*Server).Serve in goroutine 1430
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:389 +0xc7

goroutine 1431 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/health/probe/responder.(*Server).Serve(0xc0001cc750)
	/go/src/github.com/cilium/cilium/pkg/health/probe/responder/responder.go:55 +0xce
github.com/cilium/cilium/pkg/health/server.(*Server).Serve.func1()
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:386 +0x27
created by github.com/cilium/cilium/pkg/health/server.(*Server).Serve in goroutine 1430
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:385 +0x78

goroutine 1429 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc00231f4a0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1387
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1430 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/health/server.(*Server).Serve(0xc001bfa488)
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:394 +0xdc
github.com/cilium/cilium/pkg/health.(*CiliumHealth).runServer.func1()
	/go/src/github.com/cilium/cilium/pkg/health/health_connectivity_node.go:95 +0x6b
created by github.com/cilium/cilium/pkg/health.(*CiliumHealth).runServer in goroutine 1458
	/go/src/github.com/cilium/cilium/pkg/health/health_connectivity_node.go:93 +0x168

goroutine 1134 [IO wait, 3 minutes]:
internal/poll.runtime_pollWait(0x7f4e4d918410, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc003b29e00?, 0x1?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc003b29e00)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc003b29e00)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0x1?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).Accept(0xc000d1e480)
	/usr/local/go/src/net/unixsock.go:260 +0x30
github.com/cilium/cilium/pkg/shell/server.shell.listener({{0x5070750?, 0xc001feb950?}, 0xc000e80e30?, 0xc000d1a750?}, {0x50a7f78, 0xc000bf1c20}, {0x50b22c0, 0xc0035c49c0})
	/go/src/github.com/cilium/cilium/pkg/shell/server/shell_server.go:85 +0x3dc
github.com/cilium/hive/job.(*jobOneShot).start(0xc001260360, {0x50a7f78, 0xc000bf1c20}, 0x0?, {0x50b22c0, 0xc00094cf00}, {{{0xc000992fa0, 0x1, 0x1}}, 0xc000e80e30, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1135 [IO wait]:
internal/poll.runtime_pollWait(0x7f4e4d918870, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc00132ee80?, 0x900000036?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc00132ee80)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc00132ee80)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*TCPListener).accept(0xc000eeb040)
	/usr/local/go/src/net/tcpsock_posix.go:159 +0x1b
net.(*TCPListener).Accept(0xc000eeb040)
	/usr/local/go/src/net/tcpsock.go:380 +0x30
net/http.(*Server).Serve(0xc000d05b00, {0x5089f90, 0xc000eeb040})
	/usr/local/go/src/net/http/server.go:3424 +0x30c
github.com/cilium/cilium/daemon/healthz.registerAgentHealthHTTPService.func1({0x50a7f78, 0xc000c00120}, {0x7?, 0xfffffffffffffffc?})
	/go/src/github.com/cilium/cilium/daemon/healthz/agenthealth.go:90 +0x4ea
github.com/cilium/hive/job.(*jobOneShot).start(0xc0012605a0, {0x50a7f78, 0xc000c00120}, 0x0?, {0x50b22c0, 0xc0012604e0}, {{{0xc000d33e60, 0x1, 0x1}}, 0xc000f042b0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1136 [select, 3 minutes]:
github.com/cilium/cilium/pkg/endpointmanager.(*namespaceUpdater).run(0xc001088880, {0x50a7f78, 0xc000c00bd0}, {0xc003e1fd78?, 0x4f1373?})
	/go/src/github.com/cilium/cilium/pkg/endpointmanager/namespace_updater.go:62 +0x133
github.com/cilium/hive/job.(*jobOneShot).start(0xc0012608a0, {0x50a7f78, 0xc000c00bd0}, 0x0?, {0x50b22c0, 0xc002000a80}, {{{0xc000eadd60, 0x1, 0x1}}, 0xc001073680, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1815 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f4e4d91d778, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc0037bc200?, 0xc004c2c000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc0037bc200, {0xc004c2c000, 0x1000, 0x1000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc0037bc200, {0xc004c2c000?, 0x4083f4?, 0x0?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc001928ae8, {0xc004c2c000?, 0x4081ef?, 0xc0037b2f30?})
	/usr/local/go/src/net/net.go:194 +0x45
net/http.(*persistConn).Read(0xc001a5c000, {0xc004c2c000?, 0x8e59e5?, 0x50385a0?})
	/usr/local/go/src/net/http/transport.go:2122 +0x47
bufio.(*Reader).fill(0xc004c26300)
	/usr/local/go/src/bufio/bufio.go:113 +0x103
bufio.(*Reader).Peek(0xc004c26300, 0x1)
	/usr/local/go/src/bufio/bufio.go:152 +0x53
net/http.(*persistConn).readLoop(0xc001a5c000)
	/usr/local/go/src/net/http/transport.go:2275 +0x172
created by net/http.(*Transport).dialConn in goroutine 1600
	/usr/local/go/src/net/http/transport.go:1944 +0x174f

goroutine 1598 [IO wait]:
internal/poll.runtime_pollWait(0x7f4e4d91df20, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc0037bc080?, 0x900000036?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc0037bc080)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc0037bc080)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*TCPListener).accept(0xc00295bc40)
	/usr/local/go/src/net/tcpsock_posix.go:159 +0x1b
net.(*TCPListener).Accept(0xc00295bc40)
	/usr/local/go/src/net/tcpsock.go:380 +0x30
net/http.(*Server).Serve(0xc000dac200, {0x5089f90, 0xc00295bc40})
	/usr/local/go/src/net/http/server.go:3424 +0x30c
net/http.(*Server).ListenAndServe(0xc000dac200)
	/usr/local/go/src/net/http/server.go:3350 +0x71
github.com/cilium/cilium/pkg/health/probe/responder.(*Server).Serve.func1()
	/go/src/github.com/cilium/cilium/pkg/health/probe/responder/responder.go:50 +0x25
created by github.com/cilium/cilium/pkg/health/probe/responder.(*Server).Serve in goroutine 1431
	/go/src/github.com/cilium/cilium/pkg/health/probe/responder/responder.go:49 +0x51

goroutine 1654 [select, 2 minutes]:
net/http.(*persistConn).writeLoop(0xc0004b3560)
	/usr/local/go/src/net/http/transport.go:2590 +0xe7
created by net/http.(*Transport).dialConn in goroutine 1652
	/usr/local/go/src/net/http/transport.go:1945 +0x17a5

goroutine 1235 [select]:
github.com/cilium/hive/job.(*jobTimer).start(0xc001260ea0, {0x50a7f78, 0xc000c01980}, 0x0?, {0x50b22c0, 0xc001260de0}, {{{0xc001058440, 0x1, 0x1}}, 0xc000a53ea0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1508 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002c9d1e0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1459
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1237 [select, 3 minutes]:
github.com/cilium/cilium/pkg/loadbalancer/writer.(*nodePortAddrReconciler).nodePortAddressReconcilerLoop(0xc0011747c0, {0x50a7f78, 0xc000d10420}, {0xc003cabd78?, 0x4f1373?})
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/writer/node_addr_reconciler.go:83 +0x14e
github.com/cilium/hive/job.(*jobOneShot).start(0xc001261200, {0x50a7f78, 0xc000d10420}, 0x0?, {0x50b22c0, 0xc0012611a0}, {{{0xc0011b1c20, 0x1, 0x1}}, 0xc00167dc80, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1238 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/loadbalancer/reflectors.runServiceEndpointsReflector({_, _}, {_, _}, {{{}}, 0xc000eaef30, 0xc0017d6aa0, {0x50a8268, 0xc00125e0a0}, {0x5070750, ...}, ...}, ...)
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/reflectors/k8s.go:385 +0x645
github.com/cilium/cilium/pkg/loadbalancer/reflectors.RegisterK8sReflector.func1({0x50a7f78?, 0xc000d106f0?}, {0x50b22c0?, 0xc0035c4d20?})
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/reflectors/k8s.go:134 +0x69
github.com/cilium/hive/job.(*jobOneShot).start(0xc0012618c0, {0x50a7f78, 0xc000d106f0}, 0x0?, {0x50b22c0, 0xc001261380}, {{{0xc00125e3c0, 0x1, 0x1}}, 0xc0017d6aa0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1239 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/loadbalancer/reflectors.runPodReflector({_, _}, {_, _}, {{{}}, 0xc000eaef30, 0xc0017d6aa0, {0x50a8268, 0xc00125e0a0}, {0x5070750, ...}, ...}, ...)
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/reflectors/k8s.go:223 +0x4da
github.com/cilium/cilium/pkg/loadbalancer/reflectors.RegisterK8sReflector.func2({0x50a7f78?, 0xc000d10870?}, {0x50b22c0?, 0xc0035c4de0?})
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/reflectors/k8s.go:137 +0x65
github.com/cilium/hive/job.(*jobOneShot).start(0xc001261920, {0x50a7f78, 0xc000d10870}, 0x0?, {0x50b22c0, 0xc001261380}, {{{0xc00125e3c0, 0x1, 0x1}}, 0xc0017d6aa0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1240 [select, 3 minutes]:
github.com/cilium/hive/job.(*jobTimer).start(0xc001261c80, {0x50a7f78, 0xc000d10c60}, 0xc001668180?, {0x50b22c0, 0xc001261c20}, {{{0xc000d5ec20, 0x1, 0x1}}, 0xc000ed7040, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1241 [select, 2 minutes]:
github.com/cilium/cilium/pkg/loadbalancer/reconciler.socketTerminationLoop({{{}}, {0x5070750, 0xc002041b90}, 0xc000eaf650, {0x5118218, 0xc002698200}, 0xc001802870, {{0x2faf080, 0x2faf080, 0x10000, ...}, ...}, ...}, ...)
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/reconciler/termination.go:159 +0x3b7
github.com/cilium/cilium/pkg/loadbalancer/reconciler.registerSocketTermination.func1({0x50a7f78?, 0xc000d10f60?}, {0x50b22c0?, 0xc0035c4ea0?})
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/reconciler/termination.go:112 +0x7b
github.com/cilium/hive/job.(*jobOneShot).start(0xc000cd6780, {0x50a7f78, 0xc000d10f60}, 0xc0004467d0?, {0x50b22c0, 0xc000cd6660}, {{{0xc0011804e0, 0x1, 0x1}}, 0xc001802870, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1242 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run(0x5122320, {0x50a7f78, 0xc000d11200}, {0x50b22c0, 0xc0035c4f00})
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:434 +0x713
github.com/cilium/hive/job.(*jobOneShot).start(0xc000cd6d20, {0x50a7f78, 0xc000d11200}, 0xc002579fd0?, {0x50b22c0, 0xc000cd6c00}, {{{0xc0013c0840, 0x1, 0x1}}, 0xc000ed7770, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1243 [select]:
reflect.rselect({0xc003bf7900, 0x2, 0xc003bf7878?})
	/usr/local/go/src/runtime/select.go:616 +0x2ce
reflect.Select({0xc00352f500?, 0x2, 0xc003bf7ae0?})
	/usr/local/go/src/reflect/value.go:2875 +0x5ca
github.com/cilium/statedb.(*WatchSet).Wait(0xc001168720, {0x50a7f78, 0xc000d11380}, 0xc001168840?)
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/watchset.go:114 +0x648
github.com/cilium/cilium/pkg/loadbalancer/redirectpolicy.(*lrpController).run(0xc002041dd0, {0x50a7f78, 0xc000d11380}, {0xc003bf7d78?, 0x4f1373?})
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/redirectpolicy/controller.go:185 +0x825
github.com/cilium/hive/job.(*jobOneShot).start(0xc000cd72c0, {0x50a7f78, 0xc000d11380}, 0xc002f7b7d0?, {0x50b22c0, 0xc000cd6c00}, {{{0xc0013c0840, 0x1, 0x1}}, 0xc000ed7770, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1244 [select, 2 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).reconcileLoop(0x50f4920, {0x50a7f78, 0xc000d11b30}, {0x50b22c0, 0xc003c93440})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:64 +0x3a6
github.com/cilium/hive/job.(*jobOneShot).start(0xc000cd7920, {0x50a7f78, 0xc000d11b30}, 0xc000dae520?, {0x50b22c0, 0xc000cd6c00}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1245 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).refreshLoop(0x50f4920, {0x50a7f78, 0xc000d11d40}, {0x50b22c0, 0xc003c935c0})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:134 +0x1b7
github.com/cilium/hive/job.(*jobOneShot).start(0xc000cd7980, {0x50a7f78, 0xc000d11d40}, 0x0?, {0x50b22c0, 0xc000cd6c00}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1246 [select, 2 minutes]:
github.com/cilium/cilium/pkg/loadbalancer/healthserver.(*healthServer).controlLoop(0xc000a0d860, {0x50a7f78, 0xc000d34030}, {0x50b22c0, 0xc003c936e0})
	/go/src/github.com/cilium/cilium/pkg/loadbalancer/healthserver/healthserver.go:239 +0x4f8
github.com/cilium/hive/job.(*jobOneShot).start(0xc000cd7b00, {0x50a7f78, 0xc000d34030}, 0x0?, {0x50b22c0, 0xc000cd7aa0}, {{{0xc001547700, 0x1, 0x1}}, 0xc001bf1970, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1247 [select, 2 minutes]:
github.com/cilium/hive/job.(*jobTimer).start(0xc000cd7ce0, {0x50a7f78, 0xc000d342d0}, 0x0?, {0x50b22c0, 0xc000cd7c80}, {{{0xc00164d6c0, 0x1, 0x1}}, 0xc001073200, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1265 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x5088f60, {0x50a7f78, 0xc000d34a50}, 0x0, {0x50b22c0?, 0xc000cd7c80}, {{{0xc00164dc60, 0x1, 0x1}}, 0xc001073200, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1266 [chan receive, 3 minutes]:
github.com/cilium/hive/job.(*jobObserver[...]).start(0x5088940, {0x50a7f78, 0xc000d34ea0}, 0x0, {0x50b22c0?, 0xc001b56120}, {{{0xc00176c480, 0x1, 0x1}}, 0xc0024941b0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/observer.go:121 +0x508
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1267 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).reconcileLoop(0x50f4280, {0x50a7f78, 0xc000d35140}, {0x50b22c0, 0xc003cfa480})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:64 +0x3a6
github.com/cilium/hive/job.(*jobOneShot).start(0xc001b562a0, {0x50a7f78, 0xc000d35140}, 0x0?, {0x50b22c0, 0xc001b56120}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1268 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).refreshLoop(0x50f4280, {0x50a7f78, 0xc000d35260}, {0x50b22c0, 0xc003cfa6c0})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:134 +0x1b7
github.com/cilium/hive/job.(*jobOneShot).start(0xc001b56300, {0x50a7f78, 0xc000d35260}, 0x0?, {0x50b22c0, 0xc001b56120}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1444 [select]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003efdce0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1270 [select, 2 minutes]:
github.com/cilium/cilium/pkg/policy/k8s.(*policyWatcher).watchResources.func2()
	/go/src/github.com/cilium/cilium/pkg/policy/k8s/watcher.go:154 +0x48c
created by github.com/cilium/cilium/pkg/policy/k8s.(*policyWatcher).watchResources in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/policy/k8s/watcher.go:120 +0x1c6

goroutine 1154 [IO wait, 3 minutes]:
internal/poll.runtime_pollWait(0x7f4e4d918640, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002dc1e80?, 0xeb8625?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc002dc1e80)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc002dc1e80)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0xc00211ba88?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).Accept(0xc0013b6900)
	/usr/local/go/src/net/unixsock.go:260 +0x30
google.golang.org/grpc.(*Server).Serve(0xc003baa000, {0x5087d40, 0xc0013b6900})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:915 +0x473
github.com/cilium/cilium/pkg/hubble/server.(*Server).Serve(...)
	/go/src/github.com/cilium/cilium/pkg/hubble/server/server.go:98
github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch.func4()
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:369 +0x4a
created by github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch in goroutine 1127
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:368 +0x1ac9

goroutine 1155 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch.func5()
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:377 +0x35
created by github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch in goroutine 1127
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:376 +0x1b47

goroutine 1271 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded(0x511d200)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:313 +0x85
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Start in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:300 +0x88

goroutine 1167 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc0012a4d80, 0xc002dc3a40, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc0012a4d80, 0x50b22c0?, 0xc002742300?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1358
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1156 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f4e4d918758, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc003ba8100?, 0x900000036?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc003ba8100)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc003ba8100)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*TCPListener).accept(0xc001020a40)
	/usr/local/go/src/net/tcpsock_posix.go:159 +0x1b
net.(*TCPListener).Accept(0xc001020a40)
	/usr/local/go/src/net/tcpsock.go:380 +0x30
google.golang.org/grpc.(*Server).Serve(0xc003baa200, {0x5089f90, 0xc001020a40})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:915 +0x473
github.com/cilium/cilium/pkg/hubble/server.(*Server).Serve(...)
	/go/src/github.com/cilium/cilium/pkg/hubble/server/server.go:98
github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch.func6()
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:422 +0x4a
created by github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch in goroutine 1127
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:421 +0x21f9

goroutine 1157 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch.func7()
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:432 +0x2c
created by github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch in goroutine 1127
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:431 +0x225f

goroutine 1273 [select]:
github.com/cilium/hive/job.(*jobTimer).start(0xc0037f8360, {0x50a7f78, 0xc000d481e0}, 0x0?, {0x50b22c0, 0xc001b57020}, {{{0xc001b600c0, 0x1, 0x1}}, 0xc0025707b0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*group).add.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:263 +0x172

goroutine 1653 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f4e4d91de08, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc003a74100?, 0xc003a7a000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc003a74100, {0xc003a7a000, 0x1000, 0x1000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc003a74100, {0xc003a7a000?, 0x4083f4?, 0x0?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc001220ec0, {0xc003a7a000?, 0x4081ef?, 0xc003a67e60?})
	/usr/local/go/src/net/net.go:194 +0x45
net/http.(*persistConn).Read(0xc0004b3560, {0xc003a7a000?, 0x8e59e5?, 0x50385a0?})
	/usr/local/go/src/net/http/transport.go:2122 +0x47
bufio.(*Reader).fill(0xc003ee7aa0)
	/usr/local/go/src/bufio/bufio.go:113 +0x103
bufio.(*Reader).Peek(0xc003ee7aa0, 0x1)
	/usr/local/go/src/bufio/bufio.go:152 +0x53
net/http.(*persistConn).readLoop(0xc0004b3560)
	/usr/local/go/src/net/http/transport.go:2275 +0x172
created by net/http.(*Transport).dialConn in goroutine 1652
	/usr/local/go/src/net/http/transport.go:1944 +0x174f

goroutine 1275 [chan receive, 3 minutes]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run(0x51221a0, {0x50a7f78, 0xc000d48450}, {0x50b22c0, 0xc003499620})
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:434 +0x713
github.com/cilium/hive/job.(*jobOneShot).start(0xc001b57b60, {0x50a7f78, 0xc000d48450}, 0x0?, {0x50b22c0, 0xc001b57620}, {{{0xc00271c340, 0x1, 0x1}}, 0xc00271b150, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1276 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).reconcileLoop(0x50f4340, {0x50a7f78, 0xc000d48960}, {0x50b22c0, 0xc003499440})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:64 +0x3a6
github.com/cilium/hive/job.(*jobOneShot).start(0xc002742180, {0x50a7f78, 0xc000d48960}, 0x0?, {0x50b22c0, 0xc002742060}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1277 [select, 3 minutes]:
github.com/cilium/statedb/reconciler.(*reconciler[...]).refreshLoop(0x50f4340, {0x50a7f78, 0xc000d48c90}, {0x50b22c0, 0xc0037f85a0})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/reconciler/reconciler.go:134 +0x1b7
github.com/cilium/hive/job.(*jobOneShot).start(0xc0027421e0, {0x50a7f78, 0xc000d48c90}, 0x0?, {0x50b22c0, 0xc002742060}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1278 [select, 2 minutes]:
github.com/cilium/cilium/pkg/driftchecker.checker.watchTableChanges({0xc0008797d0, 0xc001ea5248, {0x5117378, 0xc00132f200}, 0xc002778810, {{0x50e2d30, 0xc00116a680}}, 0xc000e68510}, {0x50a7f78, 0xc000d48f60})
	/go/src/github.com/cilium/cilium/pkg/driftchecker/checker.go:81 +0x213
github.com/cilium/cilium/pkg/driftchecker.Register.func1({0x50a7f78?, 0xc000d48f60?}, {0x7?, 0xfffffffffffffffc?})
	/go/src/github.com/cilium/cilium/pkg/driftchecker/checker.go:61 +0x4c
github.com/cilium/hive/job.(*jobOneShot).start(0xc002742360, {0x50a7f78, 0xc000d48f60}, 0x0?, {0x50b22c0, 0xc002742300}, {{{0xc002776e20, 0x1, 0x1}}, 0xc002778810, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1363 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc002c7e960, {0x50a7fb0, 0xc003d6b090}, 0xc0005d9ea0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 543
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1280 [select]:
github.com/cilium/hive/job.(*jobTimer).start(0xc002742840, {0x50a7f78, 0xc000d49740}, 0x0?, {0x50b22c0, 0xc0027427e0}, {{{0xc002814040, 0x1, 0x1}}, 0xc00280cc80, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1582 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc002bd63d0, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc000c0bb20?)
	/usr/local/go/src/sync/cond.go:71 +0x85
github.com/cilium/cilium/pkg/envoy/xds.(*ResourceWatcher).WatchResources(0xc002bd6380, {0x50a7fb0, 0xc002d34910}, {0xc001b4ac80, 0x35}, 0x2, 0x2, {0xc00262cf85, 0x9}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/watcher.go:130 +0x790
created by github.com/cilium/cilium/pkg/envoy/xds.(*Server).processRequestStream in goroutine 1620
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:422 +0x17fd

goroutine 1636 [select]:
github.com/cilium/cilium/pkg/health/server.(*prober).RunLoop.func1()
	/go/src/github.com/cilium/cilium/pkg/health/server/prober.go:467 +0xc5
created by github.com/cilium/cilium/pkg/health/server.(*prober).RunLoop in goroutine 1432
	/go/src/github.com/cilium/cilium/pkg/health/server/prober.go:460 +0x4f

goroutine 1297 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003a55340)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1330 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1238
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1331 [select, 2 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...].func1.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:108 +0x12a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...].func1 in goroutine 1238
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:105 +0xca

goroutine 1332 [select]:
github.com/cilium/cilium/pkg/loadbalancer/reflectors.runServiceEndpointsReflector.Buffer[...].func9.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x14e
created by github.com/cilium/cilium/pkg/loadbalancer/reflectors.runServiceEndpointsReflector.Buffer[...].func9 in goroutine 1238
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 1333 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 1246
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 1334 [chan receive]:
k8s.io/client-go/util/workqueue.(*Typed[...]).updateUnfinishedWorkLoop(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:355 +0x92
created by k8s.io/client-go/util/workqueue.newQueue[...] in goroutine 1265
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:176 +0x1e7

goroutine 1335 [select]:
k8s.io/client-go/util/workqueue.(*delayingType[...]).waitingLoop(0x50d54e0, {{0x50bc478, 0xc0002a6740?}, 0xc000cd7c80?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:320 +0x378
created by k8s.io/client-go/util/workqueue.newDelayingQueue[...] in goroutine 1265
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/delaying_queue.go:157 +0x272

goroutine 1336 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc00106cc90, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x419514?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/util/workqueue.(*Typed[...]).Get(0x50dbac0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/util/workqueue/queue.go:277 +0x86
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).getWorkItem(...)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:607
github.com/cilium/cilium/pkg/k8s/resource.(*subscriber[...]).processLoop(0x50dbdc0, {0x50a7fb0, 0xc003ce3ef0}, 0xc003cf6690, {0x50bfe70, 0xc000d47750})
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:532 +0x134
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:455 +0x29a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1265
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:422 +0x585

goroutine 1337 [select, 3 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events.func2()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:467 +0xe5
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).Events in goroutine 1265
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:465 +0x645

goroutine 1338 [select, 2 minutes]:
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...].func1.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:108 +0x12a
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...].func1 in goroutine 1265
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:105 +0xca

goroutine 1339 [chan receive, 3 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1266
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1340 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc003cf4da8, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc003ee8bc8?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc003cf4d80, 0xc00106d500)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002bf9c70?}, 0xc000d5d830?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002bf9c70}, 0xc003ee8eb8, {0x504c480, 0xc000d5d830}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002bf9c70}, 0xc003ee8eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc003cdd3f0, {0x50a9338, 0xc002bf9c70})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc000485ee0, 0xc002bf9c70)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 416
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 1342 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc003cf4e68, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc003ee9bc8?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc003cf4e40, 0xc00106d540)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002f1e620?}, 0xc000d5d890?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002f1e620}, 0xc003ee9eb8, {0x504c480, 0xc000d5d890}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002f1e620}, 0xc003ee9eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc003cdd4a0, {0x50a9338, 0xc002f1e620})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc000485f40, 0xc002f1e620)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 465
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 1344 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc003cf4f28, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc001e92bc8?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc003cf4f00, 0xc00106d580)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002f1e3f0?}, 0xc000d41b30?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002f1e3f0}, 0xc001e92eb8, {0x504c480, 0xc000d41b30}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002f1e3f0}, 0xc001e92eb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc003cdd550, {0x50a9338, 0xc002f1e3f0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc00055e040, 0xc002f1e3f0)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 466
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 1346 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc003cf4fe8, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc003befbc8?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc003cf4fc0, 0xc00106d5c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002f1e690?}, 0xc000d36ea0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002f1e690}, 0xc003befeb8, {0x504c480, 0xc000d36ea0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc002f1e690}, 0xc003befeb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc003cdd600, {0x50a9338, 0xc002f1e690})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc00055e0c0, 0xc002f1e690)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 467
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 1348 [select, 2 minutes]:
github.com/cilium/statedb.(*observable[...]).Observe.func1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/observable.go:45 +0x2ab
created by github.com/cilium/statedb.(*observable[...]).Observe in goroutine 1239
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/statedb/observable.go:27 +0xbd

goroutine 1349 [select]:
github.com/cilium/cilium/pkg/loadbalancer/reflectors.runPodReflector.Buffer[...].func3.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x139
created by github.com/cilium/cilium/pkg/loadbalancer/reflectors.runPodReflector.Buffer[...].func3 in goroutine 1239
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 1379 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc0019f6a50, {0x50a7fb0, 0xc003edcf00}, 0xc000616310)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1289
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1350 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 1241
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 1351 [sync.Cond.Wait, 3 minutes]:
sync.runtime_notifyListWait(0xc003cf56a8, 0x0)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0xc0034dcbc8?)
	/usr/local/go/src/sync/cond.go:71 +0x85
k8s.io/client-go/tools/cache.(*DeltaFIFO).Pop(0xc003cf5680, 0xc00106db40)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/delta_fifo.go:505 +0x245
k8s.io/client-go/tools/cache.(*controller).processLoop(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:210
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc003ce7f10?}, 0xc000b72f00?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc003ce7f10}, 0xc0034dceb8, {0x504c480, 0xc000b72f00}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.JitterUntilWithContext({0x50a9338, 0xc003ce7f10}, 0xc0034dceb8, 0x3b9aca00, 0x0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:223 +0x8f
k8s.io/apimachinery/pkg/util/wait.UntilWithContext(...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:172
k8s.io/client-go/tools/cache.(*controller).RunWithContext(0xc003cddc30, {0x50a9338, 0xc003ce7f10})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:183 +0x41d
k8s.io/client-go/tools/cache.(*controller).Run(0x0?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:144 +0x1d
github.com/cilium/cilium/pkg/k8s/resource.(*wrapperController).Run(0xc00055eaa0, 0xc003ce7f10)
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:730 +0x9e
github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded.func1()
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:330 +0x7b
created by github.com/cilium/cilium/pkg/k8s/resource.(*resource[...]).startWhenNeeded in goroutine 1248
	/go/src/github.com/cilium/cilium/pkg/k8s/resource/resource.go:328 +0x1c5

goroutine 1443 [chan receive, 2 minutes]:
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run.func1()
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:233 +0x6e
sync.(*Once).doSlow(0xc00098bda0?, 0xc002000fc0?)
	/usr/local/go/src/sync/once.go:78 +0xab
sync.(*Once).Do(...)
	/usr/local/go/src/sync/once.go:69
github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).run(0xc002000f60?)
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:231 +0x36
created by github.com/cilium/cilium/pkg/eventqueue.(*EventQueue).Run in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/eventqueue/eventqueue.go:227 +0x6a

goroutine 1296 [select, 2 minutes]:
github.com/cilium/cilium/pkg/mtu.(*endpointUpdater).Updater(0xc0028117c0, {0x50a7f78, 0xc000db4ed0}, {0x50b22c0, 0xc0035c5a40})
	/go/src/github.com/cilium/cilium/pkg/mtu/endpoint_updater.go:128 +0x1fb
github.com/cilium/hive/job.(*jobOneShot).start(0xc002743140, {0x50a7f78, 0xc000db4ed0}, 0x2480aa9?, {0x50b22c0, 0xc001b57bc0}, {{{0x0, 0x0, 0x0}}, 0xc000f04850, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1354 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 1340
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 1355 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002bf9c70}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc003e42960}, {0x7f4e4d5ed2d0, 0xc003cf4d80}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002bf9c70?}, {0xc000576c60?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc003e42960?}, {0x7f4e4d5ed2d0?, 0xc003cf4d80?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc002621590, {0x50a9338, 0xc002bf9c70}, {0x0, 0x0}, 0xc0005d9f10)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc002621590, {0x50a9338, 0xc002bf9c70}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc002621590, {0x50a9338, 0xc002bf9c70})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x20?, 0xc002dcf5f8?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002bf9c70?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002bf9c70}, 0xc003b85ea8, {0x504c4a0, 0xc003edcbe0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc003edcbe0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc002621590, {0x50a9338, 0xc002bf9c70})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1340
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1294 [select]:
github.com/cilium/hive/job.(*jobTimer).start(0xc002742b40, {0x50a7f78, 0xc000db4780}, 0x2480aa9?, {0x50b22c0, 0xc002742ae0}, {{{0x0, 0x0, 0x0}}, 0xc0029b4130, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/timer.go:176 +0x3b1
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1357 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 1342
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 1358 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002f1e620}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc003d6b360}, {0x7f4e4d5ed2d0, 0xc003cf4e40}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002f1e620?}, {0xc000d0e7c0?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc003d6b360?}, {0x7f4e4d5ed2d0?, 0xc003cf4e40?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc002621a40, {0x50a9338, 0xc002f1e620}, {0x0, 0x0}, 0xc00068d880)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc002621a40, {0x50a9338, 0xc002f1e620}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc002621a40, {0x50a9338, 0xc002f1e620})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x20?, 0xc002dcfdf8?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002f1e620?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002f1e620}, 0xc003f0dea8, {0x504c4a0, 0xc003edcc30}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc003edcc30?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc002621a40, {0x50a9338, 0xc002f1e620})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1342
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1165 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1358
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1365 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1355
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1166 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc002621a40, {0x50a7fb0, 0xc003e42730}, 0xc00068d880)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1358
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1366 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc002621590, {0x50a7fb0, 0xc003d6b180}, 0xc0005d9f10)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1355
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 542 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 1344
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 1295 [select, 2 minutes]:
github.com/cilium/cilium/pkg/datapath/l2responder.(*l2ResponderReconciler).cycle(0xc002806b80, {0x50a7f78, 0xc000db4b70}, {0x503c880, 0xc0010a0dc0}, 0xc0006381c0)
	/go/src/github.com/cilium/cilium/pkg/datapath/l2responder/l2responder.go:167 +0x27a
github.com/cilium/cilium/pkg/datapath/l2responder.(*l2ResponderReconciler).run(0xc002806b80, {0x50a7f78, 0xc000db4b70}, {0xc002637d78?, 0x4f1373?})
	/go/src/github.com/cilium/cilium/pkg/datapath/l2responder/l2responder.go:107 +0x265
github.com/cilium/hive/job.(*jobOneShot).start(0xc002742cc0, {0x50a7f78, 0xc000db4b70}, 0x2480aa9?, {0x50b22c0, 0xc002742c60}, {{{0xc0029e23c0, 0x1, 0x1}}, 0xc0029dbec0, ...})
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/oneshot.go:138 +0x4fd
created by github.com/cilium/hive/job.(*queuedJob).Start.func1 in goroutine 1
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/hive/job/job.go:126 +0x16f

goroutine 1159 [chan receive, 3 minutes]:
k8s.io/client-go/tools/cache.(*controller).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:151 +0x2c
created by k8s.io/client-go/tools/cache.(*controller).RunWithContext in goroutine 1346
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/controller.go:150 +0xdf

goroutine 1160 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002f1e690}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc003d6b2c0}, {0x7f4e4d5ed2d0, 0xc003cf4fc0}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002f1e690?}, {0xc000d3c030?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc003d6b2c0?}, {0x7f4e4d5ed2d0?, 0xc003cf4fc0?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc000cd8d20, {0x50a9338, 0xc002f1e690}, {0x0, 0x0}, 0xc0005732d0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc000cd8d20, {0x50a9338, 0xc002f1e690}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc000cd8d20, {0x50a9338, 0xc002f1e690})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x20?, 0xc002dd05f8?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002f1e690?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002f1e690}, 0xc003ebdea8, {0x504c4a0, 0xc0006194f0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc0006194f0?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc000cd8d20, {0x50a9338, 0xc002f1e690})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1346
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1085 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1160
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 543 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc002f1e3f0}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc003e10690}, {0x7f4e4d5ed2d0, 0xc003cf4f00}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc002f1e3f0?}, {0xc000576970?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc003e10690?}, {0x7f4e4d5ed2d0?, 0xc003cf4f00?}, {0x511b160, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc002c7e960, {0x50a9338, 0xc002f1e3f0}, {0x0, 0x0}, 0xc0005d9ea0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc002c7e960, {0x50a9338, 0xc002f1e3f0}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc002c7e960, {0x50a9338, 0xc002f1e3f0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x20?, 0xc002dcadf8?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc002f1e3f0?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc002f1e3f0}, 0xc003b87ea8, {0x504c4a0, 0xc002e3dd60}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc002e3dd60?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc002c7e960, {0x50a9338, 0xc002f1e3f0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*controller).RunWithContext.(*Group).StartWithContext.func3()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:63 +0x1f
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1344
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1362 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 543
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1299 [select, 2 minutes]:
k8s.io/client-go/tools/cache.handleAnyWatch({0x50a9338, 0xc003b8a7e0}, {0x0?, 0x0?, 0x7e3ad80?}, {0x507abd0, 0xc003e10780}, {0x50b0080, 0xc000d011e0}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:869 +0x265
k8s.io/client-go/tools/cache.handleWatch({0x50a9338?, 0xc003b8a7e0?}, {0xc000d3c640?, 0x0?, 0x7e3ad80?}, {0x507abd0?, 0xc003e10780?}, {0x50b0080?, 0xc000d011e0?}, {0x0, ...}, ...)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:833 +0xea
k8s.io/client-go/tools/cache.(*Reflector).watch(0xc0023364b0, {0x50a9338, 0xc003b8a7e0}, {0x0, 0x0}, 0xc000573340)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:530 +0x61f
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync(0xc0023364b0, {0x50a9338, 0xc003b8a7e0}, {0x0, 0x0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:476 +0x186
k8s.io/client-go/tools/cache.(*Reflector).ListAndWatchWithContext(0xc0023364b0, {0x50a9338, 0xc003b8a7e0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:431 +0x3b0
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:359 +0x2e
k8s.io/apimachinery/pkg/util/wait.BackoffUntil.func1({0x300000000000000?, 0x0?})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x13
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext.func1({0x50a9338?, 0xc003b8a7e0?}, 0x419500?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:255 +0x51
k8s.io/apimachinery/pkg/util/wait.BackoffUntilWithContext({0x50a9338, 0xc003b8a7e0}, 0xc003bfbec8, {0x504c4a0, 0xc003f16c80}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:256 +0xe5
k8s.io/apimachinery/pkg/util/wait.BackoffUntil(0x50bc478?, {0x504c4a0?, 0xc003f16c80?}, 0xa2?, 0x12?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/backoff.go:233 +0x46
k8s.io/client-go/tools/cache.(*Reflector).RunWithContext(0xc0023364b0, {0x50a9338, 0xc003b8a7e0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:358 +0x22b
k8s.io/client-go/tools/cache.(*Reflector).Run(0xc000d48c90?, 0x0?)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:349 +0x1d
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9.5()
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:485 +0x3b
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...]).run.ListerWatcherToObservable.func9 in goroutine 1275
	/go/src/github.com/cilium/cilium/pkg/k8s/statedb.go:484 +0x21f

goroutine 1086 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc000cd8d20, {0x50a7fb0, 0xc003e105a0}, 0xc0005732d0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1160
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1300 [select]:
github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10.3()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:353 +0x127
created by github.com/cilium/cilium/pkg/k8s.(*k8sReflector[...].func10 in goroutine 1275
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/operators.go:342 +0x211

goroutine 1088 [select, 3 minutes]:
context.(*cancelCtx).propagateCancel.func2()
	/usr/local/go/src/context/context.go:514 +0x98
created by context.(*cancelCtx).propagateCancel in goroutine 1299
	/usr/local/go/src/context/context.go:513 +0x3e6

goroutine 1393 [select, 3 minutes]:
k8s.io/client-go/tools/cache.(*Reflector).startResync(0xc0023364b0, {0x50a7fb0, 0xc003e105f0}, 0xc000573340)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:444 +0x12d
k8s.io/client-go/tools/cache.(*Reflector).watchWithResync.func2()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/tools/cache/reflector.go:474 +0x25
k8s.io/apimachinery/pkg/util/wait.(*Group).Start.func1()
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:72 +0x4c
created by k8s.io/apimachinery/pkg/util/wait.(*Group).Start in goroutine 1299
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/wait/wait.go:70 +0x73

goroutine 1380 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc003efa300, 0xc004008140, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc003efa300, 0xc000d47990?, 0xc002dcffa0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1289
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1364 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc000cd3200, 0xc002c3e8c0, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc000cd3200, 0x50b22c0?, 0xc002950780?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 543
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1367 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc000cd3500, 0xc002c3ec80, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc000cd3500, 0x11a98e5?, 0xc000ae1ef0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1355
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1394 [select, 3 minutes]:
golang.org/x/net/http2.(*clientStream).writeRequest(0xc0035d8f00, 0xc003e4edc0, 0x0)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1570 +0xc85
golang.org/x/net/http2.(*clientStream).doRequest(0xc0035d8f00, 0x50b22c0?, 0xc0004b82a0?)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1431 +0x56
created by golang.org/x/net/http2.(*ClientConn).roundTrip in goroutine 1299
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:1336 +0x485

goroutine 1168 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc003efa348, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc003efa330, {0xc0011e7b48, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc0011e7b48?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f4e4d917a80, 0xc003efa300}, {0xc0011e7b48, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc0010e27c8, {0xc0025bfc00, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc003e42780, 0x0, {0x5079208, 0xc0047c1180})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc000924800)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc003e427d0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1289
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1395 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc000cd3248, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc000cd3230, {0xc00308b801, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x8b?}, {0xc00308b801?, 0x419514?, 0xc00218dc58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc003e4ef00)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc003e4ef00)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc003e4ef00, {0x3fd8fe0, 0xc0048a52d8})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc000d9b3b0, {0xc003e38c00, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc003e10640, 0x0, {0x5079208, 0xc0048dc500})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc00094eae0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc003e10690)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 543
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1368 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc0035d8c48, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc0035d8c30, {0xc000bab201, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x7c?}, {0xc000bab201?, 0x419514?, 0xc00263bc58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc002c3f180)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc002c3f180)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc002c3f180, {0x3fd8fe0, 0xc004852870})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc000d9e7b0, {0xc002b6fc00, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc003d6b270, 0x0, {0x5079208, 0xc004860480})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc0003a5860)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc003d6b2c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1160
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1409 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc000cd3548, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc000cd3530, {0xc001275b38, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc001275b38?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f4e4d917a80, 0xc000cd3500}, {0xc001275b38, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc0010e2828, {0xc003fd8000, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc003e42910, 0x0, {0x5079208, 0xc00444f2c0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc000924860)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc003e42960)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1355
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1369 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc0012a4dc8, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x2?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc0012a4db0, {0xc00308b201, 0x5ff, 0x5ff})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x80?}, {0xc00308b201?, 0x419514?, 0xc003e13c58?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
encoding/json.(*Decoder).refill(0xc002c3f2c0)
	/usr/local/go/src/encoding/json/stream.go:165 +0x188
encoding/json.(*Decoder).readValue(0xc002c3f2c0)
	/usr/local/go/src/encoding/json/stream.go:140 +0x85
encoding/json.(*Decoder).Decode(0xc002c3f2c0, {0x3fd8fe0, 0xc0041429d8})
	/usr/local/go/src/encoding/json/stream.go:63 +0x75
k8s.io/apimachinery/pkg/util/framer.(*jsonFrameReader).Read(0xc000d9e870, {0xc004086000, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:151 +0x15c
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc003d6b310, 0x0, {0x5079208, 0xc0041504c0})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc0003a58c0)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc003d6b360)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1358
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1396 [sync.Cond.Wait, 2 minutes]:
sync.runtime_notifyListWait(0xc0035d8f48, 0x2)
	/usr/local/go/src/runtime/sema.go:597 +0x159
sync.(*Cond).Wait(0x14d854f?)
	/usr/local/go/src/sync/cond.go:71 +0x85
golang.org/x/net/http2.(*pipe).Read(0xc0035d8f30, {0xc0011e7b20, 0x4, 0x4})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/pipe.go:76 +0xd6
golang.org/x/net/http2.transportResponseBody.Read({0x4166bf?}, {0xc0011e7b20?, 0x43045c0?, 0x419f01?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/transport.go:2560 +0x59
io.ReadAtLeast({0x7f4e4d917a80, 0xc0035d8f00}, {0xc0011e7b20, 0x4, 0x4}, 0x4)
	/usr/local/go/src/io/io.go:335 +0x91
k8s.io/apimachinery/pkg/util/framer.(*lengthDelimitedFrameReader).Read(0xc001c9d830, {0xc003e39000, 0x400, 0x400})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/util/framer/framer.go:76 +0x7f
k8s.io/apimachinery/pkg/runtime/serializer/streaming.(*decoder).Decode(0xc003e10730, 0x0, {0x5079208, 0xc0047c1140})
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/runtime/serializer/streaming/streaming.go:77 +0xa3
k8s.io/client-go/rest/watch.(*Decoder).Decode(0xc00094eb60)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/client-go/rest/watch/decoder.go:49 +0x4b
k8s.io/apimachinery/pkg/watch.(*StreamWatcher).receive(0xc003e10780)
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:114 +0xf8
created by k8s.io/apimachinery/pkg/watch.NewStreamWatcherWithLogger in goroutine 1299
	/go/src/github.com/cilium/cilium/vendor/k8s.io/apimachinery/pkg/watch/streamwatcher.go:85 +0x149

goroutine 1406 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc00261a2c0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1448
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1505 [select, 2 minutes]:
github.com/cilium/cilium/pkg/endpoint.(*Endpoint).startRegenerationFailureHandler.func1({0x50a7fb0, 0xc002810af0})
	/go/src/github.com/cilium/cilium/pkg/endpoint/policy.go:945 +0x90
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002c9cdc0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:333 +0x1c7
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1459
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1301 [select]:
github.com/cilium/cilium/pkg/rate.NewLimiter.func1()
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:47 +0x93
created by github.com/cilium/cilium/pkg/rate.NewLimiter in goroutine 1425
	/go/src/github.com/cilium/cilium/pkg/rate/limiter.go:45 +0x127

goroutine 5154 [select]:
net/http.(*persistConn).writeLoop(0xc001a7a000)
	/usr/local/go/src/net/http/transport.go:2590 +0xe7
created by net/http.(*Transport).dialConn in goroutine 5122
	/usr/local/go/src/net/http/transport.go:1945 +0x17a5

goroutine 1451 [select, 2 minutes]:
github.com/cilium/cilium/pkg/maps/ctmap/gc.(*GC).Enable.func1()
	/go/src/github.com/cilium/cilium/pkg/maps/ctmap/gc/gc.go:202 +0x4a5
created by github.com/cilium/cilium/pkg/maps/ctmap/gc.(*GC).Enable in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/maps/ctmap/gc/gc.go:120 +0xa5

goroutine 1477 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0026a8840)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1447
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1529 [select, 2 minutes]:
google.golang.org/grpc/internal/transport.(*http2Server).keepalive(0xc0024a0820)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:1210 +0x1ec
created by google.golang.org/grpc/internal/transport.NewServerTransport in goroutine 1527
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:362 +0x18fd

goroutine 1454 [chan receive, 2 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0xec
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1119
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1455 [chan receive, 2 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0xec
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1119
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1456 [chan receive, 2 minutes]:
github.com/cilium/stream.Multicast[...].func3.1()
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:245 +0x13c
created by github.com/cilium/stream.Multicast[...].func3 in goroutine 1119
	/go/src/github.com/cilium/cilium/vendor/github.com/cilium/stream/sources.go:238 +0x34f

goroutine 1407 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc00261a580)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1448
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1458 [sleep]:
time.Sleep(0x12a05f200)
	/usr/local/go/src/runtime/time.go:338 +0x165
github.com/cilium/cilium/pkg/time.Sleep(...)
	/go/src/github.com/cilium/cilium/pkg/time/time.go:90
github.com/cilium/cilium/pkg/health.(*CiliumHealth).runServer(0xc0011b4b80, 0xc003013f90?)
	/go/src/github.com/cilium/cilium/pkg/health/health_connectivity_node.go:128 +0x38a
created by github.com/cilium/cilium/pkg/health.(*ciliumHealthManager).launchCiliumNodeHealth in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/health/health_connectivity_node.go:69 +0x2e9

goroutine 1459 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003fd2c60)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1460 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc003fd2f20)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1119
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1408 [select]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc00261af20)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1453
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1494 [syscall, 2 minutes]:
syscall.Syscall6(0xf7, 0x3, 0x55, 0xc002eba5c0, 0x4, 0xc002e84090, 0x0)
	/usr/local/go/src/syscall/syscall_linux.go:95 +0x39
internal/syscall/unix.Waitid(0x7f4e4d7b66b8?, 0x7f4e9461a108?, 0x580?, 0x560?, 0xc001206000?)
	/usr/local/go/src/internal/syscall/unix/waitid_linux.go:18 +0x39
os.(*Process).pidfdWait.func1(...)
	/usr/local/go/src/os/pidfd_linux.go:106
os.ignoringEINTR(...)
	/usr/local/go/src/os/file_posix.go:251
os.(*Process).pidfdWait(0xc002bf7710?)
	/usr/local/go/src/os/pidfd_linux.go:105 +0x209
os.(*Process).wait(0xc001206010?)
	/usr/local/go/src/os/exec_unix.go:27 +0x25
os.(*Process).Wait(...)
	/usr/local/go/src/os/exec.go:358
os/exec.(*Cmd).Wait(0xc000cd2a80)
	/usr/local/go/src/os/exec/exec.go:922 +0x45
github.com/cilium/cilium/pkg/launcher.(*Launcher).Run.func1()
	/go/src/github.com/cilium/cilium/pkg/launcher/launcher.go:48 +0x3e
created by github.com/cilium/cilium/pkg/launcher.(*Launcher).Run in goroutine 1493
	/go/src/github.com/cilium/cilium/pkg/launcher/launcher.go:47 +0x3ab

goroutine 1528 [select, 2 minutes]:
google.golang.org/grpc/internal/transport.(*controlBuffer).get(0xc001f3f940, 0x1)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/controlbuf.go:425 +0x108
google.golang.org/grpc/internal/transport.(*loopyWriter).run(0xc0023f4980)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/controlbuf.go:590 +0x78
google.golang.org/grpc/internal/transport.NewServerTransport.func3()
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:341 +0xde
created by google.golang.org/grpc/internal/transport.NewServerTransport in goroutine 1527
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:339 +0x18bb

goroutine 1392 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc003a3e140)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1376
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 1466 [select, 2 minutes]:
reflect.rselect({0xc0035ecee8, 0x4, 0xc0035ece58?})
	/usr/local/go/src/runtime/select.go:616 +0x2ce
reflect.Select({0xc00269c460?, 0x4, 0xc0035ecfb8?})
	/usr/local/go/src/reflect/value.go:2875 +0x5ca
github.com/cilium/cilium/pkg/common.MergeChannels[...].func1()
	/go/src/github.com/cilium/cilium/pkg/common/utils.go:89 +0x65
created by github.com/cilium/cilium/pkg/common.MergeChannels[...] in goroutine 469
	/go/src/github.com/cilium/cilium/pkg/common/utils.go:87 +0x1a9

goroutine 1816 [select, 2 minutes]:
net/http.(*persistConn).writeLoop(0xc001a5c000)
	/usr/local/go/src/net/http/transport.go:2590 +0xe7
created by net/http.(*Transport).dialConn in goroutine 1600
	/usr/local/go/src/net/http/transport.go:1945 +0x17a5

goroutine 1621 [select, 2 minutes]:
google.golang.org/grpc/internal/transport.(*recvBufferReader).readMessageHeader(0xc002f19b80, {0xc0036a7030, 0x5, 0x5})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:176 +0x9e
google.golang.org/grpc/internal/transport.(*recvBufferReader).ReadMessageHeader(0xc002f19b80, {0xc0036a7030?, 0xc0024a0820?, 0xc002794900?})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:145 +0x72
google.golang.org/grpc/internal/transport.(*transportReader).ReadMessageHeader(0xc002d12240, {0xc0036a7030?, 0xccefc7?, 0xc002583b80?})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:417 +0x25
google.golang.org/grpc/internal/transport.(*Stream).ReadMessageHeader(0xc001b93050, {0xc0036a7030, 0x5, 0x5})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/transport.go:360 +0x9e
google.golang.org/grpc.(*parser).recvMsg(0xc0036a7020, 0x400000)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/rpc_util.go:690 +0x3b
google.golang.org/grpc.recvAndDecompress(0xc0036a7020, {0x50394a0, 0xc002794900}, {0x0, 0x0}, 0x400000, 0x0, {0x0, 0x0}, 0x1)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/rpc_util.go:850 +0x97
google.golang.org/grpc.recv(0xc002bb7e34?, {0x7f4e4d30a250, 0x8388740}, {0x50394a0?, 0xc002794900?}, {0x0?, 0x0?}, {0x4734640, 0xc003caf680}, 0x400000, ...)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/rpc_util.go:933 +0xab
google.golang.org/grpc.(*serverStream).RecvMsg(0xc000a50700, {0x4734640, 0xc003caf680})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/stream.go:1769 +0x192
github.com/envoyproxy/go-control-plane/envoy/service/listener/v3.(*listenerDiscoveryServiceStreamListenersServer).Recv(0xc0010da1e0)
	/go/src/github.com/cilium/cilium/vendor/github.com/envoyproxy/go-control-plane/envoy/service/listener/v3/lds_grpc.pb.go:196 +0x46
github.com/cilium/cilium/pkg/envoy/xds.(*Server).HandleRequestStream.func1(0xc0027edfa0?)
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:151 +0xda
created by github.com/cilium/cilium/pkg/envoy/xds.(*Server).HandleRequestStream in goroutine 1620
	/go/src/github.com/cilium/cilium/pkg/envoy/xds/server.go:148 +0x24c

goroutine 1640 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002586160)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1506
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1638 [IO wait]:
internal/poll.runtime_pollWait(0x7f4e4d91d9a8, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc004654300?, 0x20?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Accept(0xc004654300)
	/usr/local/go/src/internal/poll/fd_unix.go:620 +0x295
net.(*netFD).accept(0xc004654300)
	/usr/local/go/src/net/fd_unix.go:172 +0x29
net.(*UnixListener).accept(0xc004978df8?)
	/usr/local/go/src/net/unixsock_posix.go:172 +0x16
net.(*UnixListener).Accept(0xc00498e9f0)
	/usr/local/go/src/net/unixsock.go:260 +0x30
net/http.(*Server).Serve(0xc004656200, {0x5087d40, 0xc00498e9f0})
	/usr/local/go/src/net/http/server.go:3424 +0x30c
github.com/cilium/cilium/api/v1/health/server.(*Server).Start.func1({0x5087d40?, 0xc00498e9f0?})
	/go/src/github.com/cilium/cilium/api/v1/health/server/server.go:365 +0x72
created by github.com/cilium/cilium/api/v1/health/server.(*Server).Start in goroutine 1432
	/go/src/github.com/cilium/cilium/api/v1/health/server/server.go:363 +0x485

goroutine 1637 [select, 2 minutes]:
github.com/cilium/cilium/pkg/health/server.(*Server).runActiveServices.func1()
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:349 +0x96
created by github.com/cilium/cilium/pkg/health/server.(*Server).runActiveServices in goroutine 1432
	/go/src/github.com/cilium/cilium/pkg/health/server/server.go:345 +0x11c

goroutine 1628 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc00304a0a0)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1384
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 2375 [IO wait, 2 minutes]:
internal/poll.runtime_pollWait(0x7f4e4d91dac0, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc003cf3300?, 0xc00234c000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc003cf3300, {0xc00234c000, 0x800, 0x800})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc003cf3300, {0xc00234c000?, 0xc00234c000?, 0x5?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc00198e0c0, {0xc00234c000?, 0x7f4e4d6a7008?, 0x7f4e9461bd58?})
	/usr/local/go/src/net/net.go:194 +0x45
crypto/tls.(*atLeastReader).Read(0xc0017026d8, {0xc00234c000?, 0x7fb?, 0x140?})
	/usr/local/go/src/crypto/tls/conn.go:809 +0x3b
bytes.(*Buffer).ReadFrom(0xc0003ec9b8, {0x503e920, 0xc0017026d8})
	/usr/local/go/src/bytes/buffer.go:211 +0x98
crypto/tls.(*Conn).readFromUntil(0xc0003ec708, {0x503c420, 0xc00198e0c0}, 0x440a54?)
	/usr/local/go/src/crypto/tls/conn.go:831 +0xde
crypto/tls.(*Conn).readRecordOrCCS(0xc0003ec708, 0x0)
	/usr/local/go/src/crypto/tls/conn.go:629 +0x3cf
crypto/tls.(*Conn).readRecord(...)
	/usr/local/go/src/crypto/tls/conn.go:591
crypto/tls.(*Conn).Read(0xc0003ec708, {0xc002708000, 0x8000, 0xc000000000?})
	/usr/local/go/src/crypto/tls/conn.go:1385 +0x145
bufio.(*Reader).Read(0xc0037f9560, {0xc00269d1c0, 0x9, 0x4776d9?})
	/usr/local/go/src/bufio/bufio.go:245 +0x197
io.ReadAtLeast({0x5038b80, 0xc0037f9560}, {0xc00269d1c0, 0x9, 0x9}, 0x9)
	/usr/local/go/src/io/io.go:335 +0x91
io.ReadFull(...)
	/usr/local/go/src/io/io.go:354
golang.org/x/net/http2.readFrameHeader({0xc00269d1c0, 0x9, 0x47e52c?}, {0x5038b80?, 0xc0037f9560?})
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/frame.go:242 +0x65
golang.org/x/net/http2.(*Framer).ReadFrame(0xc00269d180)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/net/http2/frame.go:506 +0x7d
google.golang.org/grpc/internal/transport.(*http2Server).HandleStreams(0xc002a6a1a0, {0x50a7f78, 0xc000fd5470}, 0xc000fd55c0)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:677 +0x105
google.golang.org/grpc.(*Server).serveStreams(0xc003baa200, {0x50a7d40?, 0x8388740?}, {0x50a9da0, 0xc002a6a1a0}, {0x50c6d78?, 0xc00198e0c0?})
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1055 +0x396
google.golang.org/grpc.(*Server).handleRawConn.func1()
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:989 +0x56
created by google.golang.org/grpc.(*Server).handleRawConn in goroutine 2386
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:988 +0x1cb

goroutine 1629 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc0012cd600)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1384
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 1630 [select]:
github.com/cilium/cilium/pkg/trigger.(*Trigger).waiter(0xc00304a6e0)
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:209 +0x2a5
created by github.com/cilium/cilium/pkg/trigger.NewTrigger in goroutine 1443
	/go/src/github.com/cilium/cilium/pkg/trigger/trigger.go:121 +0x1d8

goroutine 1631 [select, 2 minutes]:
github.com/cilium/cilium/pkg/controller.(*controller).runController(0xc002e52dc0)
	/go/src/github.com/cilium/cilium/pkg/controller/controller.go:405 +0x84e
created by github.com/cilium/cilium/pkg/controller.(*Manager).createControllerLocked in goroutine 1443
	/go/src/github.com/cilium/cilium/pkg/controller/manager.go:124 +0x4ae

goroutine 2387 [sync.WaitGroup.Wait, 2 minutes]:
sync.runtime_SemacquireWaitGroup(0x28eb12a3c8237a1d?)
	/usr/local/go/src/runtime/sema.go:110 +0x25
sync.(*WaitGroup).Wait(0xc001aae160?)
	/usr/local/go/src/sync/waitgroup.go:118 +0x48
golang.org/x/sync/errgroup.(*Group).Wait(0xc00167b080)
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/sync/errgroup/errgroup.go:56 +0x1e
github.com/cilium/cilium/pkg/hubble/peer.(*Service).Notify(0xc000619220, 0x3ffefe0?, {0x50c44d0, 0xc000d8e680})
	/go/src/github.com/cilium/cilium/pkg/hubble/peer/service.go:106 +0x416
github.com/cilium/cilium/api/v1/peer._Peer_Notify_Handler({0x3ffefe0, 0xc000619220}, {0x50b9420, 0xc0023d8620})
	/go/src/github.com/cilium/cilium/api/v1/peer/peer_grpc.pb.go:116 +0x110
github.com/cilium/cilium/pkg/hubble/cell.(*hubbleIntegration).launch.serverVersionStreamInterceptor.func37({0x3ffefe0, 0xc000619220}, {0x50b9420, 0xc0023d8620}, 0x3b7fb60?, 0x4becc48)
	/go/src/github.com/cilium/cilium/pkg/hubble/cell/hubbleintegration.go:465 +0x58
google.golang.org/grpc.(*Server).processStreamingRPC(0xc003baa200, {0x50a7f78, 0xc000dc6de0}, 0xc004b6db00, 0xc000d36420, 0x7de3880, 0x0)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1728 +0x1231
google.golang.org/grpc.(*Server).handleStream(0xc003baa200, {0x50a9da0, 0xc002a6a1a0}, 0xc004b6db00)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1845 +0xb47
google.golang.org/grpc.(*Server).serveStreams.func2.1()
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1061 +0x7f
created by google.golang.org/grpc.(*Server).serveStreams.func2 in goroutine 2375
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/server.go:1072 +0x11d

goroutine 2389 [select, 2 minutes]:
github.com/cilium/cilium/pkg/hubble/peer.(*Service).Notify.func2()
	/go/src/github.com/cilium/cilium/pkg/hubble/peer/service.go:73 +0xfe
golang.org/x/sync/errgroup.(*Group).Go.func1()
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/sync/errgroup/errgroup.go:93 +0x50
created by golang.org/x/sync/errgroup.(*Group).Go in goroutine 2387
	/go/src/github.com/cilium/cilium/vendor/golang.org/x/sync/errgroup/errgroup.go:78 +0x93

goroutine 2374 [select, 2 minutes]:
google.golang.org/grpc/internal/transport.(*http2Server).keepalive(0xc002a6a1a0)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:1210 +0x1ec
created by google.golang.org/grpc/internal/transport.NewServerTransport in goroutine 2386
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:362 +0x18fd

goroutine 2373 [select, 2 minutes]:
google.golang.org/grpc/internal/transport.(*controlBuffer).get(0xc000f85cc0, 0x1)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/controlbuf.go:425 +0x108
google.golang.org/grpc/internal/transport.(*loopyWriter).run(0xc003cf3500)
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/controlbuf.go:590 +0x78
google.golang.org/grpc/internal/transport.NewServerTransport.func3()
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:341 +0xde
created by google.golang.org/grpc/internal/transport.NewServerTransport in goroutine 2386
	/go/src/github.com/cilium/cilium/vendor/google.golang.org/grpc/internal/transport/http2_server.go:339 +0x18bb

goroutine 5256 [IO wait]:
internal/poll.runtime_pollWait(0x7f4e4d91d200, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc002a98d00?, 0xc00347c000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc002a98d00, {0xc00347c000, 0x1000, 0x1000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc002a98d00, {0xc00347c000?, 0xc00224fad0?, 0x4fd085?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc000e887e8, {0xc00347c000?, 0x0?, 0x0?})
	/usr/local/go/src/net/net.go:194 +0x45
net/http.(*connReader).Read(0xc000be73b0, {0xc00347c000, 0x1000, 0x1000})
	/usr/local/go/src/net/http/server.go:798 +0x159
bufio.(*Reader).fill(0xc004d68660)
	/usr/local/go/src/bufio/bufio.go:113 +0x103
bufio.(*Reader).Peek(0xc004d68660, 0x4)
	/usr/local/go/src/bufio/bufio.go:152 +0x53
net/http.(*conn).serve(0xc002e34990, {0x50a7f78, 0xc0037b2840})
	/usr/local/go/src/net/http/server.go:2137 +0x785
created by net/http.(*Server).Serve in goroutine 1598
	/usr/local/go/src/net/http/server.go:3454 +0x485

goroutine 2956 [select]:
net/http.(*persistConn).writeLoop(0xc002593b00)
	/usr/local/go/src/net/http/transport.go:2590 +0xe7
created by net/http.(*Transport).dialConn in goroutine 2922
	/usr/local/go/src/net/http/transport.go:1945 +0x17a5

goroutine 5153 [IO wait]:
internal/poll.runtime_pollWait(0x7f4e4d91d890, 0x72)
	/usr/local/go/src/runtime/netpoll.go:351 +0x85
internal/poll.(*pollDesc).wait(0xc004dab600?, 0xc000756000?, 0x0)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:84 +0x27
internal/poll.(*pollDesc).waitRead(...)
	/usr/local/go/src/internal/poll/fd_poll_runtime.go:89
internal/poll.(*FD).Read(0xc004dab600, {0xc000756000, 0x1000, 0x1000})
	/usr/local/go/src/internal/poll/fd_unix.go:165 +0x27a
net.(*netFD).Read(0xc004dab600, {0xc000756000?, 0x4083f4?, 0x0?})
	/usr/local/go/src/net/fd_posix.go:55 +0x25
net.(*conn).Read(0xc001254568, {0xc000756000?, 0x4081ef?, 0xc0037b2f30?})
	/usr/local/go/src/net/net.go:194 +0x45
net/http.(*persistConn).Read(0xc001a7a000, {0xc000756000?, 0x8e59e5?, 0x50385a0?})
	/usr/local/go/src/net/http/transport.go:2122 +0x47
bufio.(*Reader).fill(0xc004465020)
	/usr/local/go/src/bufio/bufio.go:113 +0x103
bufio.(*Reader).Peek(0xc004465020, 0x1)
	/usr/local/go/src/bufio/bufio.go:152 +0x53
net/http.(*persistConn).readLoop(0xc001a7a000)
	/usr/local/go/src/net/http/transport.go:2275 +0x172
created by net/http.(*Transport).dialConn in goroutine 5122
	/usr/local/go/src/net/http/transport.go:1944 +0x174f
