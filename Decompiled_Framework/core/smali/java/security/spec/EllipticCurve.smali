.class public Ljava/security/spec/EllipticCurve;
.super Ljava/lang/Object;
.source "EllipticCurve.java"


# instance fields
.field private final a:Ljava/math/BigInteger;

.field private final b:Ljava/math/BigInteger;

.field private final field:Ljava/security/spec/ECField;

.field private volatile hash:I

.field private final seed:[B


# direct methods
.method public constructor <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "field == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput-object p2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "a == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iput-object p3, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "b == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-nez p4, :cond_4

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    :goto_0
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    instance-of v2, v2, Ljava/security/spec/ECFieldFp;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    check-cast v2, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v2}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_5

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the a is not in the field"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    array-length v2, p4

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    array-length v3, v3

    invoke-static {p4, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_6

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_9

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the b is not in the field"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    instance-of v2, v2, Ljava/security/spec/ECFieldF2m;

    if-eqz v2, :cond_9

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    invoke-interface {v2}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-le v2, v0, :cond_8

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the a is not in the field"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-le v2, v0, :cond_9

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the b is not in the field"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Ljava/security/spec/EllipticCurve;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/security/spec/EllipticCurve;

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    iget-object v4, v0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    iget-object v4, v0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    iget-object v4, v0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    iget-object v4, v0, Ljava/security/spec/EllipticCurve;->seed:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getA()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getB()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getField()Ljava/security/spec/ECField;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    return-object v0
.end method

.method public getSeed()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget v2, p0, Ljava/security/spec/EllipticCurve;->hash:I

    if-nez v2, :cond_2

    const/16 v0, 0xb

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit16 v0, v2, 0x155

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    aget-byte v3, v3, v1

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    :cond_1
    iput v0, p0, Ljava/security/spec/EllipticCurve;->hash:I

    :cond_2
    iget v2, p0, Ljava/security/spec/EllipticCurve;->hash:I

    return v2
.end method
