.class public Lcom/jme3/util/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/RingBuffer$1;,
        Lcom/jme3/util/RingBuffer$RingBufferIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private count:I

.field private indexIn:I

.field private indexOut:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .local p0, this:Lcom/jme3/util/RingBuffer;,"Lcom/jme3/util/RingBuffer<TT;>;"
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/jme3/util/RingBuffer;->count:I

    .line 16
    iput v0, p0, Lcom/jme3/util/RingBuffer;->indexOut:I

    .line 17
    iput v0, p0, Lcom/jme3/util/RingBuffer;->indexIn:I

    .line 21
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/jme3/util/RingBuffer;->buffer:[Ljava/lang/Object;

    .line 22
    return-void
.end method

.method static synthetic access$100(Lcom/jme3/util/RingBuffer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/jme3/util/RingBuffer;->count:I

    return v0
.end method

.method static synthetic access$200(Lcom/jme3/util/RingBuffer;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/jme3/util/RingBuffer;->buffer:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 25
    .local p0, this:Lcom/jme3/util/RingBuffer;,"Lcom/jme3/util/RingBuffer<TT;>;"
    iget v0, p0, Lcom/jme3/util/RingBuffer;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/jme3/util/RingBuffer;,"Lcom/jme3/util/RingBuffer<TT;>;"
    new-instance v0, Lcom/jme3/util/RingBuffer$RingBufferIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jme3/util/RingBuffer$RingBufferIterator;-><init>(Lcom/jme3/util/RingBuffer;Lcom/jme3/util/RingBuffer$1;)V

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/jme3/util/RingBuffer;,"Lcom/jme3/util/RingBuffer<TT;>;"
    invoke-virtual {p0}, Lcom/jme3/util/RingBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Ring buffer underflow"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/jme3/util/RingBuffer;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lcom/jme3/util/RingBuffer;->indexOut:I

    aget-object v0, v1, v2

    .line 46
    .local v0, item:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/jme3/util/RingBuffer;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lcom/jme3/util/RingBuffer;->indexOut:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 47
    iget v1, p0, Lcom/jme3/util/RingBuffer;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/jme3/util/RingBuffer;->count:I

    .line 48
    iget v1, p0, Lcom/jme3/util/RingBuffer;->indexOut:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/jme3/util/RingBuffer;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/jme3/util/RingBuffer;->indexOut:I

    .line 49
    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lcom/jme3/util/RingBuffer;,"Lcom/jme3/util/RingBuffer<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    iget v0, p0, Lcom/jme3/util/RingBuffer;->count:I

    iget-object v1, p0, Lcom/jme3/util/RingBuffer;->buffer:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Ring buffer overflow"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/jme3/util/RingBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lcom/jme3/util/RingBuffer;->indexIn:I

    aput-object p1, v0, v1

    .line 37
    iget v0, p0, Lcom/jme3/util/RingBuffer;->indexIn:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jme3/util/RingBuffer;->buffer:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/jme3/util/RingBuffer;->indexIn:I

    .line 38
    iget v0, p0, Lcom/jme3/util/RingBuffer;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/util/RingBuffer;->count:I

    .line 39
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 29
    .local p0, this:Lcom/jme3/util/RingBuffer;,"Lcom/jme3/util/RingBuffer<TT;>;"
    iget v0, p0, Lcom/jme3/util/RingBuffer;->count:I

    return v0
.end method
