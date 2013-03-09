.class public abstract Ljava/security/MessageDigest;
.super Ljava/security/MessageDigestSpi;
.source "MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/MessageDigest$1;,
        Ljava/security/MessageDigest$MessageDigestImpl;
    }
.end annotation


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "MessageDigest"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/MessageDigest;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    iput-object p1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$102(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;
    .locals 0

    iput-object p1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    sget-object v4, Ljava/security/MessageDigest;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v4, p0, v6}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v2

    iget-object v3, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    iget-object v0, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    instance-of v4, v3, Ljava/security/MessageDigest;

    if-eqz v4, :cond_1

    move-object v1, v3

    check-cast v1, Ljava/security/MessageDigest;

    iput-object p0, v1, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    iput-object v0, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/security/MessageDigest$MessageDigestImpl;

    iget-object v4, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v4, Ljava/security/MessageDigestSpi;

    iget-object v5, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v1, v4, v5, p0, v6}, Ljava/security/MessageDigest$MessageDigestImpl;-><init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/MessageDigest$1;)V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    if-nez p0, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_1
    sget-object v2, Ljava/security/MessageDigest;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v2, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/security/MessageDigest;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/security/MessageDigest;

    iput-object p0, v0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    iput-object p1, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/security/MessageDigest$MessageDigestImpl;

    check-cast v1, Ljava/security/MessageDigestSpi;

    invoke-direct {v0, v1, p1, p0, v3}, Ljava/security/MessageDigest$MessageDigestImpl;-><init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/MessageDigest$1;)V

    goto :goto_0
.end method

.method public static isEqual([B[B)Z
    .locals 4

    const/4 v1, 0x0

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public digest([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    if-eqz p1, :cond_0

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineDigest([BII)I

    move-result v0

    return v0
.end method

.method public digest()[B
    .locals 1

    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineDigest()[B

    move-result-object v0

    return-object v0
.end method

.method public digest([B)[B
    .locals 1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getDigestLength()I
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineGetDigestLength()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v1

    :cond_0
    instance-of v4, p0, Ljava/lang/Cloneable;

    if-nez v4, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    array-length v1, v4
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v3

    goto :goto_0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineReset()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESSAGE DIGEST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(B)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(B)V

    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public update([B)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 4

    if-eqz p1, :cond_0

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    return-void
.end method
