.class public Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;
.super Ljava/lang/Object;
.source "TBCPadding.java"

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
    .locals 5

    const/16 v2, 0xff

    const/4 v3, 0x0

    array-length v4, p1

    sub-int v1, v4, p2

    if-lez p2, :cond_1

    add-int/lit8 v4, p2, -0x1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    :goto_0
    int-to-byte v0, v2

    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_3

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    :goto_2
    int-to-byte v0, v2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    return v1
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    const-string v0, "TBC"

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

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v0, p1, v2

    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p1, v2

    if-ne v2, v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    return v2
.end method
