.class public final Lcom/google/protobuf/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ByteString$1;,
        Lcom/google/protobuf/ByteString$CodedBuilder;,
        Lcom/google/protobuf/ByteString$Output;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/protobuf/ByteString;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/google/protobuf/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/protobuf/ByteString;-><init>([B)V

    sput-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString;->hash:I

    .line 51
    iput-object p1, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    .line 52
    return-void
.end method

.method synthetic constructor <init>([BLcom/google/protobuf/ByteString$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/protobuf/ByteString;-><init>([B)V

    return-void
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 2
    .parameter "text"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 117
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;I)Lcom/google/protobuf/ByteString;
    .locals 2
    .parameter "bytes"
    .parameter "size"

    .prologue
    .line 107
    new-array v0, p1, [B

    .line 108
    .local v0, copy:[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 109
    new-instance v1, Lcom/google/protobuf/ByteString;

    invoke-direct {v1, v0}, Lcom/google/protobuf/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static copyFrom(Ljava/util/List;)Lcom/google/protobuf/ByteString;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lcom/google/protobuf/ByteString;"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    const/4 v7, 0x0

    .line 150
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 151
    sget-object v5, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 166
    :goto_0
    return-object v5

    .line 152
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 153
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 156
    :cond_1
    const/4 v3, 0x0

    .line 157
    .local v3, size:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 158
    .local v4, str:Lcom/google/protobuf/ByteString;
    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1

    .line 160
    .end local v4           #str:Lcom/google/protobuf/ByteString;
    :cond_2
    new-array v0, v3, [B

    .line 161
    .local v0, bytes:[B
    const/4 v2, 0x0

    .line 162
    .local v2, pos:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 163
    .restart local v4       #str:Lcom/google/protobuf/ByteString;
    iget-object v5, v4, Lcom/google/protobuf/ByteString;->bytes:[B

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    invoke-static {v5, v7, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_2

    .line 166
    .end local v4           #str:Lcom/google/protobuf/ByteString;
    :cond_3
    new-instance v5, Lcom/google/protobuf/ByteString;

    invoke-direct {v5, v0}, Lcom/google/protobuf/ByteString;-><init>([B)V

    goto :goto_0
.end method

.method public static copyFrom([B)Lcom/google/protobuf/ByteString;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static copyFrom([BII)Lcom/google/protobuf/ByteString;
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 90
    new-array v0, p2, [B

    .line 91
    .local v0, copy:[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    new-instance v1, Lcom/google/protobuf/ByteString;

    invoke-direct {v1, v0}, Lcom/google/protobuf/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 3
    .parameter "text"

    .prologue
    .line 135
    :try_start_0
    new-instance v1, Lcom/google/protobuf/ByteString;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/protobuf/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static newCodedBuilder(I)Lcom/google/protobuf/ByteString$CodedBuilder;
    .locals 2
    .parameter "size"

    .prologue
    .line 365
    new-instance v0, Lcom/google/protobuf/ByteString$CodedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/ByteString$CodedBuilder;-><init>(ILcom/google/protobuf/ByteString$1;)V

    return-object v0
.end method

.method public static newOutput()Lcom/google/protobuf/ByteString$Output;
    .locals 1

    .prologue
    .line 324
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->newOutput(I)Lcom/google/protobuf/ByteString$Output;

    move-result-object v0

    return-object v0
.end method

.method public static newOutput(I)Lcom/google/protobuf/ByteString$Output;
    .locals 3
    .parameter "initialCapacity"

    .prologue
    .line 317
    new-instance v0, Lcom/google/protobuf/ByteString$Output;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/ByteString$Output;-><init>(Ljava/io/ByteArrayOutputStream;Lcom/google/protobuf/ByteString$1;)V

    return-object v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 212
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public byteAt(I)B
    .locals 1
    .parameter "index"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public copyTo([BI)V
    .locals 3
    .parameter "target"
    .parameter "offset"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    return-void
.end method

.method public copyTo([BIII)V
    .locals 1
    .parameter "target"
    .parameter "sourceOffset"
    .parameter "targetOffset"
    .parameter "size"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 240
    if-ne p1, p0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v5

    .line 244
    :cond_1
    instance-of v7, p1, Lcom/google/protobuf/ByteString;

    if-nez v7, :cond_2

    move v5, v6

    .line 245
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 248
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 249
    .local v1, other:Lcom/google/protobuf/ByteString;
    iget-object v7, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v3, v7

    .line 250
    .local v3, size:I
    iget-object v7, v1, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v7, v7

    if-eq v3, v7, :cond_3

    move v5, v6

    .line 251
    goto :goto_0

    .line 254
    :cond_3
    iget-object v4, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    .line 255
    .local v4, thisBytes:[B
    iget-object v2, v1, Lcom/google/protobuf/ByteString;->bytes:[B

    .line 256
    .local v2, otherBytes:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 257
    aget-byte v7, v4, v0

    aget-byte v8, v2, v0

    if-eq v7, v8, :cond_4

    move v5, v6

    .line 258
    goto :goto_0

    .line 256
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 269
    iget v0, p0, Lcom/google/protobuf/ByteString;->hash:I

    .line 271
    .local v0, h:I
    if-nez v0, :cond_2

    .line 272
    iget-object v3, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    .line 273
    .local v3, thisBytes:[B
    iget-object v4, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v2, v4

    .line 275
    .local v2, size:I
    move v0, v2

    .line 276
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 277
    mul-int/lit8 v4, v0, 0x1f

    aget-byte v5, v3, v1

    add-int v0, v4, v5

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_0
    if-nez v0, :cond_1

    .line 280
    const/4 v0, 0x1

    .line 283
    :cond_1
    iput v0, p0, Lcom/google/protobuf/ByteString;->hash:I

    .line 286
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #thisBytes:[B
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newCodedInput()Lcom/google/protobuf/CodedInputStream;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->newInstance([B)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v2, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    array-length v1, v2

    .line 201
    .local v1, size:I
    new-array v0, v1, [B

    .line 202
    .local v0, copy:[B
    iget-object v2, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toStringUtf8()Ljava/lang/String;
    .locals 4

    .prologue
    .line 229
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/ByteString;->bytes:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
