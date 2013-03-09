.class public interface abstract Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;
.super Ljava/lang/Object;
.source "NativeCrypto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SSLHandshakeCallbacks"
.end annotation


# virtual methods
.method public abstract clientCertificateRequested([B[[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract handshakeCompleted()V
.end method

.method public abstract verifyCertificateChain([[BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method
