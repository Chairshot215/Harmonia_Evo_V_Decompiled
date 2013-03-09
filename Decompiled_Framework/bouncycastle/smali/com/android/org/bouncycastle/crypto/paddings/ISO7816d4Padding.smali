.class public Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;
.super Ljava/lang/Object;
.source "ISO7816d4Padding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .locals 2

    array-length v1, p1

    sub-int v0, v1, p2

    const/16 v1, -0x80

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    const/4 v1, 0x0

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    const-string v0, "ISO7816-4"

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public padCount([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-lez v0, :cond_0

    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    aget-byte v1, p1, v0

    const/16 v2, -0x80

    if-eq v1, v2, :cond_1

    new-instance v1, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "pad block corrupted"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    array-length v1, p1

    sub-int/2addr v1, v0

    return v1
.end method
