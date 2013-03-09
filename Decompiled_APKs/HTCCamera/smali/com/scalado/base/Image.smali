.class public final Lcom/scalado/base/Image;
.super Lcom/scalado/caps/PeerBase;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/base/Image$Config;
    }
.end annotation


# instance fields
.field private config:Lcom/scalado/base/Image$Config;

.field private dimensions:Lcom/scalado/base/Size;

.field private sourceBuffer:Lcom/scalado/base/Buffer;

.field private sourceByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    iput-object v1, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    iput-object v1, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    iput-object p1, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    iput-object p2, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    iput-object p3, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    iget-object v1, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    iget-object v2, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    #getter for: Lcom/scalado/base/Image$Config;->colormode:I
    invoke-static {v3}, Lcom/scalado/base/Image$Config;->access$000(Lcom/scalado/base/Image$Config;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/scalado/base/Image;->nativeCreateFromBuffer(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;I)I

    move-result v0

    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    iput-object v1, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    iput-object v1, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    iput-object p1, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    iput-object p2, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    #getter for: Lcom/scalado/base/Image$Config;->colormode:I
    invoke-static {p2}, Lcom/scalado/base/Image$Config;->access$000(Lcom/scalado/base/Image$Config;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/scalado/base/Image;->nativeCreateFromSize(Lcom/scalado/base/Size;I)I

    move-result v0

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/scalado/base/Size;ILcom/scalado/base/Image$Config;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    iput-object v0, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    iput-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    iput-object p4, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    #getter for: Lcom/scalado/base/Image$Config;->colormode:I
    invoke-static {v2}, Lcom/scalado/base/Image$Config;->access$000(Lcom/scalado/base/Image$Config;)I

    move-result v2

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/scalado/base/Image;->nativeCreateFromByteBuffer(Ljava/nio/ByteBuffer;Lcom/scalado/base/Size;II)I

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, p1}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    iget-object v0, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    iget-object v1, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    #getter for: Lcom/scalado/base/Image$Config;->colormode:I
    invoke-static {v2}, Lcom/scalado/base/Image$Config;->access$000(Lcom/scalado/base/Image$Config;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/scalado/base/Image;->nativeCreateFromBuffer(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;I)I

    goto :goto_0
.end method

.method private native nativeAsBuffer()Ljava/nio/ByteBuffer;
.end method

.method private native nativeCreateFromBuffer(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;I)I
.end method

.method private native nativeCreateFromByteBuffer(Ljava/nio/ByteBuffer;Lcom/scalado/base/Size;II)I
.end method

.method private native nativeCreateFromSize(Lcom/scalado/base/Size;I)I
.end method


# virtual methods
.method public final asBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/scalado/base/Image;->nativeAsBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getConfig()Lcom/scalado/base/Image$Config;
    .locals 1

    iget-object v0, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method public final getDimensions()Lcom/scalado/base/Size;
    .locals 1

    iget-object v0, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method
