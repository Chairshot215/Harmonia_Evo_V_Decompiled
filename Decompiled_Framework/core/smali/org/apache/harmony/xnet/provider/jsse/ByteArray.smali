.class final Lorg/apache/harmony/xnet/provider/jsse/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private final bytes:[B

.field private final hashCode:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;->bytes:[B

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;->bytes:[B

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;->hashCode:I

    return v0
.end method
