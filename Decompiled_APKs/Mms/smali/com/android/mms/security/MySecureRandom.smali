.class public Lcom/android/mms/security/MySecureRandom;
.super Ljava/security/SecureRandom;
.source "MySecureRandom.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/security/SecureRandomSpi;Ljava/lang/String;)V
    .locals 1
    .parameter "secureRandomSpi"
    .parameter "passwd"

    .prologue
    .line 12
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getSecureRandomService()Ljava/security/Provider$Service;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/security/MySecureRandom;->setSeed([B)V

    .line 14
    return-void
.end method
