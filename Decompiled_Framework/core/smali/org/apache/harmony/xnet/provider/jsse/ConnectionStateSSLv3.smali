.class public Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;
.super Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;
.source "ConnectionStateSSLv3.java"


# instance fields
.field private final mac_material_part:[B

.field private final mac_read_secret:[B

.field private final mac_write_secret:[B

.field private final messageDigest:Ljava/security/MessageDigest;

.field private final pad_1:[B

.field private final pad_2:[B


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V
    .locals 28

    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;-><init>()V

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    :try_start_0
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isExportable()Z

    move-result v14

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getMACLength()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    if-eqz v14, :cond_4

    iget v0, v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyMaterial:I

    move/from16 v17, v0

    :goto_0
    iget v15, v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->ivSize:I

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getBlockSize()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getBulkEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getHashName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "ConnectionStateSSLv3.create:"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  cipher suite name: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  encryption alg name: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  hash alg name: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  hash size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  block size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  IV size:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  key size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    mul-int/lit8 v25, v17, 0x2

    add-int v24, v24, v25

    mul-int/lit8 v25, v15, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v16, v0

    array-length v0, v8

    move/from16 v24, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, v19

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v24, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    array-length v0, v8

    move/from16 v26, v0

    move/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF_SSLv3([B[B[B)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v10, v0, [B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move/from16 v0, v17

    new-array v9, v0, [B

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    const/4 v13, 0x1

    :goto_1
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v17

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    add-int v24, v24, v17

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object/from16 v2, v22

    move/from16 v3, v25

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    const/16 v20, 0x0

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "ConnectionStateSSLv3: is_exportable"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_1
    const-string v24, "MD5"

    invoke-static/range {v24 .. v24}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v22

    iget v0, v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->expandedKeyMaterial:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v7, v0, v1, v15}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/security/MessageDigest;->update([B)V

    new-instance v20, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v15}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "is exportable: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "master_secret"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "client_random"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "server_random"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "client_mac_secret"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "server_mac_secret"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "client_key"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v9, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "server_key"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([BII)V

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "client_iv"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "server_iv"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    :cond_3
    :goto_3
    if-nez v5, :cond_8

    new-instance v24, Ljavax/crypto/NullCipher;

    invoke-direct/range {v24 .. v24}, Ljavax/crypto/NullCipher;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    new-instance v24, Ljavax/crypto/NullCipher;

    invoke-direct/range {v24 .. v24}, Ljavax/crypto/NullCipher;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    :goto_4
    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    :goto_5
    const-string v24, "MD5"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    sget-object v24, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad1:[B

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_1:[B

    sget-object v24, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad2:[B

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_2:[B

    :goto_6
    return-void

    :cond_4
    iget v0, v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->expandedKeyMaterial:I

    move/from16 v17, v0

    goto/16 :goto_0

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    move/from16 v24, v0

    if-eqz v24, :cond_2

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    mul-int/lit8 v25, v17, 0x2

    add-int v24, v24, v25

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-direct {v7, v0, v1, v15}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    new-instance v20, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    mul-int/lit8 v25, v17, 0x2

    add-int v24, v24, v25

    add-int v24, v24, v15

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v15}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "no IV."

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v24, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v25, 0x50

    new-instance v26, Ljavax/net/ssl/SSLProtocolException;

    const-string v27, "Error during computation of security parameters"

    invoke-direct/range {v26 .. v27}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v24 .. v26}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v24

    :cond_8
    :try_start_1
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    new-instance v26, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-direct {v0, v9, v1, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    new-instance v26, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v27

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    new-instance v26, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v27

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    new-instance v26, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-direct {v0, v9, v1, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    goto/16 :goto_5

    :cond_b
    sget-object v24, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad1:[B

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_1:[B

    sget-object v24, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad2:[B

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_2:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method


# virtual methods
.method protected decrypt(B[BII)[B
    .locals 10

    const/4 v9, 0x0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5, p2, p3, p4}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v1

    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    if-eqz v5, :cond_3

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-byte v4, v1, v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    sub-int/2addr v5, v2

    aget-byte v5, v1, v5

    if-eq v5, v4, :cond_0

    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v6, 0x15

    new-instance v7, Ljavax/net/ssl/SSLProtocolException;

    const-string v8, "Received message has bad padding"

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v5, v1

    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    new-array v0, v5, [B

    :goto_1
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    aput-byte p1, v5, v9

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    const/4 v6, 0x1

    const v7, 0xff00

    array-length v8, v0

    and-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    const/4 v6, 0x2

    array-length v7, v0

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_1:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->read_seq_num:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    array-length v6, v0

    invoke-virtual {v5, v1, v9, v6}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_2:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->update([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v6, "Decrypted:"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v5, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v6, "Expected mac value:"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v5, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    if-ge v2, v5, :cond_5

    aget-byte v5, v3, v2

    array-length v6, v0

    add-int/2addr v6, v2

    aget-byte v6, v1, v6

    if-eq v5, v6, :cond_4

    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v6, 0x14

    new-instance v7, Ljavax/net/ssl/SSLProtocolException;

    const-string v8, "Bad record MAC"

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v5

    :cond_3
    array-length v5, v1

    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    sub-int/2addr v5, v6

    new-array v0, v5, [B

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    array-length v5, v0

    invoke-static {v1, v9, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->read_seq_num:[B

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->incSequenceNumber([B)V

    return-object v0
.end method

.method protected encrypt(B[BII)[B
    .locals 10

    const/4 v3, 0x0

    :try_start_0
    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    add-int v0, p4, v6

    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    if-nez v6, :cond_2

    :goto_0
    add-int v6, v0, v3

    new-array v4, v6, [B

    const/4 v6, 0x0

    invoke-static {p2, p3, v4, v6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    const/4 v7, 0x0

    aput-byte p1, v6, v7

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    const/4 v7, 0x1

    const v8, 0xff00

    and-int/2addr v8, p4

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    const/4 v7, 0x2

    and-int/lit16 v8, p4, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_1:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->write_seq_num:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6, p2, p3, p4}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_2:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    invoke-static {v1, v6, v4, p4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    if-eqz v6, :cond_0

    add-int/lit8 v6, v0, -0x1

    array-length v7, v4

    int-to-byte v8, v3

    invoke-static {v4, v6, v7, v8}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_0
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSLRecordProtocol.encrypt: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GenericBlockCipher with padding["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "]:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v6, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    :cond_1
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v6

    new-array v5, v6, [B

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    const/4 v7, 0x0

    array-length v8, v4

    invoke-virtual {v6, v4, v7, v8, v5}, Ljavax/crypto/Cipher;->update([BII[B)I

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->write_seq_num:[B

    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->incSequenceNumber([B)V

    return-object v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->getPaddingSize(I)I

    move-result v3

    goto/16 :goto_0

    :cond_3
    const-string v6, "GenericStreamCipher:"
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v7, 0x50

    new-instance v8, Ljavax/net/ssl/SSLProtocolException;

    const-string v9, "Error during the encryption"

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v6
.end method

.method protected shutdown()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    invoke-super {p0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->shutdown()V

    return-void
.end method
