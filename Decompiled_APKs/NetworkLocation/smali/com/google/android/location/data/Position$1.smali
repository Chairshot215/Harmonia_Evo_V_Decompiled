.class final Lcom/google/android/location/data/Position$1;
.super Ljava/lang/Object;
.source "Position.java"

# interfaces
.implements Lcom/google/android/location/data/Persistent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/data/Position;
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
        "Lcom/google/android/location/data/Position;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/DataInput;)Lcom/google/android/location/data/Position;
    .locals 2
    .parameter "dataIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/google/android/location/data/Position$PositionBuilder;

    invoke-direct {v0}, Lcom/google/android/location/data/Position$PositionBuilder;-><init>()V

    .line 217
    .local v0, builder:Lcom/google/android/location/data/Position$PositionBuilder;
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/location/data/Position$PositionBuilder;->latE7:I

    .line 218
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/location/data/Position$PositionBuilder;->lngE7:I

    .line 219
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/location/data/Position$PositionBuilder;->accuracyMm:I

    .line 220
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/location/data/Position$PositionBuilder;->confidence:I

    .line 228
    invoke-virtual {v0}, Lcom/google/android/location/data/Position$PositionBuilder;->build()Lcom/google/android/location/data/Position;

    move-result-object v1

    return-object v1
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
    .line 213
    invoke-virtual {p0, p1}, Lcom/google/android/location/data/Position$1;->load(Ljava/io/DataInput;)Lcom/google/android/location/data/Position;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcom/google/android/location/data/Position;Ljava/io/DataOutput;)V
    .locals 1
    .parameter "position"
    .parameter "dataOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    iget v0, p1, Lcom/google/android/location/data/Position;->latE7:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 235
    iget v0, p1, Lcom/google/android/location/data/Position;->lngE7:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 236
    iget v0, p1, Lcom/google/android/location/data/Position;->accuracyMm:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 237
    iget v0, p1, Lcom/google/android/location/data/Position;->confidence:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 248
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
    .line 213
    check-cast p1, Lcom/google/android/location/data/Position;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/data/Position$1;->save(Lcom/google/android/location/data/Position;Ljava/io/DataOutput;)V

    return-void
.end method
