.class public Lorg/apache/harmony/dalvik/ddmc/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field public data:[B

.field public length:I

.field public offset:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    iput-object p2, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    iput p3, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    iput p4, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    return-void
.end method
