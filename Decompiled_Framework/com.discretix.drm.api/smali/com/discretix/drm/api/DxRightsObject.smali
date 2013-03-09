.class public final Lcom/discretix/drm/api/DxRightsObject;
.super Ljava/lang/Object;
.source "DxRightsObject.java"


# instance fields
.field private mAccumulatedSecondsLeft:J

.field private mConstraints:J

.field private mCountLeft:J

.field private mEndTime:Ljava/util/Date;

.field private mIndividualValues:[Ljava/lang/String;

.field private mInitialAccumulatedSeconds:J

.field private mInitialCount:J

.field private mInitialTimedCount:J

.field private mIntervalPeriodInSeconds:J

.field private mIsStateful:Z

.field private mPermissions:J

.field private mStartTime:Ljava/util/Date;

.field private mStatus:Lcom/discretix/drm/api/EDxRightsObjectStatus;

.field private mTimedCountLeft:J

.field private mTimedCountTimer:J

.field private mUseRestriction:Lcom/discretix/drm/api/EDxUseRestriction;


# direct methods
.method public constructor <init>(Lcom/discretix/drm/api/IDxRightsObject;)V
    .locals 7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->Permissions()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mPermissions:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->Constraints()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mConstraints:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->InitialCount()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mInitialCount:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->CountLeft()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mCountLeft:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->InitialTimedCount()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mInitialTimedCount:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->TimedCountLeft()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mTimedCountLeft:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->TimedCountTimer()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mTimedCountTimer:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->StartTime()Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mStartTime:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->EndTime()Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mEndTime:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->IntervalPeriodInSeconds()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mIntervalPeriodInSeconds:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->InitialAccumulatedSeconds()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mInitialAccumulatedSeconds:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->AccumulatedSecondsLeft()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mAccumulatedSecondsLeft:J

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->GetNumOfIndividualValues()J

    move-result-wide v0

    long-to-int v4, v0

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mIndividualValues:[Ljava/lang/String;

    const-wide/16 v2, 0x0

    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mIndividualValues:[Ljava/lang/String;

    long-to-int v5, v2

    invoke-virtual {p1, v2, v3}, Lcom/discretix/drm/api/IDxRightsObject;->IndividualValue(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->GetUseRestriction()Lcom/discretix/drm/api/EDxUseRestriction;

    move-result-object v4

    iput-object v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mUseRestriction:Lcom/discretix/drm/api/EDxUseRestriction;

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->IsStateful()Z

    move-result v4

    iput-boolean v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mIsStateful:Z

    invoke-virtual {p1}, Lcom/discretix/drm/api/IDxRightsObject;->GetStatus()Lcom/discretix/drm/api/EDxRightsObjectStatus;

    move-result-object v4

    iput-object v4, p0, Lcom/discretix/drm/api/DxRightsObject;->mStatus:Lcom/discretix/drm/api/EDxRightsObjectStatus;

    return-void
.end method


# virtual methods
.method public final getAccumulatedSecondsLeft()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mAccumulatedSecondsLeft:J

    return-wide v0
.end method

.method public final getConstraints()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mConstraints:J

    return-wide v0
.end method

.method public final getCountLeft()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mCountLeft:J

    return-wide v0
.end method

.method public final getEndTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mEndTime:Ljava/util/Date;

    return-object v0
.end method

.method public final getIndividualValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mIndividualValues:[Ljava/lang/String;

    return-object v0
.end method

.method public final getInitialAccumulatedSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mInitialAccumulatedSeconds:J

    return-wide v0
.end method

.method public final getInitialCount()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mInitialCount:J

    return-wide v0
.end method

.method public final getInitialTimedCount()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mInitialTimedCount:J

    return-wide v0
.end method

.method public final getIntervalPeriodInSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mIntervalPeriodInSeconds:J

    return-wide v0
.end method

.method public final getPermissions()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mPermissions:J

    return-wide v0
.end method

.method public final getStartTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mStartTime:Ljava/util/Date;

    return-object v0
.end method

.method public final getStatus()Lcom/discretix/drm/api/EDxRightsObjectStatus;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mStatus:Lcom/discretix/drm/api/EDxRightsObjectStatus;

    return-object v0
.end method

.method public final getTimedCountLeft()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mTimedCountLeft:J

    return-wide v0
.end method

.method public final getTimedCountTimer()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mTimedCountTimer:J

    return-wide v0
.end method

.method public final getUseRestriction()Lcom/discretix/drm/api/EDxUseRestriction;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mUseRestriction:Lcom/discretix/drm/api/EDxUseRestriction;

    return-object v0
.end method

.method public final isStateful()Z
    .locals 1

    iget-boolean v0, p0, Lcom/discretix/drm/api/DxRightsObject;->mIsStateful:Z

    return v0
.end method
