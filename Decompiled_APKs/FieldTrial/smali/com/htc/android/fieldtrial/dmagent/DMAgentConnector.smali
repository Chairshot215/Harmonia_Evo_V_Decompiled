.class public Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;
.super Ljava/lang/Object;
.source "DMAgentConnector.java"


# static fields
.field public static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DMAgentConnector"

.field private static PrivateKey:Ljava/lang/String;

.field private static bEncrypt:Z

.field private static bPrivateKey:Z

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

.field private cmdTY1:Ljava/lang/String;

.field private cmdTY2:Ljava/lang/String;

.field private cmdTY3:Ljava/lang/String;

.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;

.field requestSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->mBuildType:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->mBuildType:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

    .line 32
    const-string v0, "ro.omadm.encryptenable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->bEncrypt:Z

    .line 34
    sput-boolean v1, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->bPrivateKey:Z

    return-void

    :cond_1
    move v0, v2

    .line 26
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x2606

    iput v0, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->PORT:I

    .line 18
    const/16 v0, 0x400

    iput v0, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->BufferLength:I

    .line 19
    const-string v0, ":IDOMADM"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdID:Ljava/lang/String;

    .line 20
    const-string v0, ":PWDM"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    .line 21
    const-string v0, ":EXIT"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdEXIT:Ljava/lang/String;

    .line 22
    const-string v0, ":TY1"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    .line 23
    const-string v0, ":TY2"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdTY2:Ljava/lang/String;

    .line 24
    const-string v0, ":TY3"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->Result:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 33
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->PublicEncryptKey:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "Key"
    .parameter "EncryptText"

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 240
    .local v1, decrypted:[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 241
    .local v3, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 242
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 243
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->HexToStr(Ljava/lang/String;Z)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 247
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

    .line 244
    :catch_0
    move-exception v2

    .line 245
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

    .line 218
    const/4 v4, 0x0

    .line 219
    .local v4, encrypted:[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 220
    .local v1, Length:I
    rem-int/lit8 v6, v1, 0x10

    if-lez v6, :cond_0

    .line 221
    div-int/lit8 v6, v1, 0x10

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v1, v6, 0x10

    .line 222
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

    .line 223
    new-array v0, v1, [B

    .line 224
    .local v0, Buffer:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 228
    .local v5, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 229
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 230
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 234
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {v4}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->StrToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 231
    :catch_0
    move-exception v3

    .line 232
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static HexToStr(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 252
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

    .line 253
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 254
    .local v2, hex2char:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 256
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 257
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 258
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 259
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 252
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_0
    const-string v5, "abcdef"

    goto :goto_0

    .line 261
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

    .line 265
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 266
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 267
    aget-byte v3, p0, v0

    if-ltz v3, :cond_1

    aget-byte v3, p0, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 273
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private readRsponse()V
    .locals 8

    .prologue
    const/16 v7, 0x400

    .line 277
    new-array v2, v7, [B

    .line 278
    .local v2, respond:[B
    const/4 v1, 0x0

    .line 280
    .local v1, length:I
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 281
    sget-boolean v4, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

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

    .line 286
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, result:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->Result:Ljava/lang/String;

    .line 289
    if-ge v1, v7, :cond_2

    .line 290
    sget-boolean v4, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

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

    .line 297
    :cond_1
    :goto_1
    return-void

    .line 282
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 283
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

    .line 284
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 293
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #result:Ljava/lang/String;
    :cond_2
    sget-boolean v4, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "DMAgentConnector"

    const-string v5, "length<BufferLength"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->readRsponse()V

    goto :goto_1
.end method


# virtual methods
.method public GetPrivateKey()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v4, 0x200

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    new-array v1, v4, [B

    .line 139
    .local v1, cmdsend:[B
    new-array v0, v4, [B

    .line 141
    .local v0, cmdresp:[B
    sget-boolean v4, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->bPrivateKey:Z

    if-eqz v4, :cond_0

    .line 142
    sget-object v4, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    .line 160
    :goto_0
    return-object v4

    .line 144
    :cond_0
    const/16 v4, 0x77

    aput-byte v4, v1, v5

    .line 145
    aput-byte v5, v1, v6

    .line 148
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 149
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 150
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->PublicEncryptKey:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    .line 159
    sput-boolean v6, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->bPrivateKey:Z

    .line 160
    sget-object v4, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    goto :goto_0

    .line 151
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 152
    .local v2, ioException:Ljava/io/IOException;
    const-string v4, "DMAgentConnector"

    const-string v5, "IOException."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->closeConnection()Z

    goto :goto_1
.end method

.method public closeConnection()Z
    .locals 6

    .prologue
    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 167
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 168
    sget-boolean v3, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->bEncrypt:Z

    if-eqz v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdEXIT:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, My_hex:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "DMAgentConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmdEXIT["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v0           #My_hex:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 178
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 179
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 180
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 181
    const-string v3, "DMAgentConnector"

    const-string v4, "closeConnection success"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v3, 0x1

    .line 187
    :goto_1
    return v3

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdEXIT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 173
    const/16 v3, 0x200

    new-array v2, v3, [B

    .line 174
    .local v2, respond:[B
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 175
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v2           #respond:[B
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DMAgentConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeConnection fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public openConnection()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    sget-boolean v5, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DM Agent encrypt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->bEncrypt:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 45
    .local v0, count:I
    :goto_0
    const/4 v5, 0x3

    if-le v0, v5, :cond_5

    .line 64
    :cond_1
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 65
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 66
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 67
    const/16 v5, 0x200

    new-array v2, v5, [B

    .line 68
    .local v2, respond:[B
    sget-boolean v5, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->bEncrypt:Z

    if-eqz v5, :cond_b

    .line 70
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdID:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 71
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_a

    .line 73
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 74
    sget-boolean v5, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmdPWD["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_2
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_9

    .line 77
    sget-boolean v5, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "DMAgentConnector"

    const-string v6, "connection success"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_3
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 80
    sget-boolean v5, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Res cmdTY3["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_4
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    .line 82
    const-string v5, "DMAgentConnector"

    const-string v6, "connection TY3 success"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 132
    .end local v2           #respond:[B
    :goto_2
    return v3

    .line 48
    :cond_5
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-eqz v5, :cond_6

    .line 49
    sget-boolean v5, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "DMAgentConnector"

    const-string v6, "open more than once"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 129
    :catch_0
    move-exception v1

    .line 130
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

    .line 131
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 53
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_1
    new-instance v5, Ljava/net/Socket;

    const-string v6, "localhost"

    const/16 v7, 0x2606

    invoke-direct {v5, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 54
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v5, :cond_7

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    const-string v5, "DMAgentConnector"

    const-string v6, "connection:new:fail"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 59
    :cond_7
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 60
    const-string v5, "DMAgentConnector"

    const-string v6, "connection:new:successful"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 85
    .restart local v2       #respond:[B
    :cond_8
    const-string v4, "DMAgentConnector"

    const-string v5, "connection fail:cmdTY3fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 88
    :cond_9
    const-string v4, "DMAgentConnector"

    const-string v5, "connection fail:cmdPWD fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 92
    :cond_a
    const-string v4, "DMAgentConnector"

    const-string v5, "connection fail:cmdID fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 96
    :cond_b
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 97
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 98
    invoke-static {v2}, Lcom/htc/android/fieldtrial/Utility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 100
    sget-boolean v5, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_c

    const-string v5, "DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmdID["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_c
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_12

    .line 102
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 103
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 104
    invoke-static {v2}, Lcom/htc/android/fieldtrial/Utility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 105
    sget-boolean v5, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_d

    const-string v5, "DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmdPWD["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_d
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_11

    .line 108
    sget-boolean v5, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_e

    const-string v5, "DMAgentConnector"

    const-string v6, "connection success"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_e
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 110
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 111
    invoke-static {v2}, Lcom/htc/android/fieldtrial/Utility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 113
    sget-boolean v5, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DBG:Z

    if-eqz v5, :cond_f

    const-string v5, "DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Res cmdTY3["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_f
    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_10

    .line 115
    const-string v5, "DMAgentConnector"

    const-string v6, "connection TY3 success"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move v3, v4

    .line 117
    goto/16 :goto_2

    .line 120
    :cond_11
    const-string v4, "DMAgentConnector"

    const-string v5, "connection fail:cmdPWD fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 124
    :cond_12
    const-string v4, "DMAgentConnector"

    const-string v5, "connection fail:cmdID fail"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public sendCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "request"

    .prologue
    .line 192
    sget-boolean v4, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->bPrivateKey:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->bEncrypt:Z

    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->GetPrivateKey()Ljava/lang/String;

    .line 197
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 198
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 199
    sget-boolean v4, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->bEncrypt:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 200
    :cond_1
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 202
    const/16 v4, 0x400

    new-array v2, v4, [B

    .line 203
    .local v2, respond:[B
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 204
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->Result:Ljava/lang/String;

    .line 205
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->readRsponse()V

    .line 206
    sget-boolean v4, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->bEncrypt:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, result:Ljava/lang/String;
    :goto_0
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 208
    .local v1, idx:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 209
    const/4 v4, 0x0

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 214
    .end local v1           #idx:I
    .end local v2           #respond:[B
    .end local v3           #result:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v3

    .line 206
    .restart local v2       #respond:[B
    :cond_3
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->Result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v2           #respond:[B
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCommand fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    const/4 v3, 0x0

    goto :goto_1
.end method
