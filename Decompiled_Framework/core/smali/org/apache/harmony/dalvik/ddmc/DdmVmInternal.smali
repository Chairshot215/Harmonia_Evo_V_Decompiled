.class public Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;
.super Ljava/lang/Object;
.source "DdmVmInternal.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native enableRecentAllocations(Z)V
.end method

.method public static native getRecentAllocationStatus()Z
.end method

.method public static native getRecentAllocations()[B
.end method

.method public static native getStackTraceById(I)[Ljava/lang/StackTraceElement;
.end method

.method public static native getThreadStats()[B
.end method

.method public static native heapInfoNotify(I)Z
.end method

.method public static native heapSegmentNotify(IIZ)Z
.end method

.method public static native threadNotify(Z)V
.end method
