.class Ljava/security/MessageDigest$MessageDigestImpl;
.super Ljava/security/MessageDigest;
.source "MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/MessageDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageDigestImpl"
.end annotation


# instance fields
.field private spiImpl:Ljava/security/MessageDigestSpi;


# direct methods
.method private constructor <init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    #setter for: Ljava/security/MessageDigest;->provider:Ljava/security/Provider;
    invoke-static {p0, p2}, Ljava/security/MessageDigest;->access$102(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;

    iput-object p1, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/MessageDigest$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/security/MessageDigest$MessageDigestImpl;-><init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v1, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    instance-of v1, v1, Ljava/lang/Cloneable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    invoke-virtual {v1}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigestSpi;

    new-instance v1, Ljava/security/MessageDigest$MessageDigestImpl;

    invoke-virtual {p0}, Ljava/security/MessageDigest$MessageDigestImpl;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/MessageDigest$MessageDigestImpl;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Ljava/security/MessageDigest$MessageDigestImpl;-><init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v1}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v1
.end method

.method protected engineDigest()[B
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineGetDigestLength()I

    move-result v0

    return v0
.end method

.method protected engineReset()V
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineReset()V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest$MessageDigestImpl;->spiImpl:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    return-void
.end method
