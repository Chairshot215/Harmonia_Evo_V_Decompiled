.class Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CVCDSAEncoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeUnsigned(Ljava/math/BigInteger;)[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    aget-byte v2, v0, v4

    if-nez v2, :cond_0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    const/4 v2, 0x1

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public decode([B)[Ljava/math/BigInteger;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/math/BigInteger;

    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    array-length v3, v0

    invoke-static {p1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v0

    array-length v4, v1

    invoke-static {p1, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v2, v6

    return-object v2
.end method

.method public encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object v2

    array-length v3, v0

    array-length v4, v2

    if-le v3, v4, :cond_0

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    :goto_0
    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v1

    array-length v4, v2

    sub-int/2addr v3, v4

    array-length v4, v2

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    goto :goto_0
.end method
