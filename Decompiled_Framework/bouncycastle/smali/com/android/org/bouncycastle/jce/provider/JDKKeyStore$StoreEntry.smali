.class Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
.super Ljava/lang/Object;
.source "JDKKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreEntry"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field certChain:[Ljava/security/cert/Certificate;

.field date:Ljava/util/Date;

.field obj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

.field type:I


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    const/16 v0, 0x14

    new-array v4, v0, [B

    iget-object v0, p1, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/security/SecureRandom;->setSeed(J)V

    iget-object v0, p1, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p1, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v5, v0, 0x400

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v0, v4

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v9, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v1, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v8

    new-instance v7, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v7, v9, v8}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #calls: Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    invoke-static {p1, p3, v9}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->access$000(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    iput p4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    iput-object p5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V
    .locals 1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    iput p4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    iput-object p5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    return-object v0
.end method

.method getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    return-object v0
.end method

.method getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method getObject([C)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/security/Key;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    :goto_0
    return-object v17

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v5, v1, [B

    invoke-virtual {v13, v5}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    const-string v2, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v12

    new-instance v10, Ljavax/crypto/CipherInputStream;

    invoke-direct {v10, v13, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #calls: Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->access$100(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    goto :goto_0

    :catch_0
    move-exception v19

    :try_start_2
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v14, Ljava/io/DataInputStream;

    invoke-direct {v14, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v5, v1, [B

    invoke-virtual {v14, v5}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    const-string v2, "BrokenPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v12

    new-instance v10, Ljavax/crypto/CipherInputStream;

    invoke-direct {v10, v14, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/16 v17, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #calls: Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->access$100(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v17

    move-object v13, v14

    move-object v7, v8

    :goto_1
    if-eqz v17, :cond_2

    :try_start_6
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v1, v5

    invoke-virtual {v15, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v15, v5}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v15, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    const-string v2, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x1

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v18

    new-instance v11, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v11, v15, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    move-object/from16 v0, v17

    #calls: Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    invoke-static {v1, v0, v15}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->access$000(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v16

    :goto_2
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "no match"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v20

    :try_start_7
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :try_start_9
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v5, v1, [B

    invoke-virtual {v13, v5}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    const-string v2, "OldPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v12

    new-instance v10, Ljavax/crypto/CipherInputStream;

    invoke-direct {v10, v13, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #calls: Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;->access$100(Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v17

    goto/16 :goto_1

    :cond_2
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "no match"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "forget something!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception v16

    move-object v7, v8

    goto :goto_2

    :catch_4
    move-exception v16

    move-object v13, v14

    move-object v7, v8

    goto :goto_2

    :catch_5
    move-exception v16

    move-object v13, v14

    goto :goto_2
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    return v0
.end method
