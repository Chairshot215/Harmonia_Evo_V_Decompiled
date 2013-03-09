.class public Lorg/apache/harmony/xnet/provider/jsse/PRF;
.super Ljava/lang/Object;
.source "PRF.java"


# static fields
.field private static logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field protected static md5:Ljava/security/MessageDigest;

.field private static md5_mac:Ljavax/crypto/Mac;

.field private static md5_mac_length:I

.field protected static sha:Ljava/security/MessageDigest;

.field private static sha_mac:Ljavax/crypto/Mac;

.field private static sha_mac_length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "prf"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized computePRF([B[B[B[B)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class v12, Lorg/apache/harmony/xnet/provider/jsse/PRF;

    monitor-enter v12

    :try_start_0
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    if-nez v10, :cond_0

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->init()V

    :cond_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v10, v0

    if-nez v10, :cond_3

    :cond_1
    const/16 v10, 0x8

    new-array v0, v10, [B

    move-object/from16 p1, v0

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "HmacMD5"

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "HmacSHA1"

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_0
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v10, :cond_2

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "secret["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    array-length v13, v0

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v11, 0x10

    const-string v13, ""

    const-string v14, " "

    move-object/from16 v0, p1

    invoke-virtual {v10, v11, v13, v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "label["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    array-length v13, v0

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v11, 0x10

    const-string v13, ""

    const-string v14, " "

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v13, v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "seed["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    array-length v13, v0

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v11, 0x10

    const-string v13, ""

    const-string v14, " "

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v13, v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v11, "MD5 key:"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v11, 0x10

    const-string v13, ""

    const-string v14, " "

    invoke-virtual {v3}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v15

    invoke-virtual {v10, v11, v13, v14, v15}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v11, "SHA1 key:"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const/16 v11, 0x10

    const-string v13, ""

    const-string v14, " "

    invoke-virtual {v4}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v15

    invoke-virtual {v10, v11, v13, v14, v15}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    :cond_2
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 v7, 0x0

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->update([B)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    :goto_1
    move-object/from16 v0, p0

    array-length v10, v0

    if-ge v7, v10, :cond_5

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10, v1}, Ljavax/crypto/Mac;->update([B)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->update([B)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->update([B)V

    sget v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac_length:I

    add-int/2addr v10, v7

    move-object/from16 v0, p0

    array-length v11, v0

    if-ge v10, v11, :cond_4

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v7}, Ljavax/crypto/Mac;->doFinal([BI)V

    sget v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac_length:I

    add-int/2addr v7, v10

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    array-length v10, v0

    shr-int/lit8 v5, v10, 0x1

    move-object/from16 v0, p1

    array-length v10, v0

    and-int/lit8 v6, v10, 0x1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v10, 0x0

    add-int v11, v5, v6

    const-string v13, "HmacMD5"

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v10, v11, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    add-int v10, v5, v6

    const-string v11, "HmacSHA1"

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v5, v10, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    array-length v13, v0

    sub-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-static {v10, v11, v0, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v10, :cond_6

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v11, "P_MD5:"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    sget v11, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac_length:I

    const-string v13, ""

    const-string v14, " "

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v13, v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V

    :cond_6
    const/4 v7, 0x0

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->update([B)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    :goto_2
    move-object/from16 v0, p0

    array-length v10, v0

    if-ge v7, v10, :cond_a

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10, v1}, Ljavax/crypto/Mac;->update([B)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->update([B)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v9

    const/4 v2, 0x0

    move v8, v7

    :goto_3
    sget v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac_length:I

    if-ge v2, v10, :cond_7

    const/4 v10, 0x1

    move v11, v10

    :goto_4
    move-object/from16 v0, p0

    array-length v10, v0

    if-ge v8, v10, :cond_8

    const/4 v10, 0x1

    :goto_5
    and-int/2addr v10, v11

    if-eqz v10, :cond_9

    add-int/lit8 v7, v8, 0x1

    aget-byte v10, p0, v8

    aget-byte v11, v9, v2

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p0, v8

    add-int/lit8 v2, v2, 0x1

    move v8, v7

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    move v11, v10

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    goto :goto_5

    :cond_9
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v10, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    move v7, v8

    goto :goto_2

    :cond_a
    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v10, :cond_b

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v11, "PRF:"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    sget-object v10, Lorg/apache/harmony/xnet/provider/jsse/PRF;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    sget v11, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac_length:I

    const-string v13, ""

    const-string v14, " "

    move-object/from16 v0, p0

    invoke-virtual {v10, v11, v13, v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    monitor-exit v12

    return-void

    :catchall_0
    move-exception v10

    monitor-exit v12

    throw v10
.end method

.method static declared-synchronized computePRF_SSLv3([B[B[B)V
    .locals 8

    const-class v6, Lorg/apache/harmony/xnet/provider/jsse/PRF;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    if-nez v5, :cond_0

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->init()V

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_2

    new-array v4, v2, [B

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v5, v2, 0x40

    int-to-byte v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v5, p1}, Ljava/security/MessageDigest;->update([B)V

    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v5, p2}, Ljava/security/MessageDigest;->update([B)V

    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v5, p1}, Ljava/security/MessageDigest;->update([B)V

    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5:Ljava/security/MessageDigest;

    sget-object v7, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    add-int/lit8 v5, v3, 0x10

    array-length v7, p0

    if-le v5, v7, :cond_1

    const/4 v5, 0x0

    array-length v7, p0

    sub-int/2addr v7, v3

    invoke-static {v0, v5, p0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p0

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/16 v7, 0x10

    invoke-static {v0, v5, p0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x10

    goto :goto_1

    :cond_2
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static init()V
    .locals 5

    const/16 v4, 0x50

    :try_start_0
    const-string v1, "HmacMD5"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    sput v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5_mac_length:I

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    sput v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha_mac_length:I

    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->md5:Ljava/security/MessageDigest;

    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/PRF;->sha:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "There is no provider of HmacSHA1 or HmacMD5 algorithms installed in the system"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Could not initialize the Digest Algorithms."

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1
.end method
