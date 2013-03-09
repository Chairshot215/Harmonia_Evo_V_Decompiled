.class public Lcom/android/camera/debug/MethodDebugInfo;
.super Lcom/android/camera/debug/DebugInfo;
.source "MethodDebugInfo.java"


# instance fields
.field private m_IsMethodLeaved:Z

.field private final m_Method:Ljava/lang/StackTraceElement;

.field private final m_MethodCaller:Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/camera/debug/DebugInfo;-><init>()V

    invoke-static {v4}, Lcom/android/camera/debug/Debugger;->getMethodCallers(I)[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lt v1, v3, :cond_1

    const/4 v1, 0x1

    aget-object v1, v0, v1

    :goto_0
    iput-object v1, p0, Lcom/android/camera/debug/MethodDebugInfo;->m_Method:Ljava/lang/StackTraceElement;

    array-length v1, v0

    if-lt v1, v4, :cond_0

    aget-object v2, v0, v3

    :cond_0
    iput-object v2, p0, Lcom/android/camera/debug/MethodDebugInfo;->m_MethodCaller:Ljava/lang/StackTraceElement;

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/debug/MethodDebugInfo;->setStartTime(J)V

    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/android/camera/debug/MethodDebugInfo;->m_Method:Ljava/lang/StackTraceElement;

    iput-object v2, p0, Lcom/android/camera/debug/MethodDebugInfo;->m_MethodCaller:Ljava/lang/StackTraceElement;

    goto :goto_1
.end method


# virtual methods
.method public final getMethod()Ljava/lang/StackTraceElement;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/debug/MethodDebugInfo;->m_Method:Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public final getMethodCaller()Ljava/lang/StackTraceElement;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/debug/MethodDebugInfo;->m_MethodCaller:Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public final isMethodLeaved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/debug/MethodDebugInfo;->m_IsMethodLeaved:Z

    return v0
.end method

.method final leaveMethod()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/debug/MethodDebugInfo;->m_IsMethodLeaved:Z

    return-void
.end method
