.class final Lcom/google/android/location/cache/PersistentState$3;
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
        "Lcom/google/android/location/cache/CacheResult",
        "<",
        "Lcom/google/android/location/data/Position;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/DataInput;)Lcom/google/android/location/cache/CacheResult;
    .locals 1
    .parameter "dataIn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Lcom/google/android/location/cache/CacheResult",
            "<",
            "Lcom/google/android/location/data/Position;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    sget-object v0, Lcom/google/android/location/data/Position;->SAVER:Lcom/google/android/location/data/Persistent;

    invoke-static {p1, v0}, Lcom/google/android/location/cache/CacheResult;->load(Ljava/io/DataInput;Lcom/google/android/location/data/Persistent;)Lcom/google/android/location/cache/CacheResult;

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
    .line 336
    invoke-virtual {p0, p1}, Lcom/google/android/location/cache/PersistentState$3;->load(Ljava/io/DataInput;)Lcom/google/android/location/cache/CacheResult;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcom/google/android/location/cache/CacheResult;Ljava/io/DataOutput;)V
    .locals 1
    .parameter
    .parameter "dataOut"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/cache/CacheResult",
            "<",
            "Lcom/google/android/location/data/Position;",
            ">;",
            "Ljava/io/DataOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    .local p1, cacheResult:Lcom/google/android/location/cache/CacheResult;,"Lcom/google/android/location/cache/CacheResult<Lcom/google/android/location/data/Position;>;"
    sget-object v0, Lcom/google/android/location/data/Position;->SAVER:Lcom/google/android/location/data/Persistent;

    invoke-static {p1, p2, v0}, Lcom/google/android/location/cache/CacheResult;->save(Lcom/google/android/location/cache/CacheResult;Ljava/io/DataOutput;Lcom/google/android/location/data/Persistent;)V

    .line 346
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
    .line 336
    check-cast p1, Lcom/google/android/location/cache/CacheResult;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/cache/PersistentState$3;->save(Lcom/google/android/location/cache/CacheResult;Ljava/io/DataOutput;)V

    return-void
.end method
