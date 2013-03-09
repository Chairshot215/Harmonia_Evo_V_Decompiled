.class final Lcom/google/android/location/cache/PersistentState$2;
.super Ljava/lang/Object;
.source "PersistentState.java"

# interfaces
.implements Lcom/google/android/location/data/Persistent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/cache/PersistentState;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/DataInput;)Ljava/lang/Long;
    .locals 2
    .parameter "dataIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
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
    .line 323
    invoke-virtual {p0, p1}, Lcom/google/android/location/cache/PersistentState$2;->load(Ljava/io/DataInput;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public save(Ljava/lang/Long;Ljava/io/DataOutput;)V
    .locals 2
    .parameter "lng"
    .parameter "dataOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 332
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
    .line 323
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/cache/PersistentState$2;->save(Ljava/lang/Long;Ljava/io/DataOutput;)V

    return-void
.end method
