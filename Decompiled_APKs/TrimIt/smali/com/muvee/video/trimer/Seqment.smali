.class public Lcom/muvee/video/trimer/Seqment;
.super Ljava/lang/Object;
.source "Seqment.java"


# instance fields
.field private mEndTime:F

.field private mStartTime:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/muvee/video/trimer/Seqment;->mStartTime:F

    .line 11
    iput p2, p0, Lcom/muvee/video/trimer/Seqment;->mEndTime:F

    .line 12
    return-void
.end method


# virtual methods
.method public getEndTime()F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/muvee/video/trimer/Seqment;->mEndTime:F

    return v0
.end method

.method public getStartTime()F
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/muvee/video/trimer/Seqment;->mStartTime:F

    return v0
.end method

.method public setEndTime(F)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 23
    iput p1, p0, Lcom/muvee/video/trimer/Seqment;->mEndTime:F

    .line 24
    return-void
.end method

.method public setStartTime(F)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 17
    iput p1, p0, Lcom/muvee/video/trimer/Seqment;->mStartTime:F

    .line 18
    return-void
.end method
