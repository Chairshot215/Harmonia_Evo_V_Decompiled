.class public Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;
.super Ljava/lang/Object;
.source "BatchInterrupted.java"


# instance fields
.field private error:I

.field private reason:Ljava/lang/String;

.field private success:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getErrorCount()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->error:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessCount()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->success:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->total:I

    return v0
.end method

.method public setErrorCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->error:I

    .line 74
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->reason:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSuccessCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->success:I

    .line 60
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->total:I

    .line 46
    return-void
.end method
