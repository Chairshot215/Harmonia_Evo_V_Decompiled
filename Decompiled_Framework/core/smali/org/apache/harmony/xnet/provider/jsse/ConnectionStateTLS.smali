.class public Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;
.super Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;
.source "ConnectionStateTLS.java"


# static fields
.field private static CLIENT_WRITE_KEY_LABEL:[B

.field private static IV_BLOCK_LABEL:[B

.field private static KEY_EXPANSION_LABEL:[B

.field private static SERVER_WRITE_KEY_LABEL:[B


# instance fields
.field private final decMac:Ljavax/crypto/Mac;

.field private final encMac:Ljavax/crypto/Mac;

.field private final mac_material_header:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->KEY_EXPANSION_LABEL:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->CLIENT_WRITE_KEY_LABEL:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->SERVER_WRITE_KEY_LABEL:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->IV_BLOCK_LABEL:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x6bt
        0x65t
        0x79t
        0x20t
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x73t
        0x69t
        0x6ft
        0x6et
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
        0x20t
        0x77t
        0x72t
        0x69t
        0x74t
        0x65t
        0x20t
        0x6bt
        0x65t
        0x79t
    .end array-data

    :array_2
    .array-data 0x1
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x20t
        0x77t
        0x72t
        0x69t
        0x74t
        0x65t
        0x20t
        0x6bt
        0x65t
        0x79t
    .end array-data

    :array_3
    .array-data 0x1
        0x49t
        0x56t
        0x20t
        0x62t
        0x6ct
        0x6ft
        0x63t
        0x6bt
    .end array-data
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V
    .locals 30

    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;-><init>()V

    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    :try_start_0
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getMACLength()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isExportable()Z

    move-result v15

    if-eqz v15, :cond_3

    iget v0, v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyMaterial:I

    move/from16 v19, v0

    :goto_0
    iget v0, v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->ivSize:I

    move/from16 v17, v0

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getBlockSize()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getBulkEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getHmacName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "ConnectionStateTLS.create:"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  cipher suite name: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  encryption alg name: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  mac alg name: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  hash size: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  block size: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  IV size:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  key size: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    mul-int/lit8 v27, v19, 0x2

    add-int v26, v26, v27

    mul-int/lit8 v27, v17, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v18, v0

    array-length v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v21, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-object/from16 v2, v21

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v26, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v27, v0

    array-length v0, v8

    move/from16 v28, v0

    move/from16 v0, v26

    move-object/from16 v1, v21

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    move-object/from16 v26, v0

    sget-object v27, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->KEY_EXPANSION_LABEL:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF([B[B[B[B)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v10, v0, [B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v25, v0

    move/from16 v0, v19

    new-array v9, v0, [B

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    move/from16 v26, v0

    if-nez v26, :cond_4

    const/4 v14, 0x1

    :goto_1
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move-object/from16 v2, v25

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v19

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    add-int v26, v26, v19

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move-object/from16 v2, v24

    move/from16 v3, v27

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    const/16 v22, 0x0

    if-eqz v15, :cond_5

    const/16 v26, 0x0

    const/16 v27, 0x0

    array-length v0, v8

    move/from16 v28, v0

    move/from16 v0, v26

    move-object/from16 v1, v21

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v26, 0x0

    array-length v0, v8

    move/from16 v27, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-object/from16 v2, v21

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->expandedKeyMaterial:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v12, v0, [B

    iget v0, v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->expandedKeyMaterial:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v13, v0, [B

    sget-object v26, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->CLIENT_WRITE_KEY_LABEL:[B

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v12, v9, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF([B[B[B[B)V

    sget-object v26, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->SERVER_WRITE_KEY_LABEL:[B

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF([B[B[B[B)V

    move-object v9, v12

    move-object/from16 v24, v13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    move/from16 v26, v0

    if-eqz v26, :cond_1

    mul-int/lit8 v26, v17, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v16, v0

    const/16 v26, 0x0

    sget-object v27, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->IV_BLOCK_LABEL:[B

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF([B[B[B[B)V

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v17

    invoke-direct {v7, v0, v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    new-instance v22, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "is exportable: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "master_secret"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "client_random"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "server_random"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "client_mac_secret"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "server_mac_secret"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "client_key"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "server_key"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "no IV."

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_3
    if-nez v5, :cond_7

    new-instance v26, Ljavax/crypto/NullCipher;

    invoke-direct/range {v26 .. v26}, Ljavax/crypto/NullCipher;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    new-instance v26, Ljavax/crypto/NullCipher;

    invoke-direct/range {v26 .. v26}, Ljavax/crypto/NullCipher;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    :goto_4
    invoke-static/range {v20 .. v20}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    invoke-static/range {v20 .. v20}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    move-object/from16 v26, v0

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    move-object/from16 v26, v0

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    :goto_5
    return-void

    :cond_3
    iget v0, v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->expandedKeyMaterial:I

    move/from16 v19, v0

    goto/16 :goto_0

    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    move/from16 v26, v0

    if-eqz v26, :cond_1

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v26, v0

    add-int v26, v26, v19

    mul-int/lit8 v26, v26, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v17

    invoke-direct {v7, v0, v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    new-instance v22, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    move/from16 v26, v0

    add-int v26, v26, v19

    mul-int/lit8 v26, v26, 0x2

    add-int v26, v26, v17

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v26

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "client_iv"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    const-string v27, "server_iv"

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v26, v0

    invoke-virtual/range {v22 .. v22}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v26, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v27, 0x50

    new-instance v28, Ljavax/net/ssl/SSLProtocolException;

    const-string v29, "Error during computation of security parameters"

    invoke-direct/range {v28 .. v29}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v26 .. v28}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v26

    :cond_7
    :try_start_1
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    new-instance v28, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v28

    invoke-direct {v0, v9, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    new-instance v28, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    new-instance v28, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    new-instance v28, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v28

    invoke-direct {v0, v9, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    move-object/from16 v26, v0

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    move-object/from16 v26, v0

    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :array_0
    .array-data 0x1
        0x0t
        0x3t
        0x1t
        0x0t
        0x0t
    .end array-data
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
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    aput-byte p1, v5, v9

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    const/4 v6, 0x3

    const v7, 0xff00

    array-length v8, v0

    and-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    const/4 v6, 0x4

    array-length v7, v0

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->read_seq_num:[B

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->update([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->update([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    array-length v6, v0

    invoke-virtual {v5, v1, v9, v6}, Ljavax/crypto/Mac;->update([BII)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->decMac:Ljavax/crypto/Mac;

    invoke-virtual {v5}, Ljavax/crypto/Mac;->doFinal()[B

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

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    array-length v5, v0

    invoke-static {v1, v9, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->read_seq_num:[B

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->incSequenceNumber([B)V

    return-object v0
.end method

.method protected encrypt(B[BII)[B
    .locals 9

    const/4 v2, 0x0

    :try_start_0
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    add-int v0, p4, v5

    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    if-nez v5, :cond_2

    :goto_0
    add-int v5, v0, v2

    new-array v3, v5, [B

    const/4 v5, 0x0

    invoke-static {p2, p3, v3, v5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    const/4 v6, 0x0

    aput-byte p1, v5, v6

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    const/4 v6, 0x3

    const v7, 0xff00

    and-int/2addr v7, p4

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    const/4 v6, 0x4

    and-int/lit16 v7, p4, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->write_seq_num:[B

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->update([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->mac_material_header:[B

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->update([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    invoke-virtual {v5, p2, p3, p4}, Ljavax/crypto/Mac;->update([BII)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->encMac:Ljavax/crypto/Mac;

    invoke-virtual {v5, v3, p4}, Ljavax/crypto/Mac;->doFinal([BI)V

    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    if-eqz v5, :cond_0

    add-int/lit8 v5, v0, -0x1

    array-length v6, v3

    int-to-byte v7, v2

    invoke-static {v3, v5, v6, v7}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_0
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSLRecordProtocol.do_encryption: Generic"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->block_size:I

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockCipher with padding["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v5, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    :cond_1
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v5

    new-array v4, v5, [B

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    const/4 v6, 0x0

    array-length v7, v3

    invoke-virtual {v5, v3, v6, v7, v4}, Ljavax/crypto/Cipher;->update([BII[B)I

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->write_seq_num:[B

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->incSequenceNumber([B)V

    return-object v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;->getPaddingSize(I)I

    move-result v2

    goto/16 :goto_0

    :cond_3
    const-string v5, "StreamCipher:"
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v6, 0x50

    new-instance v7, Ljavax/net/ssl/SSLProtocolException;

    const-string v8, "Error during the encryption"

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v5
.end method
