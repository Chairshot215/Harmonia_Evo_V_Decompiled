.class public final Lcom/google/android/location/cache/CacheResult;
.super Ljava/lang/Object;
.source "CacheResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private collectionPriority:F

.field private collections:I

.field private lastSeenTime:J

.field private position:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private readingTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "lastSeenTime"

    .prologue
    .line 56
    .local p0, this:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/cache/CacheResult;->readingTime:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/cache/CacheResult;->collections:I

    .line 46
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/location/cache/CacheResult;->collectionPriority:F

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/cache/CacheResult;->position:Ljava/lang/Object;

    .line 57
    iput-wide p1, p0, Lcom/google/android/location/cache/CacheResult;->lastSeenTime:J

    .line 58
    return-void
.end method

.method public static load(Ljava/io/DataInput;Lcom/google/android/location/data/Persistent;)Lcom/google/android/location/cache/CacheResult;
    .locals 5
    .parameter "dataIn"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/DataInput;",
            "Lcom/google/android/location/data/Persistent",
            "<TP;>;)",
            "Lcom/google/android/location/cache/CacheResult",
            "<TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    .local p1, saver:Lcom/google/android/location/data/Persistent;,"Lcom/google/android/location/data/Persistent<TP;>;"
    new-instance v0, Lcom/google/android/location/cache/CacheResult;

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/cache/CacheResult;-><init>(J)V

    .line 152
    .local v0, result:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TP;>;"
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/location/cache/CacheResult;->readingTime:J

    .line 153
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/location/cache/CacheResult;->collections:I

    .line 154
    iget-wide v1, v0, Lcom/google/android/location/cache/CacheResult;->readingTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {p0}, Ljava/io/DataInput;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/google/android/location/cache/CacheResult;->collectionPriority:F

    .line 156
    invoke-interface {p1, p0}, Lcom/google/android/location/data/Persistent;->load(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/cache/CacheResult;->position:Ljava/lang/Object;

    .line 161
    :goto_0
    return-object v0

    .line 158
    :cond_0
    const/high16 v1, -0x4080

    iput v1, v0, Lcom/google/android/location/cache/CacheResult;->collectionPriority:F

    .line 159
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/location/cache/CacheResult;->position:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static save(Lcom/google/android/location/cache/CacheResult;Ljava/io/DataOutput;Lcom/google/android/location/data/Persistent;)V
    .locals 4
    .parameter
    .parameter "dataOut"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/location/cache/CacheResult",
            "<TP;>;",
            "Ljava/io/DataOutput;",
            "Lcom/google/android/location/data/Persistent",
            "<TP;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    .local p0, result:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TP;>;"
    .local p2, saver:Lcom/google/android/location/data/Persistent;,"Lcom/google/android/location/data/Persistent<TP;>;"
    iget-wide v0, p0, Lcom/google/android/location/cache/CacheResult;->lastSeenTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 167
    iget-wide v0, p0, Lcom/google/android/location/cache/CacheResult;->readingTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 168
    iget v0, p0, Lcom/google/android/location/cache/CacheResult;->collections:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 169
    iget-wide v0, p0, Lcom/google/android/location/cache/CacheResult;->readingTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 170
    iget v0, p0, Lcom/google/android/location/cache/CacheResult;->collectionPriority:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    .line 171
    iget-object v0, p0, Lcom/google/android/location/cache/CacheResult;->position:Ljava/lang/Object;

    invoke-interface {p2, v0, p1}, Lcom/google/android/location/data/Persistent;->save(Ljava/lang/Object;Ljava/io/DataOutput;)V

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public getLastSeenTime()J
    .locals 2

    .prologue
    .line 72
    .local p0, this:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TT;>;"
    iget-wide v0, p0, Lcom/google/android/location/cache/CacheResult;->lastSeenTime:J

    return-wide v0
.end method

.method public getPosition()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, this:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TT;>;"
    iget-object v0, p0, Lcom/google/android/location/cache/CacheResult;->position:Ljava/lang/Object;

    return-object v0
.end method

.method public getReadingTime()J
    .locals 2

    .prologue
    .line 65
    .local p0, this:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TT;>;"
    iget-wide v0, p0, Lcom/google/android/location/cache/CacheResult;->readingTime:J

    return-wide v0
.end method

.method public hasGlsResult()Z
    .locals 4

    .prologue
    .line 110
    .local p0, this:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TT;>;"
    iget-wide v0, p0, Lcom/google/android/location/cache/CacheResult;->readingTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeGlsResult()V
    .locals 2

    .prologue
    .line 102
    .local p0, this:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TT;>;"
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/cache/CacheResult;->readingTime:J

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/cache/CacheResult;->position:Ljava/lang/Object;

    .line 104
    return-void
.end method

.method setGlsResult(Ljava/lang/Object;JF)V
    .locals 2
    .parameter
    .parameter "readingTime"
    .parameter "collectionPriority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JF)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TT;>;"
    .local p1, position:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position may not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-wide p2, p0, Lcom/google/android/location/cache/CacheResult;->readingTime:J

    .line 94
    iput-object p1, p0, Lcom/google/android/location/cache/CacheResult;->position:Ljava/lang/Object;

    .line 95
    iput p4, p0, Lcom/google/android/location/cache/CacheResult;->collectionPriority:F

    .line 96
    return-void
.end method

.method public setLastSeenTime(J)V
    .locals 0
    .parameter "lastSeenTime"

    .prologue
    .line 80
    .local p0, this:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TT;>;"
    iput-wide p1, p0, Lcom/google/android/location/cache/CacheResult;->lastSeenTime:J

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    .local p0, this:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/location/cache/CacheResult;->hasGlsResult()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/cache/CacheResult;->position:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, positionString:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheResult ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " readingTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/location/cache/CacheResult;->readingTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastSeenTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/location/cache/CacheResult;->lastSeenTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " collections="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/cache/CacheResult;->collections:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " collectionPriority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/cache/CacheResult;->collectionPriority:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 144
    .end local v0           #positionString:Ljava/lang/String;
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
