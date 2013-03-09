.class public Lcom/htc/wrap/android/server/data/HtcWrapBuildData;
.super Ljava/lang/Object;
.source "HtcWrapBuildData.java"


# static fields
.field private static final VERSION:I


# instance fields
.field private final fingerprint:Ljava/lang/String;

.field private final incrementalVersion:Ljava/lang/String;

.field private final time:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->fingerprint:Ljava/lang/String;

    .line 42
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->incrementalVersion:Ljava/lang/String;

    .line 43
    sget-wide v0, Landroid/os/Build;->TIME:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->time:J

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 54
    .local v0, dataVersion:I
    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected 0. Got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->fingerprint:Ljava/lang/String;

    .line 59
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->incrementalVersion:Ljava/lang/String;

    .line 60
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->time:J

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "fingerprint"
    .parameter "incrementalVersion"
    .parameter "time"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/htc/wrap/com/android/internal/util/HtcWrapObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->fingerprint:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->incrementalVersion:Ljava/lang/String;

    .line 49
    iput-wide p3, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->time:J

    .line 50
    return-void
.end method


# virtual methods
.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getIncrementalVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->incrementalVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->time:J

    return-wide v0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 65
    iget-object v3, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->fingerprint:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 71
    :try_start_0
    iget-object v3, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->incrementalVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 75
    .local v0, changelist:J
    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 76
    iget-wide v3, p0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->time:J

    invoke-interface {p1, v3, v4}, Ljava/io/DataOutput;->writeLong(J)V

    .line 77
    return-void

    .line 72
    .end local v0           #changelist:J
    :catch_0
    move-exception v2

    .line 73
    .local v2, ex:Ljava/lang/NumberFormatException;
    const-wide/16 v0, -0x1

    .restart local v0       #changelist:J
    goto :goto_0
.end method
