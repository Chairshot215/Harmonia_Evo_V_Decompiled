.class public Lcom/android/org/bouncycastle/openssl/PEMWriter;
.super Lcom/android/org/bouncycastle/util/io/pem/PemWriter;
.source "PEMWriter.java"


# instance fields
.field private provider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const-string v0, "BC"

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/openssl/PEMWriter;->provider:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;-><init>(Ljava/lang/Object;)V

    invoke-super {p0, v1}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V
    :try_end_0
    .catch Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    :cond_0
    throw v0
.end method

.method public writeObject(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;

    iget-object v5, p0, Lcom/android/org/bouncycastle/openssl/PEMWriter;->provider:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/openssl/MiscPEMGenerator;-><init>(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    new-instance v0, Lcom/android/org/bouncycastle/openssl/EncryptionException;

    invoke-virtual {v6}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/org/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
