.class public Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;
.super Ljava/lang/Object;
.source "StopwatchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/StopwatchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopwatchLapData"
.end annotation


# instance fields
.field lap_id:I

.field lap_time:J

.field lap_total_time:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_id:I

    .line 18
    iput-wide v1, p0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_total_time:J

    .line 19
    iput-wide v1, p0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_time:J

    .line 28
    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 3
    .parameter "lap_id"
    .parameter "lap_total_time"
    .parameter "lap_time"

    .prologue
    const-wide/16 v1, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_id:I

    .line 18
    iput-wide v1, p0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_total_time:J

    .line 19
    iput-wide v1, p0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_time:J

    .line 22
    iput p1, p0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_id:I

    .line 23
    iput-wide p2, p0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_total_time:J

    .line 24
    iput-wide p4, p0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_time:J

    .line 25
    return-void
.end method
