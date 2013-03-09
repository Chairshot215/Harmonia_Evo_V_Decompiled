.class Lcom/jme3/util/RingBuffer$RingBufferIterator;
.super Ljava/lang/Object;
.source "RingBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/RingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingBufferIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private i:I

.field final synthetic this$0:Lcom/jme3/util/RingBuffer;


# direct methods
.method private constructor <init>(Lcom/jme3/util/RingBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    .local p0, this:Lcom/jme3/util/RingBuffer$RingBufferIterator;,"Lcom/jme3/util/RingBuffer<TT;>.RingBufferIterator;"
    iput-object p1, p0, Lcom/jme3/util/RingBuffer$RingBufferIterator;->this$0:Lcom/jme3/util/RingBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/util/RingBuffer$RingBufferIterator;->i:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jme3/util/RingBuffer;Lcom/jme3/util/RingBuffer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    .local p0, this:Lcom/jme3/util/RingBuffer$RingBufferIterator;,"Lcom/jme3/util/RingBuffer<TT;>.RingBufferIterator;"
    invoke-direct {p0, p1}, Lcom/jme3/util/RingBuffer$RingBufferIterator;-><init>(Lcom/jme3/util/RingBuffer;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 62
    .local p0, this:Lcom/jme3/util/RingBuffer$RingBufferIterator;,"Lcom/jme3/util/RingBuffer<TT;>.RingBufferIterator;"
    iget v0, p0, Lcom/jme3/util/RingBuffer$RingBufferIterator;->i:I

    iget-object v1, p0, Lcom/jme3/util/RingBuffer$RingBufferIterator;->this$0:Lcom/jme3/util/RingBuffer;

    #getter for: Lcom/jme3/util/RingBuffer;->count:I
    invoke-static {v1}, Lcom/jme3/util/RingBuffer;->access$100(Lcom/jme3/util/RingBuffer;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/jme3/util/RingBuffer$RingBufferIterator;,"Lcom/jme3/util/RingBuffer<TT;>.RingBufferIterator;"
    invoke-virtual {p0}, Lcom/jme3/util/RingBuffer$RingBufferIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/jme3/util/RingBuffer$RingBufferIterator;->this$0:Lcom/jme3/util/RingBuffer;

    #getter for: Lcom/jme3/util/RingBuffer;->buffer:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/jme3/util/RingBuffer;->access$200(Lcom/jme3/util/RingBuffer;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/jme3/util/RingBuffer$RingBufferIterator;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jme3/util/RingBuffer$RingBufferIterator;->i:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 66
    .local p0, this:Lcom/jme3/util/RingBuffer$RingBufferIterator;,"Lcom/jme3/util/RingBuffer<TT;>.RingBufferIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
