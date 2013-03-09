.class public Lcom/htc/android/htcime/util/ULogUtil;
.super Ljava/lang/Object;
.source "ULogUtil.java"


# static fields
.field private static final mAddID:Ljava/lang/String; = "com.htc.android.htcime"


# instance fields
.field private mULogData:Lcom/htc/utils/ulog/ReusableULogData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/util/ULogUtil;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    return-void
.end method

.method private setULogData()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/ULogUtil;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    .line 36
    iget-object v0, p0, Lcom/htc/android/htcime/util/ULogUtil;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    const-string v1, "com.htc.android.htcime"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 37
    return-void
.end method


# virtual methods
.method public addULogCategory(Ljava/lang/String;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/android/htcime/util/ULogUtil;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    if-nez v0, :cond_0

    .line 13
    invoke-direct {p0}, Lcom/htc/android/htcime/util/ULogUtil;->setULogData()V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/ULogUtil;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-virtual {v0, p1}, Lcom/htc/utils/ulog/ReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 16
    return-void
.end method

.method public addULogData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "data_key"
    .parameter "data_value"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/android/htcime/util/ULogUtil;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    if-nez v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/htc/android/htcime/util/ULogUtil;->setULogData()V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/ULogUtil;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-virtual {v0, p1, p2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 23
    return-void
.end method

.method public writeSinglePairULogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "category"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/ULogUtil;->addULogCategory(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/htc/android/htcime/util/ULogUtil;->addULogData(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/ULogUtil;->writeULogData()V

    .line 43
    return-void
.end method

.method public writeULogData()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/android/htcime/util/ULogUtil;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/ULogUtil;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 30
    iget-object v0, p0, Lcom/htc/android/htcime/util/ULogUtil;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/util/ULogUtil;->mULogData:Lcom/htc/utils/ulog/ReusableULogData;

    goto :goto_0
.end method
