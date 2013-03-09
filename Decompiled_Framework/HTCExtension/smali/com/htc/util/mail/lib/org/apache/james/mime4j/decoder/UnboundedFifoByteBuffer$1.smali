.class Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;
.super Ljava/lang/Object;
.source "UnboundedFifoByteBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field private lastReturnedIndex:I

.field final synthetic this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;


# direct methods
.method constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I

    #calls: Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->increment(I)I
    invoke-static {v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->access$000(Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;I)I

    move-result v0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I

    new-instance v0, Ljava/lang/Byte;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    aget-byte v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public remove()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    if-ne v1, v4, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget v2, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->remove()B

    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    add-int/lit8 v0, v1, 0x1

    :goto_1
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget-object v3, v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    aget-byte v3, v3, v5

    aput-byte v3, v1, v2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget-object v3, v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget v3, v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    #calls: Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->decrement(I)I
    invoke-static {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->access$100(Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;I)I

    move-result v2

    iput v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget v2, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    aput-byte v5, v1, v2

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I

    #calls: Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->decrement(I)I
    invoke-static {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->access$100(Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;I)I

    move-result v1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;->index:I

    goto :goto_0
.end method
