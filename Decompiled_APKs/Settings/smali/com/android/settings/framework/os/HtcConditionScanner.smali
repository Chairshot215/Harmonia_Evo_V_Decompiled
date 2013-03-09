.class public abstract Lcom/android/settings/framework/os/HtcConditionScanner;
.super Ljava/lang/Object;
.source "HtcConditionScanner.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mScanningTimes:I

.field private mSuccessful:Z

.field private mTimeInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/settings/framework/os/HtcConditionScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/os/HtcConditionScanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mTimeInterval:I

    .line 24
    iput v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    .line 27
    iput-boolean v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mSuccessful:Z

    .line 35
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "timeInterval"
    .parameter "scanningTimes"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mTimeInterval:I

    .line 24
    iput v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    .line 27
    iput-boolean v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mSuccessful:Z

    .line 45
    iput p1, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mTimeInterval:I

    .line 46
    iput p2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    .line 47
    return-void
.end method


# virtual methods
.method protected dumpStates(I)V
    .locals 0
    .parameter "round"

    .prologue
    .line 165
    return-void
.end method

.method protected finish(Z)V
    .locals 0
    .parameter "successful"

    .prologue
    .line 156
    return-void
.end method

.method public getResult()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mSuccessful:Z

    return v0
.end method

.method public getScanningTimes()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    return v0
.end method

.method public getTimeInterval()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mTimeInterval:I

    return v0
.end method

.method public setScanningTimes(I)V
    .locals 2
    .parameter "scanningTimes"

    .prologue
    .line 96
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 97
    const-string v0, "\'scanningTimes\' must be a natural number"

    .line 98
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    iput p1, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    .line 101
    return-void
.end method

.method public setTimeInterval(I)V
    .locals 2
    .parameter "timeInterval"

    .prologue
    .line 83
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 84
    const-string v0, "\'timeInterval\' must be a natural number"

    .line 85
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    iput p1, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mTimeInterval:I

    .line 88
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    if-ge v1, v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/framework/os/HtcConditionScanner;->until()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mSuccessful:Z

    .line 133
    :cond_0
    iget v2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mScanningTimes:I

    if-ne v1, v2, :cond_1

    .line 134
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mSuccessful:Z

    .line 136
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mSuccessful:Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/os/HtcConditionScanner;->finish(Z)V

    .line 137
    return-void

    .line 126
    :cond_2
    :try_start_0
    iget v2, p0, Lcom/android/settings/framework/os/HtcConditionScanner;->mTimeInterval:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v2, Lcom/android/settings/framework/os/HtcConditionScanner;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected abstract until()Z
.end method
