.class final Lcom/google/android/location/data/WifiApPosition$1;
.super Ljava/lang/Object;
.source "WifiApPosition.java"

# interfaces
.implements Lcom/google/android/location/data/Persistent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/data/WifiApPosition;
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
        "Lcom/google/android/location/data/WifiApPosition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/DataInput;)Lcom/google/android/location/data/WifiApPosition;
    .locals 8
    .parameter "dataIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    sget-object v0, Lcom/google/android/location/data/Position;->SAVER:Lcom/google/android/location/data/Persistent;

    invoke-interface {v0, p1}, Lcom/google/android/location/data/Persistent;->load(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/location/data/Position;

    .line 132
    .local v7, p:Lcom/google/android/location/data/Position;
    new-instance v0, Lcom/google/android/location/data/WifiApPosition;

    iget v1, v7, Lcom/google/android/location/data/Position;->latE7:I

    iget v2, v7, Lcom/google/android/location/data/Position;->lngE7:I

    iget v3, v7, Lcom/google/android/location/data/Position;->accuracyMm:I

    iget v4, v7, Lcom/google/android/location/data/Position;->confidence:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/data/WifiApPosition;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 134
    .end local v7           #p:Lcom/google/android/location/data/Position;
    :catch_0
    move-exception v6

    .line 135
    .local v6, e:Ljava/io/IOException;
    throw v6
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
    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/location/data/WifiApPosition$1;->load(Ljava/io/DataInput;)Lcom/google/android/location/data/WifiApPosition;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcom/google/android/location/data/WifiApPosition;Ljava/io/DataOutput;)V
    .locals 2
    .parameter "position"
    .parameter "dataOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    sget-object v1, Lcom/google/android/location/data/Position;->SAVER:Lcom/google/android/location/data/Persistent;

    invoke-interface {v1, p1, p2}, Lcom/google/android/location/data/Persistent;->save(Ljava/lang/Object;Ljava/io/DataOutput;)V

    .line 143
    iget v1, p1, Lcom/google/android/location/data/WifiApPosition;->horizontalUncertaintyMm:I

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/io/IOException;
    throw v0
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
    .line 124
    check-cast p1, Lcom/google/android/location/data/WifiApPosition;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/data/WifiApPosition$1;->save(Lcom/google/android/location/data/WifiApPosition;Ljava/io/DataOutput;)V

    return-void
.end method
