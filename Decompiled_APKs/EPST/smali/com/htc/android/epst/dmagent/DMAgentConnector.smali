.class public Lcom/htc/android/epst/dmagent/DMAgentConnector;
.super Ljava/lang/Object;
.source "DMAgentConnector.java"


# static fields
.field public static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DMAgentConnector"

.field private static PrivateKey:Ljava/lang/String;

.field private static bEncrypt:Z

.field private static bPrivateKey:Z

.field public static cmdTY1:Ljava/lang/String;

.field public static cmdTY2:Ljava/lang/String;

.field public static cmdTY3:Ljava/lang/String;

.field private static final mBuildType:Ljava/lang/String;


# instance fields
.field private final BufferLength:I

.field private My_hex:Ljava/lang/String;

.field private final PORT:I

.field private PublicEncryptKey:Ljava/lang/String;

.field private Result:Ljava/lang/String;

.field private cmdEXIT:Ljava/lang/String;

.field private cmdID:Ljava/lang/String;

.field private cmdPWD:Ljava/lang/String;

.field private cmdType:Ljava/lang/String;

.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;

.field requestSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    const-string v0, ":TY1"

    sput-object v0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    .line 25
    const-string v0, ":TY2"

    sput-object v0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdTY2:Ljava/lang/String;

    .line 26
    const-string v0, ":TY3"

    sput-object v0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    .line 27
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->mBuildType:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->mBuildType:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->DBG:Z

    .line 35
    const-string v0, "ro.omadm.encryptenable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Lcom/htc/android/epst/dmagent/DMAgentConnector;->bEncrypt:Z

    .line 37
    sput-boolean v1, Lcom/htc/android/epst/dmagent/DMAgentConnector;->bPrivateKey:Z

    return-void

    :cond_1
    move v0, v2

    .line 28
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x2606

    iput v0, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->PORT:I

    .line 20
    const/16 v0, 0x400

    iput v0, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->BufferLength:I

    .line 21
    const-string v0, ":IDOMADM"

    iput-object v0, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdID:Ljava/lang/String;

    .line 22
    const-string v0, ":PWDM"

    iput-object v0, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    .line 23
    const-string v0, ":EXIT"

    iput-object v0, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdEXIT:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->Result:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 36
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->PublicEncryptKey:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "Key"
    .parameter "EncryptText"

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 290
    .local v1, decrypted:[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 291
    .local v3, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 292
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 293
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->HexToStr(Ljava/lang/String;Z)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 297
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 294
    :catch_0
    move-exception v2

    .line 295
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "Key"
    .parameter "PlainText"

    .prologue
    const/4 v9, 0x0

    .line 268
    const/4 v4, 0x0

    .line 269
    .local v4, encrypted:[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 270
    .local v1, Length:I
    rem-int/lit8 v6, v1, 0x10

    if-lez v6, :cond_0

    .line 271
    div-int/lit8 v6, v1, 0x10

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v1, v6, 0x10

    .line 272
    :cond_0
    const-string v6, "DMAgentConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-array v0, v1, [B

    .line 274
    .local v0, Buffer:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 278
    .local v5, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 279
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 280
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 284
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {v4}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->StrToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 281
    :catch_0
    move-exception v3

    .line 282
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static HexToStr(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0123456789"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_0

    const-string v5, "ABCDEF"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 304
    .local v2, hex2char:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 306
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 307
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 308
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 309
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 302
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_0
    const-string v5, "abcdef"

    goto :goto_0

    .line 311
    .restart local v0       #bytes:[B
    .restart local v1       #digital:Ljava/lang/String;
    .restart local v2       #hex2char:[C
    .restart local v3       #i:I
    :cond_1
    return-object v0
.end method

.method public static StrToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 315
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 317
    aget-byte v3, p0, v0

    if-ltz v3, :cond_1

    aget-byte v3, p0, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private readRsponse()V
    .locals 8

    .prologue
    const/16 v7, 0x400

    .line 327
    new-array v2, v7, [B

    .line 328
    .local v2, respond:[B
    const/4 v1, 0x0

    .line 330
    .local v1, length:I
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 331
    sget-boolean v4, Lcom/htc/android/epst/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readRsponse length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, result:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->Result:Ljava/lang/String;

    .line 339
    if-ge v1, v7, :cond_2

    .line 341
    sget-boolean v4, Lcom/htc/android/epst/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    :goto_1
    return-void

    .line 332
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadSponse fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #result:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->readRsponse()V

    goto :goto_1
.end method


# virtual methods
.method public GetCmdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    return-object v0
.end method

.method public GetPrivateKey()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v4, 0x200

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    new-array v1, v4, [B

    .line 156
    .local v1, cmdsend:[B
    new-array v0, v4, [B

    .line 158
    .local v0, cmdresp:[B
    sget-boolean v4, Lcom/htc/android/epst/dmagent/DMAgentConnector;->bPrivateKey:Z

    if-eqz v4, :cond_0

    .line 159
    sget-object v4, Lcom/htc/android/epst/dmagent/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    .line 177
    :goto_0
    return-object v4

    .line 161
    :cond_0
    const/16 v4, 0x77

    aput-byte v4, v1, v5

    .line 162
    aput-byte v5, v1, v6

    .line 165
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 166
    iget-object v4, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 167
    iget-object v4, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->PublicEncryptKey:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/android/epst/dmagent/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    .line 176
    sput-boolean v6, Lcom/htc/android/epst/dmagent/DMAgentConnector;->bPrivateKey:Z

    .line 177
    sget-object v4, Lcom/htc/android/epst/dmagent/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    goto :goto_0

    .line 168
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 169
    .local v2, ioException:Ljava/io/IOException;
    const-string v4, "DMAgentConnector"

    const-string v5, "IOException."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->closeConnection()Z

    goto :goto_1
.end method

.method public changecmdType(Ljava/lang/String;)Z
    .locals 7
    .parameter "icmdType"

    .prologue
    const/4 v3, 0x0

    .line 233
    sget-object v4, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdTY2:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 234
    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "icmdType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not correct."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    return v3

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    .line 239
    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changecmdType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 243
    iget-object v4, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 245
    const/16 v4, 0x200

    new-array v2, v4, [B

    .line 246
    .local v2, respond:[B
    iget-object v4, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 247
    iget-object v4, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    .line 249
    invoke-static {v2}, Lcom/htc/android/epst/Utility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, hex:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/epst/Utility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 252
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 253
    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changecmdType connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " success"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 255
    :cond_1
    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changecmdType connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 258
    .end local v1           #hex:Ljava/lang/String;
    .end local v2           #respond:[B
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changecmdType fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public closeConnection()Z
    .locals 5

    .prologue
    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 184
    iget-object v2, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 185
    iget-object v2, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdEXIT:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 187
    const/16 v2, 0x200

    new-array v1, v2, [B

    .line 188
    .local v1, respond:[B
    iget-object v2, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 189
    iget-object v2, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 191
    iget-object v2, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 192
    iget-object v2, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 193
    iget-object v2, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 194
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 195
    const-string v2, "DMAgentConnector"

    const-string v3, "closeConnection success"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    const/4 v2, 0x1

    .line 201
    .end local v1           #respond:[B
    :goto_0
    return v2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DMAgentConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeConnection fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openConnection(Ljava/lang/String;)Z
    .locals 8
    .parameter "icmdType"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    sget-boolean v5, Lcom/htc/android/epst/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DM Agent encrypt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/htc/android/epst/dmagent/DMAgentConnector;->bEncrypt:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    sget-object v5, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdTY2:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 50
    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "icmdType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not correct."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return v3

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    .line 55
    const-string v5, "DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmdType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, count:I
    :goto_1
    const/4 v5, 0x3

    if-le v0, v5, :cond_6

    .line 78
    :cond_2
    :goto_2
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 80
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 81
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 82
    const/16 v5, 0x200

    new-array v2, v5, [B

    .line 83
    .local v2, respond:[B
    sget-boolean v5, Lcom/htc/android/epst/dmagent/DMAgentConnector;->bEncrypt:Z

    if-eqz v5, :cond_b

    .line 85
    invoke-virtual {p0}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->GetPrivateKey()Ljava/lang/String;

    .line 86
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdID:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 87
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_a

    .line 89
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 90
    sget-boolean v5, Lcom/htc/android/epst/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmdPWD["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_3
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_9

    .line 93
    sget-boolean v5, Lcom/htc/android/epst/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "DMAgentConnector"

    const-string v6, "connection success"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_4
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 96
    sget-boolean v5, Lcom/htc/android/epst/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Res cmdTY3["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_5
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    .line 98
    const-string v5, "DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " success"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 99
    goto/16 :goto_0

    .line 63
    .end local v2           #respond:[B
    :cond_6
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v5, :cond_2

    .line 67
    new-instance v5, Ljava/net/Socket;

    const-string v6, "localhost"

    const/16 v7, 0x2606

    invoke-direct {v5, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 68
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v5, :cond_7

    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    const-string v5, "DMAgentConnector"

    const-string v6, "connection:new:fail"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connection fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 73
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    const/16 v6, 0x7530

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 74
    const-string v5, "DMAgentConnector"

    const-string v6, "connection:new:successful"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 101
    .restart local v2       #respond:[B
    :cond_8
    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connection fail:cmdType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 104
    :cond_9
    const-string v4, "DMAgentConnector"

    const-string v5, "connection fail:cmdPWD fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 108
    :cond_a
    const-string v4, "DMAgentConnector"

    const-string v5, "connection fail:cmdID fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 112
    :cond_b
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 113
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 114
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 115
    invoke-static {v2}, Lcom/htc/android/epst/Utility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 118
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_f

    .line 119
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 120
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 121
    invoke-static {v2}, Lcom/htc/android/epst/Utility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 124
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_e

    .line 125
    sget-boolean v5, Lcom/htc/android/epst/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_c

    const-string v5, "DMAgentConnector"

    const-string v6, "connection success"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_c
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 127
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 128
    invoke-static {v2}, Lcom/htc/android/epst/Utility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 131
    iget-object v5, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_d

    .line 132
    const-string v5, "DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " success"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 133
    goto/16 :goto_0

    .line 135
    :cond_d
    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connection fail:cmdType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 138
    :cond_e
    const-string v4, "DMAgentConnector"

    const-string v5, "connection fail:cmdPWD fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 142
    :cond_f
    const-string v4, "DMAgentConnector"

    const-string v5, "connection fail:cmdID fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public sendCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "request"

    .prologue
    .line 206
    sget-boolean v3, Lcom/htc/android/epst/dmagent/DMAgentConnector;->bPrivateKey:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/htc/android/epst/dmagent/DMAgentConnector;->bEncrypt:Z

    if-eqz v3, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->GetPrivateKey()Ljava/lang/String;

    .line 211
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 212
    iget-object v3, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 213
    sget-boolean v3, Lcom/htc/android/epst/dmagent/DMAgentConnector;->bEncrypt:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/htc/android/epst/dmagent/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    :cond_1
    iget-object v3, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 216
    iget-object v3, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 217
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->Result:Ljava/lang/String;

    .line 218
    invoke-direct {p0}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->readRsponse()V

    .line 219
    sget-boolean v3, Lcom/htc/android/epst/dmagent/DMAgentConnector;->bEncrypt:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/htc/android/epst/dmagent/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/epst/dmagent/DMAgentConnector;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, result:Ljava/lang/String;
    :goto_0
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 221
    .local v1, idx:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 222
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 227
    .end local v1           #idx:I
    .end local v2           #result:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v2

    .line 219
    :cond_3
    iget-object v2, p0, Lcom/htc/android/epst/dmagent/DMAgentConnector;->Result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMAgentConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCommand fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    const/4 v2, 0x0

    goto :goto_1
.end method
