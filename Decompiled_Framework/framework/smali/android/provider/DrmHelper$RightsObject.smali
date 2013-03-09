.class public final Landroid/provider/DrmHelper$RightsObject;
.super Ljava/lang/Object;
.source "DrmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DrmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RightsObject"
.end annotation


# instance fields
.field private count:I

.field private endDate:Ljava/util/Date;

.field private interval:J

.field private noConstraint:Z

.field private startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/provider/DrmStore$DrmConstraint;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/provider/DrmHelper$RightsObject;->noConstraint:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/provider/DrmHelper$RightsObject;->count:I

    iput-object v1, p0, Landroid/provider/DrmHelper$RightsObject;->startDate:Ljava/util/Date;

    iput-object v1, p0, Landroid/provider/DrmHelper$RightsObject;->endDate:Ljava/util/Date;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/provider/DrmHelper$RightsObject;->interval:J

    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->isNoConstraint()Z

    move-result v0

    iput-boolean v0, p0, Landroid/provider/DrmHelper$RightsObject;->noConstraint:Z

    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v0

    iput v0, p0, Landroid/provider/DrmHelper$RightsObject;->count:I

    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/DrmHelper$RightsObject;->startDate:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/DrmHelper$RightsObject;->endDate:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/provider/DrmHelper$RightsObject;->interval:J

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Landroid/provider/DrmHelper$RightsObject;->count:I

    return v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/provider/DrmHelper$RightsObject;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Landroid/provider/DrmHelper$RightsObject;->interval:J

    return-wide v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/provider/DrmHelper$RightsObject;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public isNoConstraint()Z
    .locals 1

    iget-boolean v0, p0, Landroid/provider/DrmHelper$RightsObject;->noConstraint:Z

    return v0
.end method
