.class public Lcom/sprint/dsa/UtilEncryption;
.super Ljava/lang/Object;
.source "UtilEncryption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "a2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, cipher:Ljavax/crypto/Cipher;
    const-string v5, ""

    .line 76
    .local v5, recovered:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 77
    const-string v9, ""

    .line 98
    :goto_0
    return-object v9

    .line 79
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    new-array v1, v9, [B

    .line 80
    .local v1, encryptionBytes:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    if-lt v4, v9, :cond_1

    .line 87
    const-string v9, "decrypt"

    invoke-static {v9}, Lcom/sprint/dsa/UtilEncryption;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 89
    .local v7, recoveredBytes:[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #recovered:Ljava/lang/String;
    .local v6, recovered:Ljava/lang/String;
    move-object v5, v6

    .line 96
    .end local v1           #encryptionBytes:[B
    .end local v4           #i:I
    .end local v6           #recovered:Ljava/lang/String;
    .end local v7           #recoveredBytes:[B
    .restart local v5       #recovered:Ljava/lang/String;
    :goto_2
    invoke-static {v5}, Lcom/sprint/dsa/UtilEncryption;->isValidChar(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 97
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 81
    .restart local v1       #encryptionBytes:[B
    .restart local v4       #i:I
    :cond_1
    mul-int/lit8 v9, v4, 0x2

    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x1

    :try_start_1
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v3

    .line 82
    .local v3, firstNibble:B
    mul-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v8

    .line 83
    .local v8, secondNibble:B
    shl-int/lit8 v9, v3, 0x4

    or-int v2, v8, v9

    .line 84
    .local v2, finalByte:I
    int-to-byte v9, v2

    aput-byte v9, v1, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 98
    .end local v1           #encryptionBytes:[B
    .end local v2           #finalByte:I
    .end local v3           #firstNibble:B
    .end local v4           #i:I
    .end local v8           #secondNibble:B
    :cond_2
    const-string v9, ""

    goto :goto_0

    .line 92
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "plaintxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    .line 106
    const-string v2, ""

    .line 108
    .local v2, encryptedStr:Ljava/lang/String;
    const-string v3, "encrypt"

    invoke-static {v3}, Lcom/sprint/dsa/UtilEncryption;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 109
    .local v0, cipher:Ljavax/crypto/Cipher;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 110
    .local v1, encrypted:[B
    new-instance v2, Ljava/lang/String;

    .end local v2           #encryptedStr:Ljava/lang/String;
    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 111
    .restart local v2       #encryptedStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/sprint/dsa/UtilEncryption;->getHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 113
    return-object v2

    .line 103
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #encrypted:[B
    .end local v2           #encryptedStr:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 6
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    const/16 v5, 0x18

    new-array v1, v5, [B

    fill-array-data v1, :array_0

    .line 21
    .local v1, encryptKey:[B
    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 22
    .local v3, spec:Ljavax/crypto/spec/DESedeKeySpec;
    const/4 v2, 0x0

    .line 24
    .local v2, keyFactory:Ljavax/crypto/SecretKeyFactory;
    const-string v5, "DESede"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 26
    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 27
    .local v4, theKey:Ljavax/crypto/SecretKey;
    const-string v5, "DESede/ECB/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 29
    .local v0, decryptcipher:Ljavax/crypto/Cipher;
    const-string v5, "decrypt"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 35
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0

    .line 14
    nop

    :array_0
    .array-data 0x1
        0xat
        0x26t
        0xd0t
        0x4at
        0x6et
        0xeet
        0x8at
        0x6at
        0xc2t
        0xe0t
        0x62t
        0xet
        0x32t
        0xa2t
        0x94t
        0x68t
        0x22t
        0x88t
        0x98t
        0x74t
        0xaat
        0x1et
        0x2et
        0x46t
    .end array-data
.end method

.method public static getHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    const-string v1, ""

    .line 119
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 123
    return-object v1

    .line 120
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isValidChar(Ljava/lang/String;)Z
    .locals 5
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    if-eqz v4, :cond_0

    aget-char v0, v3, v2

    .line 40
    .local v0, ch:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 67
    .end local v0           #ch:C
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 42
    .restart local v0       #ch:C
    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 44
    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_0

    .line 46
    :cond_3
    sparse-switch v0, :sswitch_data_0

    move v1, v2

    .line 65
    goto :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method
