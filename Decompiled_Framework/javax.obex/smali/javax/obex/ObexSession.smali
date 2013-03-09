.class public Ljavax/obex/ObexSession;
.super Ljava/lang/Object;
.source "ObexSession.java"


# instance fields
.field protected mAuthenticator:Ljavax/obex/Authenticator;

.field protected mChallengeDigest:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAuthChall(Ljavax/obex/HeaderSet;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    if-nez v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    invoke-static {v13, v14}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v1

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    invoke-static {v13, v14}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v7

    const/4 v13, 0x2

    move-object/from16 v0, p1

    iget-object v14, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    invoke-static {v13, v14}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    array-length v13, v2

    add-int/lit8 v13, v13, -0x1

    new-array v10, v13, [B

    const/4 v13, 0x1

    const/4 v14, 0x0

    array-length v15, v10

    invoke-static {v2, v13, v10, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    sparse-switch v13, :sswitch_data_0

    new-instance v13, Ljava/io/IOException;

    const-string v14, "Unsupported Encoding Scheme"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    :sswitch_0
    :try_start_0
    new-instance v9, Ljava/lang/String;

    const-string v13, "ISO8859_1"

    invoke-direct {v9, v10, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz v7, :cond_3

    const/4 v13, 0x0

    aget-byte v13, v7, v13

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_2

    const/4 v6, 0x1

    :cond_2
    const/4 v13, 0x0

    aget-byte v13, v7, v13

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_3

    const/4 v5, 0x0

    :cond_3
    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput-object v13, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    invoke-interface {v13, v9, v6, v5}, Ljavax/obex/Authenticator;->onAuthenticationChallenge(Ljava/lang/String;ZZ)Ljavax/obex/PasswordAuthentication;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    if-nez v11, :cond_4

    const/4 v13, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v13, Ljava/io/IOException;

    const-string v14, "Unsupported Encoding Scheme"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    :sswitch_1
    const/4 v13, 0x0

    invoke-static {v10, v13}, Ljavax/obex/ObexHelper;->convertToUnicode([BZ)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :catch_1
    move-exception v4

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v11}, Ljavax/obex/PasswordAuthentication;->getPassword()[B

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v13, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v11}, Ljavax/obex/PasswordAuthentication;->getUserName()[B

    move-result-object v12

    if-eqz v12, :cond_6

    array-length v13, v12

    add-int/lit8 v13, v13, 0x26

    new-array v13, v13, [B

    move-object/from16 v0, p1

    iput-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v0, p1

    iget-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v14, 0x24

    const/4 v15, 0x1

    aput-byte v15, v13, v14

    move-object/from16 v0, p1

    iget-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v14, 0x25

    array-length v15, v12

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v15, 0x26

    array-length v0, v12

    move/from16 v16, v0

    invoke-static/range {v12 .. v16}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    array-length v13, v1

    array-length v14, v8

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    new-array v3, v13, [B

    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v1

    invoke-static {v1, v13, v3, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v1

    const/16 v14, 0x3a

    aput-byte v14, v3, v13

    const/4 v13, 0x0

    array-length v14, v1

    add-int/lit8 v14, v14, 0x1

    array-length v15, v8

    invoke-static {v8, v13, v3, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    iget-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    move-object/from16 v0, p1

    iget-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v14, 0x1

    const/16 v15, 0x10

    aput-byte v15, v13, v14

    invoke-static {v3}, Ljavax/obex/ObexHelper;->computeMd5Hash([B)[B

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v16, 0x2

    const/16 v17, 0x10

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    iget-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v14, 0x12

    const/4 v15, 0x2

    aput-byte v15, v13, v14

    move-object/from16 v0, p1

    iget-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v14, 0x13

    const/16 v15, 0x10

    aput-byte v15, v13, v14

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/16 v15, 0x14

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-static {v1, v13, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_6
    const/16 v13, 0x24

    new-array v13, v13, [B

    move-object/from16 v0, p1

    iput-object v13, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public handleAuthResp([B)Z
    .locals 10

    const/4 v6, 0x1

    const/16 v9, 0x10

    const/4 v5, 0x0

    iget-object v7, p0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v7, p0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    invoke-static {v6, p1}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v8

    invoke-interface {v7, v8}, Ljavax/obex/Authenticator;->onAuthenticationResponse([B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v7, v1

    add-int/lit8 v7, v7, 0x10

    new-array v4, v7, [B

    iget-object v7, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    invoke-static {v7, v5, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v1

    invoke-static {v1, v5, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Ljavax/obex/ObexHelper;->computeMd5Hash([B)[B

    move-result-object v2

    invoke-static {v5, p1}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_2

    aget-byte v7, v2, v3

    aget-byte v8, v0, v3

    if-ne v7, v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_0
.end method
