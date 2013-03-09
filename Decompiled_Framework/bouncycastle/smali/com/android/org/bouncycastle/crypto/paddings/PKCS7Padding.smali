.class public Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;
.super Ljava/lang/Object;
.source "PKCS7Padding.java"

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

    sub-int/2addr v1, p2

    int-to-byte v0, v1

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS7"

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    array-length v2, p1

    if-gt v0, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "pad block corrupted"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_3

    array-length v2, p1

    sub-int/2addr v2, v1

    aget-byte v2, p1, v2

    if-eq v2, v0, :cond_2

    new-instance v2, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "pad block corrupted"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method
