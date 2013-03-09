.class public Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;
.super Ljava/security/cert/CertificateFactorySpi;
.source "X509CertFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;
    }
.end annotation


# static fields
.field private static final CERT_BOUND_SUFFIX:[B = null

.field private static final CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache; = null

.field private static final CERT_CACHE_SEED_LENGTH:I = 0x1c

.field private static final CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache; = null

.field private static final CRL_CACHE_SEED_LENGTH:I = 0x18

.field private static final FREE_BOUND_SUFFIX:[B

.field private static final PEM_BEGIN:[B

.field private static final PEM_END:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/provider/cert/Cache;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    new-instance v0, Lorg/apache/harmony/security/provider/cert/Cache;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    const-string v0, "-----BEGIN"

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_BEGIN:[B

    const-string v0, "-----END"

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_END:[B

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    const-string v0, " CERTIFICATE-----"

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_BOUND_SUFFIX:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    return-void
.end method

.method private badEnd([B)Ljava/io/IOException;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect PEM encoding: \'-----END"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is expected as closing delimiter boundary."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private decodePEM(Ljava/io/InputStream;[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    :goto_0
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_BEGIN:[B

    array-length v7, v7

    if-ge v2, v7, :cond_2

    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_BEGIN:[B

    aget-byte v7, v7, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v7, v1, :cond_1

    new-instance v8, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect PEM encoding: \'-----BEGIN"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p2, :cond_0

    const-string v7, ""

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\' is expected as opening delimiter boundary."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v7, 0xa

    if-eq v1, v7, :cond_8

    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect PEM encoding: EOF before content"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    const/4 v2, 0x0

    :goto_2
    array-length v7, p2

    if-ge v2, v7, :cond_6

    aget-byte v7, p2, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_5

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect PEM encoding: \'-----BEGIN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is expected as opening delimiter boundary."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v7, 0xd

    if-ne v1, v7, :cond_7

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    :cond_7
    const/16 v7, 0xa

    if-eq v1, v7, :cond_8

    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect PEM encoding: newline expected after opening delimiter boundary"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    const/16 v6, 0x400

    new-array v0, v6, [B

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_a

    const/4 v7, -0x1

    if-ne v1, v7, :cond_9

    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect Base64 encoding: EOF without closing delimiter"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    add-int/lit8 v4, v3, 0x1

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    if-ne v4, v6, :cond_15

    add-int/lit16 v7, v6, 0x400

    new-array v5, v7, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    add-int/lit16 v6, v6, 0x400

    move v3, v4

    goto :goto_3

    :cond_a
    add-int/lit8 v7, v3, -0x1

    aget-byte v7, v0, v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_b

    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect Base64 encoding: newline expected before closing boundary delimiter"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_b
    const/4 v2, 0x1

    :goto_4
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_END:[B

    array-length v7, v7

    if-ge v2, v7, :cond_d

    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->PEM_END:[B

    aget-byte v7, v7, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_c

    invoke-direct {p0, p2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->badEnd([B)Ljava/io/IOException;

    move-result-object v7

    throw v7

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    if-nez p2, :cond_11

    :cond_e
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_f

    const/16 v7, 0xa

    if-eq v1, v7, :cond_f

    const/16 v7, 0xd

    if-ne v1, v7, :cond_e

    :cond_f
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    :goto_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_13

    const/16 v7, 0xa

    if-eq v1, v7, :cond_10

    const/16 v7, 0xd

    if-ne v1, v7, :cond_13

    :cond_10
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    goto :goto_5

    :cond_11
    const/4 v2, 0x0

    :goto_6
    array-length v7, p2

    if-ge v2, v7, :cond_f

    aget-byte v7, p2, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_12

    invoke-direct {p0, p2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->badEnd([B)Ljava/io/IOException;

    move-result-object v7

    throw v7

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-static {v0, v3}, Llibcore/io/Base64;->decode([BI)[B

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v7, Ljava/io/IOException;

    const-string v8, "Incorrect Base64 encoding"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_14
    return-object v0

    :cond_15
    move v3, v4

    goto/16 :goto_3
.end method

.method private static getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x18

    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v6

    const/16 v5, 0x18

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->mark(I)V

    const/16 v5, 0x18

    invoke-static {p0, v5}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    if-nez v0, :cond_0

    new-instance v5, Ljava/security/cert/CRLException;

    const-string v7, "InputStream doesn\'t contain enough data"

    invoke-direct {v5, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v2

    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->getLength([B)I

    move-result v5

    new-array v1, v5, [B

    array-length v5, v1

    if-ge v5, v7, :cond_1

    new-instance v5, Ljava/security/cert/CRLException;

    const-string v7, "Bad CRL encoding"

    invoke-direct {v5, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {p0, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/CRL;

    if-eqz v4, :cond_2

    monitor-exit v6

    :goto_0
    return-object v4

    :cond_2
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v4, v1}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>([B)V

    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    monitor-exit v6

    goto :goto_0

    :cond_3
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v4, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Ljava/io/InputStream;)V

    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v5, v2, v3, v7, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static getCRL([B)Ljava/security/cert/CRL;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    array-length v4, p0

    const/16 v5, 0x18

    if-ge v4, v5, :cond_0

    new-instance v4, Ljava/security/cert/CRLException;

    const-string v5, "encoding.length < CRL_CACHE_SEED_LENGTH"

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v0

    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    if-eqz v2, :cond_1

    monitor-exit v5

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_1
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v2, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>([B)V

    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0, v2}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    monitor-exit v5

    move-object v3, v2

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x1c

    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v6

    const/16 v5, 0x1c

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->mark(I)V

    const/16 v5, 0x1c

    invoke-static {p0, v5}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    if-nez v0, :cond_0

    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v7, "InputStream doesn\'t contain enough data"

    invoke-direct {v5, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v2

    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->getLength([B)I

    move-result v5

    new-array v1, v5, [B

    array-length v5, v1

    if-ge v5, v7, :cond_1

    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v7, "Bad Certificate encoding"

    invoke-direct {v5, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {p0, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    if-eqz v4, :cond_2

    monitor-exit v6

    :goto_0
    return-object v4

    :cond_2
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v4, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    monitor-exit v6

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v4, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Ljava/io/InputStream;)V

    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v5, v2, v3, v7, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static getCertificate([B)Ljava/security/cert/Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    array-length v4, p0

    const/16 v5, 0x1c

    if-ge v4, v5, :cond_0

    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "encoding.length < CERT_CACHE_SEED_LENGTH"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v0

    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    if-eqz v2, :cond_1

    monitor-exit v5

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_1
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v2, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0, v2}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    monitor-exit v5

    move-object v3, v2

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static readBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v2, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/security/cert/CRLException;

    const-string v3, "inStream == null"

    invoke-direct {v2, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL([B)Ljava/security/cert/CRL;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/cert/CRLException;

    invoke-direct {v2, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v12, Ljava/security/cert/CRLException;

    const-string v13, "inStream == null"

    invoke-direct {v12, v13}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v12

    if-nez v12, :cond_1

    new-instance v8, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v8, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v8

    :cond_1
    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v12, -0x1

    if-eq v0, v12, :cond_3

    const/16 v12, 0x2d

    if-ne v0, v12, :cond_5

    sget-object v12, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v12}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v5

    :goto_1
    if-nez v5, :cond_8

    new-instance v7, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v7, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_2
    invoke-virtual {v7}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v11

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    :cond_2
    const/16 v12, 0x30

    if-eq v11, v12, :cond_9

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v12, :cond_b

    :cond_4
    :goto_3
    return-object v10

    :cond_5
    const/16 v12, 0x30

    if-ne v0, v12, :cond_6

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/16 v12, 0x18

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v12, Ljava/security/cert/CRLException;

    invoke-direct {v12, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    :cond_6
    :try_start_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_7

    new-instance v12, Ljava/security/cert/CRLException;

    const-string v13, "Unsupported encoding"

    invoke-direct {v12, v13}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_7
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_3

    :cond_8
    new-instance v7, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v7, v5}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    goto :goto_2

    :cond_9
    if-nez v5, :cond_a

    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0

    :cond_a
    invoke-static {v5}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL([B)Ljava/security/cert/CRL;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    const/4 v12, -0x1

    if-ne v0, v12, :cond_c

    new-instance v12, Ljava/security/cert/CRLException;

    const-string v13, "There is no data in the stream"

    invoke-direct {v12, v13}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_c
    const/4 v12, 0x6

    if-ne v11, v12, :cond_f

    if-eqz v5, :cond_d

    sget-object v12, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v12, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v9

    :goto_5
    check-cast v9, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-virtual {v9}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v3

    if-nez v3, :cond_e

    new-instance v12, Ljava/security/cert/CRLException;

    const-string v13, "Invalid PKCS7 data provided"

    invoke-direct {v12, v13}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_d
    sget-object v12, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v12, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_5

    :cond_e
    invoke-virtual {v3}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCRLs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/CertificateList;

    new-instance v12, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v12, v1}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Lorg/apache/harmony/security/x509/CertificateList;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    new-instance v12, Ljava/security/cert/CRLException;

    const-string v13, "Unsupported encoding"

    invoke-direct {v12, v13}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "inStream == null"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v2, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v2

    :cond_1
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2

    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v3}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getInstance([BLjava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_2
    const/16 v3, 0x30

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-static {p1, p2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getInstance(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-result-object v3

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "Unsupported encoding"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "inStream == null"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate([B)Ljava/security/cert/Certificate;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v12, Ljava/security/cert/CertificateException;

    const-string v13, "inStream == null"

    invoke-direct {v12, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v12

    if-nez v12, :cond_1

    new-instance v8, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v8, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v8

    :cond_1
    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v12, -0x1

    if-eq v2, v12, :cond_3

    const/16 v12, 0x2d

    if-ne v2, v12, :cond_5

    sget-object v12, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v12}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v5

    :goto_1
    if-nez v5, :cond_8

    new-instance v7, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v7, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_2
    invoke-virtual {v7}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v11

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    :cond_2
    const/16 v12, 0x30

    if-eq v11, v12, :cond_9

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v12, :cond_b

    :cond_4
    :goto_3
    return-object v10

    :cond_5
    const/16 v12, 0x30

    if-ne v2, v12, :cond_6

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/16 v12, 0x1c

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v12, Ljava/security/cert/CertificateException;

    invoke-direct {v12, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    :cond_6
    :try_start_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_7

    new-instance v12, Ljava/security/cert/CertificateException;

    const-string v13, "Unsupported encoding"

    invoke-direct {v12, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_7
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_3

    :cond_8
    new-instance v7, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v7, v5}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    goto :goto_2

    :cond_9
    if-nez v5, :cond_a

    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0

    :cond_a
    invoke-static {v5}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate([B)Ljava/security/cert/Certificate;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    const/4 v12, -0x1

    if-ne v2, v12, :cond_c

    new-instance v12, Ljava/security/cert/CertificateException;

    const-string v13, "There is no data in the stream"

    invoke-direct {v12, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_c
    const/4 v12, 0x6

    if-ne v11, v12, :cond_f

    if-eqz v5, :cond_d

    sget-object v12, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v12, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v9

    :goto_5
    check-cast v9, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-virtual {v9}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v3

    if-nez v3, :cond_e

    new-instance v12, Ljava/security/cert/CertificateException;

    const-string v13, "Invalid PKCS7 data provided"

    invoke-direct {v12, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_d
    sget-object v12, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v12, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_5

    :cond_e
    invoke-virtual {v3}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Certificate;

    new-instance v12, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v12, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    new-instance v12, Ljava/security/cert/CertificateException;

    const-string v13, "Unsupported encoding"

    invoke-direct {v12, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
