.class public final Ldalvik/system/VMDebug;
.super Ljava/lang/Object;
.source "VMDebug.java"


# static fields
.field public static final DEFAULT_METHOD_TRACE_FILE_NAME:Ljava/lang/String; = "/sdcard/dmtrace.trace"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KIND_ALLOCATED_BYTES:I = 0x2

.field private static final KIND_ALLOCATED_OBJECTS:I = 0x1

.field public static final KIND_ALL_COUNTS:I = -0x1

.field private static final KIND_CLASS_INIT_COUNT:I = 0x20

.field private static final KIND_CLASS_INIT_TIME:I = 0x40

.field private static final KIND_EXT_ALLOCATED_BYTES:I = 0x2000

.field private static final KIND_EXT_ALLOCATED_OBJECTS:I = 0x1000

.field private static final KIND_EXT_FREED_BYTES:I = 0x8000

.field private static final KIND_EXT_FREED_OBJECTS:I = 0x4000

.field private static final KIND_FREED_BYTES:I = 0x8

.field private static final KIND_FREED_OBJECTS:I = 0x4

.field private static final KIND_GC_INVOCATIONS:I = 0x10

.field public static final KIND_GLOBAL_ALLOCATED_BYTES:I = 0x2

.field public static final KIND_GLOBAL_ALLOCATED_OBJECTS:I = 0x1

.field public static final KIND_GLOBAL_CLASS_INIT_COUNT:I = 0x20

.field public static final KIND_GLOBAL_CLASS_INIT_TIME:I = 0x40

.field public static final KIND_GLOBAL_EXT_ALLOCATED_BYTES:I = 0x2000

.field public static final KIND_GLOBAL_EXT_ALLOCATED_OBJECTS:I = 0x1000

.field public static final KIND_GLOBAL_EXT_FREED_BYTES:I = 0x8000

.field public static final KIND_GLOBAL_EXT_FREED_OBJECTS:I = 0x4000

.field public static final KIND_GLOBAL_FREED_BYTES:I = 0x8

.field public static final KIND_GLOBAL_FREED_OBJECTS:I = 0x4

.field public static final KIND_GLOBAL_GC_INVOCATIONS:I = 0x10

.field public static final KIND_THREAD_ALLOCATED_BYTES:I = 0x20000

.field public static final KIND_THREAD_ALLOCATED_OBJECTS:I = 0x10000

.field public static final KIND_THREAD_CLASS_INIT_COUNT:I = 0x200000

.field public static final KIND_THREAD_CLASS_INIT_TIME:I = 0x400000

.field public static final KIND_THREAD_EXT_ALLOCATED_BYTES:I = 0x20000000

.field public static final KIND_THREAD_EXT_ALLOCATED_OBJECTS:I = 0x10000000

.field public static final KIND_THREAD_EXT_FREED_BYTES:I = -0x80000000

.field public static final KIND_THREAD_EXT_FREED_OBJECTS:I = 0x40000000

.field public static final KIND_THREAD_FREED_BYTES:I = 0x80000

.field public static final KIND_THREAD_FREED_OBJECTS:I = 0x40000

.field public static final KIND_THREAD_GC_INVOCATIONS:I = 0x100000

.field public static final TRACE_COUNT_ALLOCS:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native cacheRegisterMap(Ljava/lang/String;)Z
.end method

.method public static native countInstancesOfClass(Ljava/lang/Class;Z)J
.end method

.method public static native crash()V
.end method

.method public static dumpHprofData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static native dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native dumpHprofDataDdms()V
.end method

.method public static native dumpReferenceTables()V
.end method

.method public static native getAllocCount(I)I
.end method

.method public static native getInstructionCount([I)V
.end method

.method public static native getLoadedClassCount()I
.end method

.method public static native getVmFeatureList()[Ljava/lang/String;
.end method

.method public static native infopoint(I)V
.end method

.method public static native isDebuggerConnected()Z
.end method

.method public static native isDebuggingEnabled()Z
.end method

.method public static native isMethodTracingActive()Z
.end method

.method public static native lastDebuggerActivity()J
.end method

.method public static native printLoadedClasses(I)V
.end method

.method public static native resetAllocCount(I)V
.end method

.method public static native resetInstructionCount()V
.end method

.method public static setAllocationLimit(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public static setGlobalAllocationLimit(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public static native startAllocCounting()V
.end method

.method private static startClassPrep()V
    .locals 0

    return-void
.end method

.method public static native startEmulatorTracing()V
.end method

.method private static startGC()V
    .locals 0

    return-void
.end method

.method public static native startInstructionCounting()V
.end method

.method public static startMethodTracing()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const-string v0, "/sdcard/dmtrace.trace"

    invoke-static {v0, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;II)V

    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;II)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ldalvik/system/VMDebug;->startMethodTracingNative(Ljava/lang/String;Ljava/io/FileDescriptor;II)V

    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracingNative(Ljava/lang/String;Ljava/io/FileDescriptor;II)V

    return-void
.end method

.method public static startMethodTracingDdms(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p0, p1}, Ldalvik/system/VMDebug;->startMethodTracingNative(Ljava/lang/String;Ljava/io/FileDescriptor;II)V

    return-void
.end method

.method private static native startMethodTracingNative(Ljava/lang/String;Ljava/io/FileDescriptor;II)V
.end method

.method public static native stopAllocCounting()V
.end method

.method public static native stopEmulatorTracing()V
.end method

.method public static native stopInstructionCounting()V
.end method

.method public static native stopMethodTracing()V
.end method

.method public static native threadCpuTimeNanos()J
.end method
