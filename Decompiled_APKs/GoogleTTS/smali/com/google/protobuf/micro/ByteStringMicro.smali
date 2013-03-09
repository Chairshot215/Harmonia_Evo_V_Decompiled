.class public final Lcom/google/protobuf/micro/ByteStringMicro;
.super Ljava/lang/Object;
.source "ByteStringMicro.java"


# static fields
.field public static final EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/google/protobuf/micro/ByteStringMicro;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/protobuf/micro/ByteStringMicro;-><init>([B)V

    sput-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->hash:I

    .line 45
    iput-object p1, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 179
    if-ne p1, p0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v5

    .line 183
    :cond_1
    instance-of v7, p1, Lcom/google/protobuf/micro/ByteStringMicro;

    if-nez v7, :cond_2

    move v5, v6

    .line 184
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 187
    check-cast v1, Lcom/google/protobuf/micro/ByteStringMicro;

    .line 188
    .local v1, other:Lcom/google/protobuf/micro/ByteStringMicro;
    iget-object v7, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v3, v7

    .line 189
    .local v3, size:I
    iget-object v7, v1, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v7, v7

    if-eq v3, v7, :cond_3

    move v5, v6

    .line 190
    goto :goto_0

    .line 193
    :cond_3
    iget-object v4, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    .line 194
    .local v4, thisBytes:[B
    iget-object v2, v1, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    .line 195
    .local v2, otherBytes:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 196
    aget-byte v7, v4, v0

    aget-byte v8, v2, v0

    if-eq v7, v8, :cond_4

    move v5, v6

    .line 197
    goto :goto_0

    .line 195
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 208
    iget v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->hash:I

    .line 210
    .local v0, h:I
    if-nez v0, :cond_2

    .line 211
    iget-object v3, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    .line 212
    .local v3, thisBytes:[B
    iget-object v4, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v2, v4

    .line 214
    .local v2, size:I
    move v0, v2

    .line 215
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 216
    mul-int/lit8 v4, v0, 0x1f

    aget-byte v5, v3, v1

    add-int v0, v4, v5

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_0
    if-nez v0, :cond_1

    .line 219
    const/4 v0, 0x1

    .line 222
    :cond_1
    iput v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->hash:I

    .line 225
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #thisBytes:[B
    :cond_2
    return v0
.end method
