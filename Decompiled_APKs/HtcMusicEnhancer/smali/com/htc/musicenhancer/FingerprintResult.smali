.class public Lcom/htc/musicenhancer/FingerprintResult;
.super Ljava/lang/Object;
.source "FingerprintResult.java"


# static fields
.field static final STATE_NO_TRACK:I = 0x1

.field static final STATE_SUCCESS:I = 0x0

.field static final STATE_TRACK_LENGTH_TOO_SMALL:I = 0x2

.field static final STATE_UNKNOWN_ALBUM:I = 0x3

.field static final STATE_UNKNOWN_ERROR:I = 0x4

.field static final STATE_UNSUPPORTED_FORMAT:I = 0x1


# instance fields
.field private mFingerprintData:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/musicenhancer/FingerprintResult;->mState:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/musicenhancer/FingerprintResult;->mFingerprintData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getFingerprintData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/musicenhancer/FingerprintResult;->mFingerprintData:Ljava/lang/String;

    return-object v0
.end method

.method getState()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/musicenhancer/FingerprintResult;->mState:I

    return v0
.end method

.method setFingerprintData(Ljava/lang/String;)V
    .locals 0
    .parameter "fingerprintData"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/musicenhancer/FingerprintResult;->mFingerprintData:Ljava/lang/String;

    .line 31
    return-void
.end method

.method setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/musicenhancer/FingerprintResult;->mState:I

    .line 23
    return-void
.end method
