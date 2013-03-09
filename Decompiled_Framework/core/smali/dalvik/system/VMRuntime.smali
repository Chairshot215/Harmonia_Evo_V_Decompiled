.class public final Ldalvik/system/VMRuntime;
.super Ljava/lang/Object;
.source "VMRuntime.java"


# static fields
.field private static final THE_ONE:Ldalvik/system/VMRuntime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldalvik/system/VMRuntime;

    invoke-direct {v0}, Ldalvik/system/VMRuntime;-><init>()V

    sput-object v0, Ldalvik/system/VMRuntime;->THE_ONE:Ldalvik/system/VMRuntime;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRuntime()Ldalvik/system/VMRuntime;
    .locals 1

    sget-object v0, Ldalvik/system/VMRuntime;->THE_ONE:Ldalvik/system/VMRuntime;

    return-object v0
.end method

.method private native nativeSetTargetHeapUtilization(F)V
.end method

.method private native trackNativeAllocation(J)Z
.end method

.method private native trackNativeFree(J)V
.end method


# virtual methods
.method public native addressOf(Ljava/lang/Object;)J
.end method

.method public native bootClassPath()Ljava/lang/String;
.end method

.method public native classPath()Ljava/lang/String;
.end method

.method public native clearGrowthLimit()V
.end method

.method public native disableGc(J)V
.end method

.method public native disableGcForExternalAlloc(Z)V
.end method

.method public native disableJitCompilation()V
.end method

.method public native enableGc()V
.end method

.method public native endRestoreBitmap()V
.end method

.method public gcSoftReferences()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public native gcSoftReferences(Z)V
.end method

.method public getExternalBytesAllocated()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public native getExternalBytesAllocatedMax()J
.end method

.method public getMinimumHeapSize()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public native getNativeBytesAllocated()J
.end method

.method public native getTargetHeapUtilization()F
.end method

.method public native isDebuggerActive()Z
.end method

.method public native newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public native properties()[Ljava/lang/String;
.end method

.method public runFinalizationSync()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    return-void
.end method

.method public setMinimumHeapSize(J)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setTargetHeapUtilization(F)F
    .locals 5

    float-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    float-to-double v1, p1

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range (0,1)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v0

    invoke-direct {p0, p1}, Ldalvik/system/VMRuntime;->nativeSetTargetHeapUtilization(F)V

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public native setTargetSdkVersion(I)V
.end method

.method public native startJitCompilation()V
.end method

.method public native startRestoreBitmap()V
.end method

.method public trackExternalAllocation(J)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public trackExternalFree(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public native vmVersion()Ljava/lang/String;
.end method
