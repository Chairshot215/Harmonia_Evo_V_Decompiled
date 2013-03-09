.class public Lcom/discretix/drm/api/IDxRightsObject;
.super Ljava/lang/Object;
.source "IDxRightsObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discretix/drm/api/IDxRightsObject$EDxRightsEvaulationMode;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/discretix/drm/api/IDxRightsObject;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public AccumulatedSecondsLeft()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_AccumulatedSecondsLeft(JLcom/discretix/drm/api/IDxRightsObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public Constraints()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_Constraints(JLcom/discretix/drm/api/IDxRightsObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public CountLeft()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_CountLeft(JLcom/discretix/drm/api/IDxRightsObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public EndTime()Ljava/util/Date;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_EndTime(JLcom/discretix/drm/api/IDxRightsObject;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public GetNumOfIndividualValues()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_GetNumOfIndividualValues(JLcom/discretix/drm/api/IDxRightsObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetStatus()Lcom/discretix/drm/api/EDxRightsObjectStatus;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_GetStatus__SWIG_1(JLcom/discretix/drm/api/IDxRightsObject;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxRightsObjectStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxRightsObjectStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetStatus(Lcom/discretix/drm/api/IDxRightsObject$EDxRightsEvaulationMode;)Lcom/discretix/drm/api/EDxRightsObjectStatus;
    .locals 3

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject$EDxRightsEvaulationMode;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_GetStatus__SWIG_0(JLcom/discretix/drm/api/IDxRightsObject;I)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxRightsObjectStatus;->swigToEnum(I)Lcom/discretix/drm/api/EDxRightsObjectStatus;

    move-result-object v0

    return-object v0
.end method

.method public GetUseRestriction()Lcom/discretix/drm/api/EDxUseRestriction;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_GetUseRestriction(JLcom/discretix/drm/api/IDxRightsObject;)I

    move-result v0

    invoke-static {v0}, Lcom/discretix/drm/api/EDxUseRestriction;->swigToEnum(I)Lcom/discretix/drm/api/EDxUseRestriction;

    move-result-object v0

    return-object v0
.end method

.method public IndividualValue(J)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_IndividualValue(JLcom/discretix/drm/api/IDxRightsObject;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public InitialAccumulatedSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_InitialAccumulatedSeconds(JLcom/discretix/drm/api/IDxRightsObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public InitialCount()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_InitialCount(JLcom/discretix/drm/api/IDxRightsObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public InitialTimedCount()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_InitialTimedCount(JLcom/discretix/drm/api/IDxRightsObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public IntervalPeriodInSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_IntervalPeriodInSeconds(JLcom/discretix/drm/api/IDxRightsObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public IsStateful()Z
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_IsStateful(JLcom/discretix/drm/api/IDxRightsObject;)Z

    move-result v0

    return v0
.end method

.method public Permissions()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_Permissions(JLcom/discretix/drm/api/IDxRightsObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public StartTime()Ljava/util/Date;
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_StartTime(JLcom/discretix/drm/api/IDxRightsObject;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public TimeLeft([J)J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_TimeLeft(JLcom/discretix/drm/api/IDxRightsObject;[J)J

    move-result-wide v0

    return-wide v0
.end method

.method public TimedCountLeft()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_TimedCountLeft(JLcom/discretix/drm/api/IDxRightsObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public TimedCountTimer()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/discretix/drm/api/DxDrmCoreJNI;->IDxRightsObject_TimedCountTimer(JLcom/discretix/drm/api/IDxRightsObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public delete()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/discretix/drm/api/IDxRightsObject;->swigCPtr:J

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/IDxRightsObject;->delete()V

    return-void
.end method
