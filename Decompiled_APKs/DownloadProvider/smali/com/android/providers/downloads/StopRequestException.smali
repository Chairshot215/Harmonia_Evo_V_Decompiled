.class Lcom/android/providers/downloads/StopRequestException;
.super Ljava/lang/Exception;
.source "StopRequestException.java"


# instance fields
.field public mFinalStatus:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "finalStatus"
    .parameter "message"

    .prologue
    .line 29
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    iput p1, p0, Lcom/android/providers/downloads/StopRequestException;->mFinalStatus:I

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "finalStatus"
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 34
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput p1, p0, Lcom/android/providers/downloads/StopRequestException;->mFinalStatus:I

    .line 36
    return-void
.end method
