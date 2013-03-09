.class public Lcom/awox/jUPnPCP/ConvertDateGetResult;
.super Ljava/lang/Object;
.source "ConvertDateGetResult.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_ConvertDateGetResult()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/ConvertDateGetResult;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/ConvertDateGetResult;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->delete_ConvertDateGetResult(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/ConvertDateGetResult;->delete()V

    .line 26
    return-void
.end method

.method public getDay()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_Day_get(JLcom/awox/jUPnPCP/ConvertDateGetResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHour()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_Hour_get(JLcom/awox/jUPnPCP/ConvertDateGetResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMilliSecond()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_MilliSecond_get(JLcom/awox/jUPnPCP/ConvertDateGetResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_Minute_get(JLcom/awox/jUPnPCP/ConvertDateGetResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_Month_get(JLcom/awox/jUPnPCP/ConvertDateGetResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecond()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_Second_get(JLcom/awox/jUPnPCP/ConvertDateGetResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeZoneHour()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_TimeZoneHour_get(JLcom/awox/jUPnPCP/ConvertDateGetResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeZoneMinute()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_TimeZoneMinute_get(JLcom/awox/jUPnPCP/ConvertDateGetResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getYear()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_Year_get(JLcom/awox/jUPnPCP/ConvertDateGetResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setDay(J)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_Day_set(JLcom/awox/jUPnPCP/ConvertDateGetResult;J)V

    .line 60
    return-void
.end method

.method public setHour(J)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_Hour_set(JLcom/awox/jUPnPCP/ConvertDateGetResult;J)V

    .line 68
    return-void
.end method

.method public setMilliSecond(J)V
    .locals 2
    .parameter

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_MilliSecond_set(JLcom/awox/jUPnPCP/ConvertDateGetResult;J)V

    .line 92
    return-void
.end method

.method public setMinute(J)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_Minute_set(JLcom/awox/jUPnPCP/ConvertDateGetResult;J)V

    .line 76
    return-void
.end method

.method public setMonth(J)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_Month_set(JLcom/awox/jUPnPCP/ConvertDateGetResult;J)V

    .line 52
    return-void
.end method

.method public setSecond(J)V
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_Second_set(JLcom/awox/jUPnPCP/ConvertDateGetResult;J)V

    .line 84
    return-void
.end method

.method public setTimeZoneHour(J)V
    .locals 2
    .parameter

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_TimeZoneHour_set(JLcom/awox/jUPnPCP/ConvertDateGetResult;J)V

    .line 100
    return-void
.end method

.method public setTimeZoneMinute(J)V
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_TimeZoneMinute_set(JLcom/awox/jUPnPCP/ConvertDateGetResult;J)V

    .line 108
    return-void
.end method

.method public setYear(J)V
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/ConvertDateGetResult;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->ConvertDateGetResult_Year_set(JLcom/awox/jUPnPCP/ConvertDateGetResult;J)V

    .line 44
    return-void
.end method
