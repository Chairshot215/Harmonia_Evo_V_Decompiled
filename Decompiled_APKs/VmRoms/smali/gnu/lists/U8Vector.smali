.class public Lgnu/lists/U8Vector;
.super Lgnu/lists/ByteVector;
.source "U8Vector.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 13
    sget-object v0, Lgnu/lists/ByteVector;->empty:[B

    iput-object v0, p0, Lgnu/lists/U8Vector;->data:[B

    .line 14
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 26
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 27
    new-array v0, p1, [B

    iput-object v0, p0, Lgnu/lists/U8Vector;->data:[B

    .line 28
    iput p1, p0, Lgnu/lists/U8Vector;->size:I

    .line 29
    return-void
.end method

.method public constructor <init>(IB)V
    .locals 1
    .parameter "size"
    .parameter "value"

    .prologue
    .line 17
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 18
    new-array v0, p1, [B

    .line 19
    .local v0, array:[B
    iput-object v0, p0, Lgnu/lists/U8Vector;->data:[B

    .line 20
    iput p1, p0, Lgnu/lists/U8Vector;->size:I

    .line 21
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 22
    aput-byte p2, v0, p1

    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 38
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 39
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lgnu/lists/U8Vector;->data:[B

    .line 40
    invoke-virtual {p0, p1}, Lgnu/lists/U8Vector;->addAll(Ljava/util/Collection;)Z

    .line 41
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 32
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 33
    iput-object p1, p0, Lgnu/lists/U8Vector;->data:[B

    .line 34
    array-length v0, p1

    iput v0, p0, Lgnu/lists/U8Vector;->size:I

    .line 35
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 76
    check-cast p1, Lgnu/lists/U8Vector;

    .end local p1
    invoke-static {p0, p1}, Lgnu/lists/U8Vector;->compareToInt(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 50
    iget v0, p0, Lgnu/lists/U8Vector;->size:I

    if-le p1, v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lgnu/lists/U8Vector;->data:[B

    aget-byte v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObjectUnsigned(B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 57
    iget-object v0, p0, Lgnu/lists/U8Vector;->data:[B

    aget-byte v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObjectUnsigned(B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getElementKind()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x11

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "u8"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 45
    iget-object v0, p0, Lgnu/lists/U8Vector;->data:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 62
    iget-object v1, p0, Lgnu/lists/U8Vector;->data:[B

    aget-byte v0, v1, p1

    .line 63
    .local v0, old:B
    iget-object v1, p0, Lgnu/lists/U8Vector;->data:[B

    invoke-static {p2}, Lgnu/lists/Convert;->toByteUnsigned(Ljava/lang/Object;)B

    move-result v2

    aput-byte v2, v1, p1

    .line 64
    invoke-static {v0}, Lgnu/lists/Convert;->toObjectUnsigned(B)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
