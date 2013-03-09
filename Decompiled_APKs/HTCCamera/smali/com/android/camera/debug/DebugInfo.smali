.class public abstract Lcom/android/camera/debug/DebugInfo;
.super Ljava/lang/Object;
.source "DebugInfo.java"


# instance fields
.field private m_StartTimeMillis:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/debug/DebugInfo;->m_StartTimeMillis:J

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/debug/DebugInfo;->m_StartTimeMillis:J

    return-void
.end method


# virtual methods
.method public final getElapsedMilliseconds()J
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/debug/DebugInfo;->m_StartTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/debug/DebugInfo;->m_StartTimeMillis:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/debug/DebugInfo;->m_StartTimeMillis:J

    return-wide v0
.end method

.method protected final setStartTime(J)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/debug/DebugInfo;->m_StartTimeMillis:J

    return-void
.end method
