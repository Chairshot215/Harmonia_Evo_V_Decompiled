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

    .prologue
    .line 130
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 132
    .local v0, dummy:Ljava/nio/ByteBuffer;
    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 4
    .parameter "buffer"
    .parameter "dimensions"
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 134
    iput-object v1, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    .line 136
    iput-object v1, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    .line 137
    iput-object v1, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    .line 216
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 218
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 221
    :cond_1
    iput-object p1, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    .line 222
    iput-object p2, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    .line 223
    iput-object p3, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    .line 225
    iget-object v1, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    iget-object v2, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    #getter for: Lcom/scalado/base/Image$Config;->colormode:I
    invoke-static {v3}, Lcom/scalado/base/Image$Config;->access$000(Lcom/scalado/base/Image$Config;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/scalado/base/Image;->nativeCreateFromBuffer(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;I)I

    move-result v0

    .line 227
    .local v0, error:I
    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 2
    .parameter "dimensions"
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 134
    iput-object v1, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    .line 136
    iput-object v1, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    .line 137
    iput-object v1, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    .line 150
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 155
    :cond_1
    iput-object p1, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    .line 156
    iput-object p2, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    .line 158
    #getter for: Lcom/scalado/base/Image$Config;->colormode:I
    invoke-static {p2}, Lcom/scalado/base/Image$Config;->access$000(Lcom/scalado/base/Image$Config;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/scalado/base/Image;->nativeCreateFromSize(Lcom/scalado/base/Size;I)I

    move-result v0

    .line 160
    .local v0, error:I
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/scalado/base/Size;ILcom/scalado/base/Image$Config;)V
    .locals 3
    .parameter "byteBuffer"
    .parameter "dimensions"
    .parameter "scanline"
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 134
    iput-object v0, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    .line 136
    iput-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    .line 137
    iput-object v0, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    .line 179
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 184
    :cond_1
    iput-object p2, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    .line 185
    iput-object p4, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    .line 187
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iput-object p1, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    .line 190
    iget-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    #getter for: Lcom/scalado/base/Image$Config;->colormode:I
    invoke-static {v2}, Lcom/scalado/base/Image$Config;->access$000(Lcom/scalado/base/Image$Config;)I

    move-result v2

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/scalado/base/Image;->nativeCreateFromByteBuffer(Ljava/nio/ByteBuffer;Lcom/scalado/base/Size;II)I

    .line 199
    :goto_0
    return-void

    .line 193
    :cond_2
    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, p1}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/scalado/base/Image;->sourceBuffer:Lcom/scalado/base/Buffer;

    .line 194
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

    .prologue
    .line 259
    iget-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/scalado/base/Image;->nativeAsBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/base/Image;->sourceByteBuffer:Ljava/nio/ByteBuffer;

    .line 262
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

    .prologue
    .line 244
    iget-object v0, p0, Lcom/scalado/base/Image;->config:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method public final getDimensions()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/scalado/base/Image;->dimensions:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method
