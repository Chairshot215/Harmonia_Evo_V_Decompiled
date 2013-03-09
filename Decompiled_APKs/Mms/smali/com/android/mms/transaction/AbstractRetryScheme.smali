.class public abstract Lcom/android/mms/transaction/AbstractRetryScheme;
.super Ljava/lang/Object;
.source "AbstractRetryScheme.java"


# instance fields
.field protected mErrorType:I

.field protected mRetriedTimes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "retriedTimes"

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(II)V

    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "retriedTimes"
    .parameter "errorType"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 36
    iput p2, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mErrorType:I

    .line 37
    return-void
.end method


# virtual methods
.method public abstract getRetryLimit()I
.end method

.method public abstract getWaitingInterval()J
.end method
