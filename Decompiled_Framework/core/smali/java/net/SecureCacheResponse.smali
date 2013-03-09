.class public abstract Ljava/net/SecureCacheResponse;
.super Ljava/net/CacheResponse;
.source "SecureCacheResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCipherSuite()Ljava/lang/String;
.end method

.method public abstract getLocalCertificateChain()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocalPrincipal()Ljava/security/Principal;
.end method

.method public abstract getPeerPrincipal()Ljava/security/Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public abstract getServerCertificateChain()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method
