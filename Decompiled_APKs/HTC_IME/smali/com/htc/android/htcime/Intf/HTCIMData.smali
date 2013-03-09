.class public Lcom/htc/android/htcime/Intf/HTCIMData;
.super Ljava/lang/Object;
.source "HTCIMData.java"


# instance fields
.field public imACSelectIdxLimit:I

.field public imActiveCandLen:I

.field public imEditWordLen:I

.field public imHasCandidate:Z

.field public imID:I

.field public imName:Ljava/lang/String;

.field public imNonWord:Z

.field public imSelectIdxLimit:I

.field public imSelectTopIdxLimit:I

.field public isCompletionsMode:Z

.field public passUpdateSelection:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/Intf/HTCIMData;->imName:Ljava/lang/String;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 27
    iput-boolean v1, p0, Lcom/htc/android/htcime/Intf/HTCIMData;->imHasCandidate:Z

    .line 28
    iput v1, p0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    .line 29
    iput v1, p0, Lcom/htc/android/htcime/Intf/HTCIMData;->imActiveCandLen:I

    .line 30
    iput v1, p0, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    .line 31
    iput v1, p0, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectTopIdxLimit:I

    .line 32
    iput-boolean v1, p0, Lcom/htc/android/htcime/Intf/HTCIMData;->imNonWord:Z

    .line 33
    iput-boolean v1, p0, Lcom/htc/android/htcime/Intf/HTCIMData;->passUpdateSelection:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/android/htcime/Intf/HTCIMData;->isCompletionsMode:Z

    .line 36
    iput v1, p0, Lcom/htc/android/htcime/Intf/HTCIMData;->imACSelectIdxLimit:I

    return-void
.end method
