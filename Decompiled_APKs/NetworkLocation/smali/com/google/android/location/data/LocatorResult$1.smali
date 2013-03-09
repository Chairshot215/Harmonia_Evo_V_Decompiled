.class final Lcom/google/android/location/data/LocatorResult$1;
.super Ljava/lang/Object;
.source "LocatorResult.java"

# interfaces
.implements Lcom/google/android/location/data/Persistent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/data/LocatorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/location/data/Persistent",
        "<",
        "Lcom/google/android/location/data/LocatorResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/DataInput;)Lcom/google/android/location/data/LocatorResult;
    .locals 6
    .parameter "dataIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, position:Lcom/google/android/location/data/Position;
    :try_start_0
    invoke-static {}, Lcom/google/android/location/data/LocatorResult$ResultStatus;->values()[Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-result-object v3

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    aget-object v2, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v2, status:Lcom/google/android/location/data/LocatorResult$ResultStatus;
    sget-object v3, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    if-ne v2, v3, :cond_0

    .line 90
    sget-object v3, Lcom/google/android/location/data/Position;->SAVER:Lcom/google/android/location/data/Persistent;

    invoke-interface {v3, p1}, Lcom/google/android/location/data/Persistent;->load(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #position:Lcom/google/android/location/data/Position;
    check-cast v1, Lcom/google/android/location/data/Position;

    .line 92
    .restart local v1       #position:Lcom/google/android/location/data/Position;
    :cond_0
    new-instance v3, Lcom/google/android/location/data/LocatorResult;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/google/android/location/data/LocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;J)V

    return-object v3

    .line 86
    .end local v2           #status:Lcom/google/android/location/data/LocatorResult$ResultStatus;
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "invalid status"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic load(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/location/data/LocatorResult$1;->load(Ljava/io/DataInput;)Lcom/google/android/location/data/LocatorResult;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcom/google/android/location/data/LocatorResult;Ljava/io/DataOutput;)V
    .locals 2
    .parameter "locatorResult"
    .parameter "dataOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p1, Lcom/google/android/location/data/LocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    invoke-virtual {v0}, Lcom/google/android/location/data/LocatorResult$ResultStatus;->ordinal()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 98
    iget-object v0, p1, Lcom/google/android/location/data/LocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    sget-object v1, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    if-ne v0, v1, :cond_0

    .line 99
    sget-object v0, Lcom/google/android/location/data/Position;->SAVER:Lcom/google/android/location/data/Persistent;

    iget-object v1, p1, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    invoke-interface {v0, v1, p2}, Lcom/google/android/location/data/Persistent;->save(Ljava/lang/Object;Ljava/io/DataOutput;)V

    .line 101
    :cond_0
    iget-wide v0, p1, Lcom/google/android/location/data/LocatorResult;->reportTime:J

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 102
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    check-cast p1, Lcom/google/android/location/data/LocatorResult;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/data/LocatorResult$1;->save(Lcom/google/android/location/data/LocatorResult;Ljava/io/DataOutput;)V

    return-void
.end method
